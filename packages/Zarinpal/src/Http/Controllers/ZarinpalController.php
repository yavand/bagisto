<?php

namespace Zarinpal\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Webkul\Checkout\Facades\Cart;
use Webkul\Sales\Repositories\OrderRepository;
use Webkul\Sales\Transformers\OrderResource;

class ZarinpalController extends Controller
{
    private $cart;

    public function __construct(protected OrderRepository $orderRepository)
    {
        $this->cart = Cart::getCart();
    }

    public function apiPay($customer, $cart)
    {
        $customerId = $customer;
        $cartId = $cart;
        $customer = Auth::guard('customer')->loginUsingId($customerId);

        $cart = $customer->active_carts()->where('id', $cartId)->first();
        if (!$cart)
            return response()->json(['error'=>['message'=>'Cart Not Found']]);
        session()->flash('zarincart', $cart);
        $url = url('/') . "/zarinpal/verification";
        $response = zarinpal()
            ->merchantId(env('ZARINPAL_MERCHANT_ID'))
            ->amount($cart->grand_total)
            ->request()
            ->description('خرید از سایت')
            ->callbackUrl($url)
//            ->mobile('09123456789') //
            ->email($cart->customer_email)
            ->send();

        if (!$response->success()) {
            return $response->error()->message();
        }

        return $response->redirect();
    }
    public function pay(Request $request){
        session()->flash('zarincart', $this->cart);
        $url = url('/') . "/zarinpal/verification";
        $response = zarinpal()
            ->merchantId(env('ZARINPAL_MERCHANT_ID'))
            ->amount($this->cart->grand_total)
            ->request()
            ->description('خرید از سایت')
            ->callbackUrl($url)
//            ->mobile('09123456789') //
            ->email($this->cart->customer_email)
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
//
        $response = zarinpal()
            ->merchantId(env('ZARINPAL_MERCHANT_ID')) // تعیین مرچنت کد در حین اجرا - اختیاری
            ->amount($this->cart->grand_total)
            ->verification()
            ->authority($authority)
            ->send();

        if (!$response->success()) {
            Log::error('Zarinpal Error : ' . $response->error()->message());
            $errors = new \Illuminate\Support\MessageBag();
            $errors->add('field_name', $response->error()->message());
            return redirect()->route('shop.checkout.cart.index')->withErrors($errors);

        }

// دریافت هش شماره کارتی که مشتری برای پرداخت استفاده کرده است
// $response->cardHash();

// دریافت شماره کارتی که مشتری برای پرداخت استفاده کرده است (بصورت ماسک شده)
// $response->cardPan();

// پرداخت موفقیت آمیز بود
// دریافت شماره پیگیری تراکنش و انجام امور مربوط به دیتابیس
        $referenceId = $response->referenceId();
        session(['reference_id' => $referenceId]);

        $cart = $this->cart;

        $data = (new OrderResource($cart))->jsonSerialize();

        $order = $this->orderRepository->create($data);

        Cart::deActivateCart();

        session(['order_id' => $order->id]);
        return redirect()->route('shop.checkout.onepage.success');
//        return $response->referenceId();
    }

}
