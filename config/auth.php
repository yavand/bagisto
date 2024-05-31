<?php

return [
    'defaults' => [
        'guard'     => 'customer',
        'passwords' => 'customers',
    ],

    'guards' => [
        'customer' => [
            'driver'   => 'session',
            'provider' => 'customers',
        ],

        'admin' => [
            'driver'   => 'session',
            'provider' => 'admins',
        ],
        'api' => [
            'driver'   => 'jwt',
            'provider' => 'customer',
        ],

        'admin-api' => [
            'driver'   => 'jwt',
            'provider' => 'admin',
        ],

    ],

    'providers' => [
        'customers' => [
            'driver' => 'eloquent',
            'model'  => Webkul\Customer\Models\Customer::class,
        ],

        'admins' => [
            'driver' => 'eloquent',
            'model'  => Webkul\User\Models\Admin::class,
        ],

        'customer' => [
            'driver' => 'eloquent',
            'model'  => Webkul\GraphQLAPI\Models\Customer\Customer::class,
        ],

        'admin' => [
            'driver' => 'eloquent',
            'model'  =>  Webkul\GraphQLAPI\Models\Admin\Admin::class,
        ],

    ],

    'passwords' => [
        'customers' => [
            'provider' => 'customers',
            'table'    => 'customer_password_resets',
            'expire'   => 60,
            'throttle' => 60,
        ],

        'admins' => [
            'provider' => 'admins',
            'table'    => 'admin_password_resets',
            'expire'   => 60,
            'throttle' => 60,
        ],
    ],
];
