<?php

/**
 * Store front routes.
 */

use Illuminate\Support\Facades\Route;
use Zarinpal\Http\Controllers\ZarinpalController;

require 'store-front-routes.php';

/**
 * Customer routes. All routes related to customer
 * in storefront will be placed here.
 */
require 'customer-routes.php';

/**
 * Checkout routes. All routes related to checkout like
 * cart, coupons, etc will be placed here.
 */
require 'checkout-routes.php';

Route::group(['middleware' => ['web']], function () {
    Route::prefix('zarinpal/')->group(function () {
        Route::post('/pay', [ZarinpalController::class, 'pay'])->name('zarinpal.pay');
        Route::get('/verification', [ZarinpalController::class, 'verification'])->name('zarinpal.verification');
    });
});
