<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    public $timestamps = false; //set time to false
    protected $fillable = [
    	'customer_id','order_total','time','order_id'
    ];
    protected $primaryKey = 'order_id';
 	protected $table = 'tbl_order';
}
