<?php

namespace Zarinpal\Payment;

use Webkul\Payment\Payment\Payment;

class Zarinpal extends Payment
{
    /**
     * Payment method code
     *
     * @var string
     */
    protected $code  = 'zarinpal';

    public function getRedirectUrl()
    {
        return route('zarinpal.pay');
    }

}
