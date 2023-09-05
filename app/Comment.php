<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    public $timestamps = false;
    protected $fillable = [
    	'customer_name','product_id','comment','time','customer_name'
    ];
    protected $primaryKey = 'comment_id';
 	protected $table = 'tbl_comment';
}
