<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;


use App\dbCart;
use App\Customer;
use App\Product;
session_start();
use App\Order;
class OrderController extends Controller
{
	public function delete_order(Request $request,$order_id){
		$order = Order::find($order_id);
		$order->delete();
		Session::put('message','Xóa đơn hàng thành công');
    	return redirect()->back();
	}
    public function manage_order(){
    	$order = Order::orderby('time','desc')->paginate(5);
    	return view('admin.manage_order')->with(compact('order'));
    }
	
}
