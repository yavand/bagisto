<?php

namespace Webkul\Shop\Http\Controllers\API;

use Webkul\Shop\Http\Requests\Customer\LoginRequest;
use Webkul\Shop\Http\Requests\Customer\RegistrationRequest;
use Webkul\Shop\Services\GraphQlService;

class CustomerController extends APIController
{
    public function __construct(
        protected GraphQlService            $graphQlService
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
        return $this->graphQlService->loginCustomer($loginRequest->email, $loginRequest->password);
    }

    /**
     * Register Customer
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function register(RegistrationRequest $registrationRequest)
    {
        return $this->graphQlService->registerCustomer($registrationRequest);
    }

}
