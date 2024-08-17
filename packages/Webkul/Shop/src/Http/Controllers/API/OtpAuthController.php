<?php

namespace Webkul\Shop\Http\Controllers\API;

use Carbon\Carbon;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Str;
use Melipayamak;
use Melipayamak\MelipayamakApi;
use Symfony\Component\HttpFoundation\Response as ResponseAlias;
use Webkul\Customer\Models\Customer;
use Webkul\Shop\Http\Requests\Customer\SmsOtpRequest;
use Webkul\Shop\Models\OtpToken;

class OtpAuthController extends APIController
{
    private $timer = 120;

    public function me()
    {
        dd(auth()->user());
    }
    public function loginWithSmsOtp(SmsOtpRequest $request)
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

        return $this->freeResponse("success","success sent Otp code", ResponseAlias::HTTP_OK);
    }
    public function loginWithSmsOtptmp(SmsOtpRequest $request)
    {

        // درخواست GraphQL که می‌خواهید ارسال کنید
        $query = <<<GQL
mutation {
    userLogin(input : {
      email: "admin@example.com"
      password: "admin123"
    })
    {
      status
      success
      accessToken
      tokenType
      expiresIn
      user {
          id
          name
          email
          password
          apiToken
          roleId
          status
          createdAt
          updatedAt
      }
    }
}
GQL;

        // ارسال درخواست HTTP به GraphQL endpoint
        $response = Http::post('http://bagisto.test/graphql', [
            'query' => $query,
        ]);

        // تبدیل پاسخ به JSON
        $data = $response->json();

        // دسترسی به توکن و بازگشت پاسخ
        $accessToken = $data['data']['userLogin']['accessToken'] ?? null;

        if ($accessToken) {
            return response()->json([
                'status' => 'success',
                'token' => $accessToken,
            ]);
        } else {
            return response()->json([
                'status' => 'error',
                'message' => 'Login failed',
            ]);
        }
        dd('ssdsd');




        $credentials =['ali.yazdani324@gmail.com', '123456789'];

        if (! $token = auth()->attempt($credentials)) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        return $this->respondWithToken($token);

        $phone = $request->input(['phone']);

        if (OtpToken::where('receiver', $phone)->first()?->updated_at != OtpToken::where('receiver', $phone)->first()?->created_at
            &&
            (OtpToken::where('receiver', $phone)->first()?->updated_at->diff(now())->i * 60) + OtpToken::where('receiver', $phone)->first()?->updated_at->diff(now())->s < $this->timer) {
            return $this->freeResponse('error', 'شما قبلا کد را دریافت کرده اید!', 403);

        }

        $code = rand(10000, 99999);

        $text = 'کد ورود شما : '.$code;
        $smsResult = $this->sendSms($phone, $text);

        if (! $smsResult) {
            return $this->freeResponse('error', 'Error When Send SMS', 500);
        }

        OtpToken::updateOrCreate(
            ['receiver' => $phone],
            [
                'token'     => $code,
                'sent_at'   => Carbon::now(),
                'expire_at' => Carbon::now()->addSeconds($this->timer),
            ]);

        return \response()->json([
            'message' => 'success',
        ]);
    }

    public function sendSms(mixed $phone, string $text)
    {
        return true;
        try {
            $username = '09127068288';
            $password = 'LMT84';
            $smsSoap = Melipayamak::sms('soap');
            $api = new MelipayamakApi($username, $password);
            $sms = $api->sms();
            $to = '09391681434';
            $from = '50004000850804';
            $response = $sms->send($to, $from, $text);
            $json = json_decode($response);
            echo $json->Value; //RecId or Error Number
        } catch (\Exception $e) {
            echo $e->getMessage();
        }
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
            return $this->freeResponse(false, 'توکن وجود ندارد', 401);
        }
        if (! Carbon::createFromFormat('H:i:s', $token->expire_at)->greaterThan(Carbon::now())) {
            return $this->freeResponse(false, 'تایم تمام شده', 401);
        }

        $user = Customer::where('phone', $request->input('phone'))->firstOr(function () use ($request) {

            return Customer::create([
                'first_name'  => 'کاربر',
                'last_name'   => 'جدید',
                'phone'       => $request->input('phone'),
                'token'       => md5(uniqid(rand(), true)),
                'password'                  => bcrypt('123456789'),
                'api_token'                 => Str::random(80),
                'is_verified'               => ! core()->getConfigData('customer.settings.email.verification'),
                'channel_id'                => core()->getCurrentChannel()->id,
                'subscribed_to_news_letter' => (bool) request()->input('is_subscribed'),
            ]);
        });

        $email = "newCustomer".rand(100000,999999)."@example.com";
        if(empty($user->email)){
            $user->email = $email;
            $user->save();
        }

        $oldPass = $user->password;

        $newPass = bcrypt('123456789');
        $user->password = $newPass;
        $user->save();

        // درخواست GraphQL که می‌خواهید ارسال کنید
        $query = <<<GQL
mutation {
    userLogin(input : {
      email: "$email"
      password: "123456789"
    })
    {
      status
      success
      accessToken
      tokenType
      expiresIn
      user {
          id
          name
          email
          password
          apiToken
          roleId
          status
          createdAt
          updatedAt
      }
    }
}
GQL;

        // ارسال درخواست HTTP به GraphQL endpoint
        $response = Http::post('http://bagisto.test/graphql', [
            'query' => $query,
        ]);

        // تبدیل پاسخ به JSON
        $data = $response->json();
dd($data);
        // دسترسی به توکن و بازگشت پاسخ
        $accessToken = $data['data']['userLogin']['accessToken'] ?? null;

        if ($accessToken) {
            return response()->json([
                'status' => 'success',
                'token' => $accessToken,
            ]);
        } else {
            return response()->json([
                'status' => 'error',
                'message' => 'Login failed',
            ]);
        }
        dd('ssdsd');



        return ['token' => $token];

    }

    public function dataResponse($data): JsonResponse
    {
        return response()->json([
            'data' => $data,
        ]);
    }

    public function checkCode(Request $request)
    {
        $request->validate(['phone' => 'required', 'code' => 'required']);
        $phone = $request->input(['phone']);
        $code = $request->input(['code']);
dd('d');
        $token = OtpToken::where('receiver', $phone)->where('token', $code)->first();

        if (is_null($token)) {
            return \response()->json(['message' => 'Code Or Phone is incorrect'], 403);
        }

        if (Carbon::parse(Carbon::now()->format('Y-m-d H:i:s'))->greaterThan($token->expire_at)) {
            return \response()->json(['message' => 'Code is Expire'], 403);
        }

        return \response()->json(['message' => 'success']);
    }

    public function freeResponse($data, $message, $statusCode = 201): JsonResponse
    {
        return response()->json([
            'data'    => $data,
            'message' => $message,
        ], $statusCode);
    }
}
