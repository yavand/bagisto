<?php

namespace Webkul\Admin\DataGrids;

use Illuminate\Support\Facades\DB;
use Webkul\DataGrid\DataGrid;

class OrderTransactionsDataGrid extends DataGrid
{
    public function prepareQueryBuilder()
    {
        $queryBuilder = DB::table('order_transactions')
            ->leftJoin('orders as ors', 'order_transactions.order_id', '=', 'ors.id')
            ->select('order_transactions.id as id', 'order_transactions.transaction_id as transaction_id', 'order_transactions.invoice_id as invoice_id', 'ors.increment_id as order_id', 'order_transactions.created_at as created_at', 'order_transactions.amount as amount', 'order_transactions.status as status');

        return $queryBuilder;
    }

    public function prepareColumns()
    {
        $this->addColumn([
            'index'      => 'id',
            'label'      => trans('admin::app.datagrid.id'),
            'type'       => 'integer',
            'searchable' => false,
            'sortable'   => true,
            'filterable' => false,
        ]);

        $this->addColumn([
            'index'      => 'transaction_id',
            'label'      => trans('admin::app.datagrid.transaction-id'),
            'type'       => 'string',
            'searchable' => false,
            'sortable'   => true,
            'filterable' => true,
        ]);

        $this->addColumn([
            'index'      => 'created_at',
            'label'      => trans('admin::app.datagrid.transaction-date'),
            'type'       => 'datetime',
            'searchable' => true,
            'sortable'   => true,
            'filterable' => true,
        ]);

        $this->addColumn([
            'index'      => 'amount',
            'label'      => trans('admin::app.datagrid.transaction-amount'),
            'type'       => 'price',
            'searchable' => true,
            'sortable'   => true,
            'filterable' => true,
        ]);

        $this->addColumn([
            'index'      => 'invoice_id',
            'label'      => trans('admin::app.datagrid.invoice-id'),
            'type'       => 'integer',
            'searchable' => true,
            'sortable'   => true,
            'filterable' => true,
        ]);

        $this->addColumn([
            'index'      => 'order_id',
            'label'      => trans('admin::app.datagrid.order-id'),
            'type'       => 'integer',
            'searchable' => true,
            'sortable'   => true,
            'filterable' => true,
        ]);

        $this->addColumn([
            'index'      => 'status',
            'label'      => trans('admin::app.datagrid.status'),
            'type'       => 'string',
            'searchable' => true,
            'sortable'   => true,
            'filterable' => true,
        ]);
    }

    public function prepareActions()
    {
        $this->addAction([
            'title'  => trans('admin::app.datagrid.view'),
            'method' => 'GET',
            'route'  => 'admin.sales.transactions.view',
            'url'          => function ($row) {
                return route('admin.sales.transactions.view', $row->id);
            },
        ]);
    }
}
