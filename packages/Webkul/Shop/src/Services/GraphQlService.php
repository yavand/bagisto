<?php

namespace Webkul\Shop\Services;

use Illuminate\Support\Facades\Http;
use Webkul\Customer\Models\Customer;
use Webkul\Shop\Http\Requests\Customer\RegistrationRequest;

class GraphQlService
{
    public string $url;

    public function __construct()
    {
        $this->url = url('/') . '/graphql';
    }

    public function loginCustomer($email, $password)
    {

        $query = '
        mutation customerLogin {
            customerLogin(input: {
                email: "' . $email . '"
                password: "' . $password . '"
            }) {
                status
                success
                accessToken
                tokenType
                expiresIn
                customer {
                    id
                    firstName
                    lastName
                    name
                    gender
                    dateOfBirth
                    email
                    phone
                    password
                    apiToken
                    customerGroupId
                    subscribedToNewsLetter
                    isVerified
                    token
                    status
                    createdAt
                    updatedAt
                }
            }
        }
    ';

        $response = Http::post($this->url, [
            'query' => $query
        ]);

        return $response->json();

    }

    public function registerCustomer(RegistrationRequest $request)
    {

        $query = '
        mutation customerRegister {
      customerSignUp(input: {
          firstName: "' . $request->first_name . '"
          lastName: "' . $request->last_name . '"
          email: "' . $request->email . '"
          password: "' . $request->password . '"
          passwordConfirmation: "' . $request->password_confirmation . '"
      }) {
          status
          success
      }
  }
    ';

        $response = Http::post($this->url, [
            'query' => $query
        ]);
        if ($response['data']['customerSignUp']['status']) {
            Customer::where('email', $request->email)
                ->update(['phone' => $request->phone]);
        }

        return $response->json();

    }

}
