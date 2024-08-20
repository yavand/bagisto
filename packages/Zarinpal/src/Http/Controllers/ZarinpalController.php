<?php

namespace Zarinpal\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Http;
use Webkul\Checkout\Facades\Cart;
use Webkul\Customer\Models\Customer;
use Webkul\Sales\Repositories\OrderRepository;
use Webkul\Shop\Services\GraphQlService;

class ZarinpalController extends Controller
{
    private $cart;

    public function __construct(protected OrderRepository $orderRepository)
    {
//        $this->cart = Cart::getCart();
    }
    public function apiPay(Request $request)
    {

//        $token = trim($request->header()['authorization'][0]);
//
//        $t = new GraphQlService();
//        $response = $t->getCart($token);
//dd($response);

        $request->validate(['customer_id'=>'required|exists:customers,id','cart_id'=>'required|exists:cart,id']);

        $customer = Auth::guard('customer')->loginUsingId($request->customer_id);

        $cart = $customer->active_carts()->where('id',$request->cart_id)->first();
        if (!$cart)
            return response()->json(['error'=>['message'=>'Cart Not Found']]);

        $this->cart = $cart;
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
        return $response->redirect();
    }

    public function pay(Request $request){
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

        $response = zarinpal()
            ->merchantId(env('ZARINPAL_MERCHANT_ID')) // تعیین مرچنت کد در حین اجرا - اختیاری
            ->amount($this->cart->grand_total)
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
        $referenceId = $response->referenceId();


//        $cart = Cart::getCart();
//
//        $data = (new OrderResource($cart))->jsonSerialize();
//
//        $order = $this->orderRepository->create($data);
//
//        Cart::deActivateCart();
//
//        session()->flash('order_id', $order->id);

        return redirect()->route('shop.checkout.onepage.success');
//        return $response->referenceId();
    }
}
