<?php

namespace Webkul\Shop\Http\Controllers\API;

use Carbon\Carbon;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Event;
use Illuminate\Support\Str;
use Melipayamak;
use Symfony\Component\HttpFoundation\Response as ResponseAlias;
use Webkul\Customer\Models\Customer;
use Webkul\Shop\Http\Requests\Customer\SmsOtpRequest;
use Webkul\Shop\Models\OtpToken;
use Webkul\Shop\Services\GraphQlService;

class OtpAuthController extends APIController
{
    private $timer = 120;

    public function __construct(
        protected GraphQlService $graphQlService
    )
    {
    }

    public function me()
    {
        dd(auth()->user());
    }

    public function requestCode(SmsOtpRequest $request)
    {
        $phone = $request->input(['phone']);

        if (OtpToken::where('receiver', $phone)->first()?->updated_at != OtpToken::where('receiver', $phone)->first()?->created_at
            &&
            (OtpToken::where('receiver', $phone)->first()?->updated_at->diff(now())->i * 60) + OtpToken::where('receiver', $phone)->first()?->updated_at->diff(now())->s < $this->timer) {
            return $this->freeResponse('error', 'شما قبلا کد را دریافت کرده اید!', ResponseAlias::HTTP_FORBIDDEN);

        }

        $code = rand(10000, 99999);

        $text = 'کد ورود شما : '.$code;
        $smsResult = $this->sendSms($phone, $text);

        if (! $smsResult) {
            return $this->freeResponse('error', 'Error When Send SMS', ResponseAlias::HTTP_INTERNAL_SERVER_ERROR);
        }

        OtpToken::updateOrCreate(
            ['receiver' => $phone],
            [
                'token'     => $code,
                'sent_at'   => Carbon::now(),
                'expire_at' => Carbon::now()->addSeconds($this->timer),
            ]);

        return $this->freeResponse("success","otp sent successfully", ResponseAlias::HTTP_OK);
    }
    public function sendSms(mixed $phone, string $text)
    {

        try {

            $sms = Melipayamak::sms();
            $to = $phone;
            $from = '50004001068288';
            $response = $sms->send($to, $from, $text);
            $json = json_decode($response);
            return $json->StrRetStatus == "Ok";
        } catch (\Exception $e) {
            echo $e->getMessage();
        }

//        try {
//            $username = '09127068288';
//            $password = 'LMT84';
//            $smsSoap = Melipayamak::sms('soap');
//            $api = new MelipayamakApi($username, $password);
//            $sms = $api->sms();
//            $to = '09391681434';
//            $from = '50004000850804';
//            $response = $sms->send($to, $from, $text);
//            $json = json_decode($response);
//            echo $json->Value; //RecId or Error Number
//        } catch (\Exception $e) {
//            echo $e->getMessage();
//        }
    }

    public function verifyPhoneAndLogin(Request $request)
    {
        $request->validate([
            'phone' => 'required|digits:11|numeric',
            'code'  => 'required|digits:5|numeric',
        ]);
        $phone = $request->input('phone');
        $code = $request->input('code');

        //        if (! auth()->guard('customer')->user()->status) {
        //            auth()->guard('customer')->logout();
        //
        //            return response()->json([
        //                'message' => trans('shop::app.customers.login-form.not-activated'),
        //            ], Response::HTTP_FORBIDDEN);
        //        }
        $token = OtpToken::where('receiver', $phone)->where('token', $code)->first();
        if (is_null($token)) {
            return $this->freeResponse(false, 'کد اشتباه است', 401);
        }
        if (! Carbon::createFromFormat('H:i:s', $token->expire_at)->greaterThan(Carbon::now())) {
            return $this->freeResponse(false, 'تایم تمام شده', 401);
        }

        $email = "newCustomer".rand(100000,999999)."@example.com";
        $password = "123456789";

        $user = Customer::where('phone', $request->input('phone'))->firstOr(function () use ($password, $email, $request) {

            return Customer::create([
                'first_name'  => 'کاربر',
                'last_name'   => 'جدید',
                'phone'       => $request->input('phone'),
                'email'       => $email,
                'token'       => md5(uniqid(rand(), true)),
                'password'                  => bcrypt($password),
                'api_token'                 => Str::random(80),
                'is_verified'               => ! core()->getConfigData('customer.settings.email.verification'),
                'channel_id'                => core()->getCurrentChannel()->id,
                'subscribed_to_news_letter' => (bool) request()->input('is_subscribed'),
            ]);
        });


        if(empty($user->email)){
            $user->email = $email;
            $user->save();
        }else{
            $email = $user->email;
        }

        $oldPass = $user->password;
        $user->password = $password;
        $user->save();

        auth()->guard('customer')->login($user);

        ///////////////////////
        ///

        if (! auth()->guard('customer')->user()->status) {
            auth()->guard('customer')->logout();

            return $this->freeResponse('error', trans('shop::app.customers.login-form.not-activated'), 403);
        }

        Event::dispatch('customer.after.login', auth()->guard()->user());

        $token = auth()->guard('customer')->user()->createToken('YourTokenName')->plainTextToken;

        $token = $this->graphQlService->loginCustomer($user->email, $password);

        /**
         * Event passed to prepare cart after login.
         */

        if (core()->getConfigData('customer.settings.login_options.redirected_to_page') == 'account') {
            return $this->dataResponse(
                [
                    'message' => 'success',
                    'token' => $token,
                    'redirect_route' => route('shop.customers.account.profile.index')
                ]);

        }
        return $this->dataResponse(
            [
                'message' => 'success',
                'token' => $token,
                'redirect_route' => route('shop.home.index')
            ]);


    }

    public function dataResponse($data): JsonResponse
    {
        return response()->json([
            'data' => $data,
        ]);
    }

    public function freeResponse($data, $message, $statusCode = 201): JsonResponse
    {
        return response()->json([
            'data'    => $data,
            'message' => $message,
        ], $statusCode);
    }
}
