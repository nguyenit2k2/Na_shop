<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Account;
use App\Product;
use App\Slider;
use App\Customer;
use Session;
use App\Http\Requests;
use Illuminate\Support\Facades\Redirect;
use DB;
session_start();
class AccountController extends Controller
{
    public function AuthLogin(){
        $admin_id = Session::get('admin_id');
        if($admin_id){
            return Redirect::to('dashboard');
        }else{
            return Redirect::to('admin')->send();
        }
    }
    public function manager_account(){
    	$all_account = Account::orderBy('acc_id')->paginate(10);
    	return view('admin.account.list_account')->with(compact('all_account'));
    }
public function add_account(){
    $cate_product = DB::table('tbl_product')->orderby('product_id')->get(); 

    return view('admin.account.add_account')->with('cate_product', $cate_product);
    
}
public function unactive_account($acc_id){
    DB::table('tbl_account')->where('acc_id',$acc_id)->update(['status'=>0]);
    $acc = DB::table('tbl_account')->where('acc_id',$acc_id)->first();
    DB::table('tbl_product')->where('product_id',$acc->product_id)->decrement('product_quantity',1);
    Session::put('message','Hủy kích hoạt account thành công');
    return Redirect::to('manager-account');
}
public function active_account($acc_id){
    $this->AuthLogin();
    DB::table('tbl_account')->where('acc_id',$acc_id)->update(['status'=>1]);
    $acc = DB::table('tbl_account')->where('acc_id',$acc_id)->first();
    DB::table('tbl_product')->where('product_id',$acc->product_id)->increment('product_quantity',1);
    Session::put('message','Kích hoạt account thành công');
    return Redirect::to('manager-account');

}
public function history(Request $request){
    $slider = Slider::orderBy('slider_id','DESC')->where('slider_status','1')->take(4)->get();
    //seo 
    $meta_desc = "Chuyên bán những phụ kiện ,thiết bị game"; 
    $meta_keywords = "thiet bi game,phu kien game,game phu kien,game giai tri";
    $meta_title = "Phụ kiện,máy chơi game chính hãng";
    $url_canonical = $request->url();
    //--seo
    
    $cate_product = DB::table('tbl_category_product')->where('category_status','0')->orderby('category_id','desc')->get(); 
    $brand_product = DB::table('tbl_brand')->where('brand_status','0')->orderby('brand_id','desc')->get(); 

    $customer_id= Session::get('customer_id');
    $account = DB::table('tbl_account')->where('customer_id',$customer_id)->orderby('time_buy','desc')->get();
    return view('pages.history')->with('account',$account)->with('category',$cate_product)->with('brand',$brand_product)->with('meta_desc',$meta_desc)->with('meta_keywords',$meta_keywords)->with('meta_title',$meta_title)->with('url_canonical',$url_canonical)->with('slider',$slider);;
    
}
public function insert_account(Request $request){
    $this->AuthLogin();
   $data = array();
   $data['account'] = $request->account;
   $data['password'] = $request->password;
   $data['product_id'] = $request->product_cate;
   $data['status'] = $request->status;
   DB::table('tbl_account')->insert($data);
   DB::table('tbl_product')->where('product_id',$data['product_id'])->increment('product_quantity',1);
   Session::put('message','Thêm tài khoản thành công');
   return Redirect::to('add-account');
}
public function delete_account(Request $request, $acc_id){
    $acc = DB::table('tbl_account')->where('acc_id',$acc_id)->first();
    DB::table('tbl_product')->where('product_id',$acc->product_id)->decrement('product_quantity',1);
    $account = Account::find($acc_id);
    $account->delete();
    Session::put('message','Xóa account thành công');
    return redirect()->back();

}
public function accounted(){
    $all_account = Account::orderBy('acc_id')->where('status',0)->paginate(10);
    	return view('admin.account.list_accounted')->with(compact('all_account'));
}
}