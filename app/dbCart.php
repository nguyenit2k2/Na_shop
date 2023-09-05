<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    public $timestamps = false; //set time to false
    protected $fillable = [
    	'order_id','product_id','product_name', 'product_price', 'product_quantity'
    ];
    protected $primaryKey = 'id';
 	protected $table = 'tbl_cart';
}
