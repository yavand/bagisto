<?php

namespace Webkul\Shop\Http\Controllers\API;

use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Event;
use Illuminate\Support\Str;
use Webkul\Core\Repositories\SubscribersListRepository;
use Webkul\Customer\Repositories\CustomerGroupRepository;
use Webkul\Customer\Repositories\CustomerRepository;
use Webkul\Shop\Http\Requests\Customer\LoginRequest;
use Webkul\Shop\Http\Requests\Customer\RegistrationRequest;

class CustomerController extends APIController
{
    public function __construct(
        protected CustomerRepository        $customerRepository,
        protected CustomerGroupRepository   $customerGroupRepository,
        protected SubscribersListRepository $subscriptionRepository
    )
    {
    }
    /**
     * Login Customer
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(LoginRequest $loginRequest)
    {
        if (!auth()->guard('customer')->attempt($loginRequest->only(['email', 'password']))) {
            return $this->freeResponse('error', trans('shop::app.customers.login-form.invalid-credentials'), 404);
        }

        if (! auth()->guard('customer')->user()->status) {
            auth()->guard('customer')->logout();

            return $this->freeResponse('error', trans('shop::app.customers.login-form.not-activated'), 403);

        }

        if (! auth()->guard('customer')->user()->is_verified) {

            Cookie::queue(Cookie::make('enable-resend', 'true', 1));

            Cookie::queue(Cookie::make('email-for-resend', $loginRequest->get('email'), 1));

            auth()->guard('customer')->logout();

            return $this->freeResponse('info', trans('shop::app.customers.login-form.verify-first'), 404);

        }
        Event::dispatch('customer.after.login', auth()->guard()->user());

        $token = auth()->guard('customer')->user()->createToken('YourTokenName')->plainTextToken;

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


    public function register(RegistrationRequest $registrationRequest)
    {
        $registrationRequest->validate(['phone' => 'required|unique:customers,phone']);

        $customerGroup = core()->getConfigData('customer.settings.create_new_account_options.default_group');

        $data = array_merge($registrationRequest->only([
            'first_name',
            'last_name',
            'email',
            'phone',
            'password_confirmation',
            'is_subscribed',
        ]), [
            'password' => bcrypt(request()->input('password')),
            'api_token' => Str::random(80),
            'is_verified' => !core()->getConfigData('customer.settings.email.verification'),
            'customer_group_id' => $this->customerGroupRepository->findOneWhere(['code' => $customerGroup])->id,
            'channel_id' => core()->getCurrentChannel()->id,
            'token' => md5(uniqid(rand(), true)),
            'subscribed_to_news_letter' => (bool)request()->input('is_subscribed'),
        ]);

        Event::dispatch('customer.registration.before');

        $customer = $this->customerRepository->create($data);

        if (isset($data['is_subscribed'])) {
            $subscription = $this->subscriptionRepository->findOneWhere(['email' => $data['email'], 'phone' => $data['phone']]);

            if ($subscription) {
                $this->subscriptionRepository->update([
                    'customer_id' => $customer->id,
                ], $subscription->id);
            } else {
                Event::dispatch('customer.subscription.before');

                $subscription = $this->subscriptionRepository->create([
                    'email' => $data['email'],
                    'customer_id' => $customer->id,
                    'channel_id' => core()->getCurrentChannel()->id,
                    'is_subscribed' => 1,
                    'token' => uniqid(),
                ]);

                Event::dispatch('customer.subscription.after', $subscription);
            }
        }

        Event::dispatch('customer.registration.after', $customer);

        if (core()->getConfigData('customer.settings.email.verification')) {
            return $this->freeResponse('success', trans('shop::app.customers.signup-form.success-verify'));
        }
        return $this->freeResponse('success', trans('shop::app.customers.signup-form.success'));
    }

    public function freeResponse($data, $message, $statusCode = 201): JsonResponse
    {
        return response()->json([
            'data' => $data,
            'message' => $message,
        ], $statusCode);
    }

    public function dataResponse($data): JsonResponse
    {
        return response()->json([
            'data' => $data,
        ]);
    }


}
