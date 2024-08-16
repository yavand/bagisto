<?php

namespace DemoPackage\Payment;

use Webkul\Payment\Payment\Payment;

class DemoPackage extends Payment
{
    /**
     * Payment method code
     *
     * @var string
     */
    protected $code  = 'demopackage';

    public function getRedirectUrl()
    {
        
    }
}