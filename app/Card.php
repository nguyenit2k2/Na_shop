<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Card extends Model
{
    public $timestamps = false;
    protected $fillable = [
    	'money','extra','total'
    ];
    protected $primaryKey = 'money';
 	protected $table = 'tbl_card';
}
class CardName extends Model
{
    public $timestamps = false;
    protected $fillable = [
    	'card_name'
    ];
    protected $primaryKey = 'card_name';
 	protected $table = 'tbl_card_name';
}
class Recharge extends Model
{
    public $timestamps = false;
    protected $fillable = [
    	'card_name','total','seri','pin','product_id','time'
    ];
    protected $primaryKey = 'part_id';
 	protected $table = 'tbl_recharge';
}
