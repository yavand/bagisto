<?php

namespace Zarinpal\Http\Controllers;

use Illuminate\Http\Request;
use Webkul\Checkout\Facades\Cart;
use Webkul\Sales\Repositories\OrderRepository;
use Webkul\Sales\Transformers\OrderResource;

class ZarinpalController extends Controller
{

    public function __construct(protected OrderRepository $orderRepository,)
    {
    }

    public function pay(Request $request){
        $response = zarinpal()
            ->merchantId('13da7b5d-20e4-49a3-b54e-75c8d614f720') // تعیین مرچنت کد در حین اجرا - اختیاری
            ->amount(3000) // مبلغ تراکنش
            ->request()
            ->description('transaction info') // توضیحات تراکنش
            ->callbackUrl('https://bagisto.test/zarinpal/verification') // آدرس برگشت پس از پرداخت
            ->mobile('09123456789') // شماره موبایل مشتری - اختیاری
            ->email('name@domain.com') // ایمیل مشتری - اختیاری
            ->send();

        if (!$response->success()) {
            return $response->error()->message();
        }

// ذخیره اطلاعات در دیتابیس
// $response->authority();

// هدایت مشتری به درگاه پرداخت
        return $response->redirect();
    }
    public function verification(Request $request)
    {
        $authority = request()->query('Authority'); // دریافت کوئری استرینگ ارسال شده توسط زرین پال
        $status = request()->query('Status'); // دریافت کوئری استرینگ ارسال شده توسط زرین پال

        $response = zarinpal()
            ->merchantId('13da7b5d-20e4-49a3-b54e-75c8d614f720') // تعیین مرچنت کد در حین اجرا - اختیاری
            ->amount(3000)
            ->verification()
            ->authority($authority)
            ->send();

        if (!$response->success()) {
            return $response->error()->message();
        }

// دریافت هش شماره کارتی که مشتری برای پرداخت استفاده کرده است
// $response->cardHash();

// دریافت شماره کارتی که مشتری برای پرداخت استفاده کرده است (بصورت ماسک شده)
// $response->cardPan();

// پرداخت موفقیت آمیز بود
// دریافت شماره پیگیری تراکنش و انجام امور مربوط به دیتابیس

        $cart = Cart::getCart();

        $data = (new OrderResource($cart))->jsonSerialize();

        $order = $this->orderRepository->create($data);

        Cart::deActivateCart();

        session()->flash('order_id', $order->id);

        return redirect()->route('shop.checkout.onepage.success');
//        return $response->referenceId();
    }
}
