<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Account extends Model
{
    public $timestamps = false;
    protected $fillable = [
    	'acc_id', 'account','password','product_id','status','time_buy','customer_id','product_name'
    ];
    protected $primaryKey = 'acc_id';
 	protected $table = 'tbl_account';
}
