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

Route::group([], function () {
    Route::prefix('zarinpal')->group(function () {
        Route::get('/pay', [ZarinpalController::class, 'pay'])->name('zarinpal.pay');
        Route::get('/verification', [ZarinpalController::class, 'verification'])->name('zarinpal.verification');
    });

    Route::prefix('api/zarinpal')->group(function () {
        Route::post('/pay', [ZarinpalController::class, 'apiPay'])->name('zarinpal.api.pay')->middleware(['sanctum.locale', 'sanctum.currency']);
    });

});

Route::get('/mytest',function (){
//   \Illuminate\Support\Facades\Artisan::call('route:clear');

    echo "Hello World";

});
