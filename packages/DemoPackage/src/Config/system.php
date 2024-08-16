<?php

return [
    [
        'key'    => 'sales.payment_methods.demopackage',
        'name'   => 'DemoPackage',
        'info'   => 'infooo',
        'sort'   => 1,
        'fields' => [
            [
                'name'          => 'titleeee',
                'title'         => 'admin::app.admin.system.titleee',
                'type'          => 'text',
                'validation'    => 'required',
                'channel_based' => false,
                'locale_based'  => true,
            ], [
                'name'          => 'description',
                'title'         => 'admin::app.admin.system.description',
                'type'          => 'textarea',
                'channel_based' => false,
                'locale_based'  => true,
            ], [
                'name'          => 'active',
                'title'         => 'admin::app.admin.system.status',
                'type'          => 'boolean',
                'validation'    => 'required',
                'channel_based' => false,
                'locale_based'  => true,
            ]
        ]
    ]
];
