<?php

namespace App\Http\Middleware;

use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as Middleware;

class VerifyCsrfToken extends Middleware
{
    /**
     * The URIs that should be excluded from CSRF verification.
     *
     * @var array<int, string>
     */
    protected $except = [
        'api/otp/otp-login',
        'api/otp/otp-check',
        'api/otp/login',
        'api/otp/me',
        'admin/catalog/products/create',
        'api/customer/login',
        'api/customer/register',
        'api/otp/request-code',
    ];
}
