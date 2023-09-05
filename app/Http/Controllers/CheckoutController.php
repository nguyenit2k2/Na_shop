<?php


namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Http\Requests;
use Illuminate\Support\Facades\Redirect;
session_start();
use App\Comment;
use App\Product;
use App\City;
use App\Province;
use App\Wards;
use App\Feeship;
use App\Slider;
use App\Shipping;
use App\Order;
use App\OrderDetails;
use App\dbCart;
use App\Account;
use App\Customer;
class CheckoutController extends Controller
{
    
     public function AuthLogin(){
        $admin_id = Session::get('admin_id');
        if($admin_id){
            return Redirect::to('dashboard');
        }else{
            return Redirect::to('admin')->send();
        }
    }
   
    
    public function login_checkout(Request $request){
         //slide
        $slider = Slider::orderBy('slider_id','DESC')->where('slider_status','1')->take(4)->get();

        //seo 
        $meta_desc = "Đăng nhập thanh toán"; 
        $meta_keywords = "Đăng nhập thanh toán";
        $meta_title = "Đăng nhập thanh toán";
        $url_canonical = $request->url();
        //--seo 

    	$cate_product = DB::table('tbl_category_product')->where('category_status','0')->orderby('category_id','desc')->get();
        $brand_product = DB::table('tbl_brand')->where('brand_status','0')->orderby('brand_id','desc')->get(); 

    	return view('pages.checkout.login_checkout')->with('category',$cate_product)->with('brand',$brand_product)->with('meta_desc',$meta_desc)->with('meta_keywords',$meta_keywords)->with('meta_title',$meta_title)->with('url_canonical',$url_canonical)->with('slider',$slider);
    }
    public function add_customer(Request $request){
        $customer = DB::table('tbl_customers')->where('customer_email',$request->customer_email)->first();
        if($customer){
            Session::put('message','Email không hợp lệ hoặc đã tồn tại');
            return Redirect::to('/dang-ki');
        }
        else{
    	$data = array();
    	$data['customer_name'] = $request->customer_name;
    	$data['customer_phone'] = $request->customer_phone;
    	$data['customer_email'] = $request->customer_email;
    	$data['customer_password'] = $request->customer_password;
        $data['money'] = 0;
    	DB::table('tbl_customers')->insert($data);
        $customer = DB::table('tbl_customers')->where('customer_name',$data['customer_name'])->first();
        if($customer){
    	Session::put('customer_id',$customer->customer_id);
    	Session::put('customer_name',$customer->customer_name);
        Session::put('money',$data['money']);
        }
    	return Redirect::to('/');
    }
    }
    public function checkout(Request $request){
        //seo 
        //slide
       $slider = Slider::orderBy('slider_id','DESC')->where('slider_status','1')->take(4)->get();
       
       $meta_desc = "Đăng nhập thanh toán"; 
       $meta_keywords = "Đăng nhập thanh toán";
       $meta_title = "Đăng nhập thanh toán";
       $url_canonical = $request->url();
       $total = $request->total;
       $customer_id = Session::get('customer_id');
       $money = Session::get('money');
       if($money>=$total){
       DB::table('tbl_customers')->where('customer_id',$customer_id)->decrement('money',$total);
       $result = DB::table('tbl_customers')->where('customer_id',$customer_id)->first();
       if($result){
        $order_data = array();
        $order_data['customer_id'] = Session::get('customer_id');
        $order_data['order_total'] = $total;
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $order_data['time'] = now();
        $order_id = DB::table('tbl_order')->insertGetId($order_data);
        foreach(Session::get('cart') as $key=> $cart){
            $data = array();
            $data['order_id'] = $order_id;
            $data['product_id'] = $cart['product_id'];
            $data['product_name'] = $cart['product_name'];
            $data['product_price'] = $cart['product_price'];
            $data['product_quantity'] = $cart['product_qty'];
            DB::table('tbl_cart')->insert($data);
        }
            Session::forget('cart');
            $cart = DB::table('tbl_cart')->where('order_id',$order_id)->get();
           Session::put('money',$result->money);
           Session::put('message','Mua tài khoản thành công');
       }else{
           return Redirect::to('/dang-nhap');
       }
   }        
       else{
           Session::put('true',0);
           Session::put('message','Không đủ tiền vui lòng nạp thêm!');
       }
       $all_account = Account::orderBy('acc_id')->where('status','1')->get();
       $cart_order = DB::table('tbl_cart')->where('order_id',$order_id)->get();
       $cate_product = DB::table('tbl_category_product')->where('category_status','0')->orderby('category_id','desc')->get();
       $brand_product = DB::table('tbl_brand')->where('brand_status','0')->orderby('brand_id','desc')->get(); 
       return view('pages.checkout.show_checkout')->with('cart',$cart)->with(compact('all_account'))->with('category',$cate_product)->with('brand',$brand_product)->with('meta_desc',$meta_desc)->with('meta_keywords',$meta_keywords)->with('meta_title',$meta_title)->with('url_canonical',$url_canonical)->with('slider',$slider);
   }
    
    public function comment(Request $request,$product_id){
        $product = Product::where('product_id',$product_id)->first();
        $product_slug = $product->product_slug;
        $customer_id = Session::get('customer_id');
        $customer_name = Session::get('customer_name');
        $data = array();
        $data['customer_id'] = $customer_id;
        $data['customer_name'] = $customer_name;
        $data['comment'] = $request->rate;
        $data['product_id'] = $product_id;
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $data['time'] = now();
        DB::table('tbl_comment')->insert($data);
        return Redirect::to('chi-tiet/'.$product_slug);
    }
    public function view_comment(Request $request,$product_id){
        $comment = DB::table('tbl_comment')->where('product_id',$product_id)->orderby('time','desc')->paginate(10);
        $product = DB::table('tbl_product')->where('product_id',$product_id)->first();
        return view('admin.view_comment')->with('comment',$comment)->with('product',$product);
    }
    public function delete_comment(Request $request,$comment_id){
        $comment = Comment::find($comment_id);
		$comment->delete();
		Session::put('message','Xóa comment thành công');
    	return redirect()->back();
    }
    public function view_order($order_id){
        $this->AuthLogin();
        $cart = DB::table('tbl_cart')->where('order_id',$order_id)->orderby('order_id','desc')->get();
        $order = Order::where('order_id',$order_id)->first();
        $customer = Customer::where('customer_id',$order->customer_id )->first();
        return view('admin.view_order')->with('cart',$cart)->with('customer',$customer);
    }

    public function logout_checkout(){
    	Session::forget('customer_name');
    	return Redirect::to('/dang-nhap');
    }
    public function register_checkout(Request $request){
        return view('pages.checkout.register_checkout');
    }
    public function login_customer(Request $request){
    	$email = $request->email_account;
    	$password = ($request->password_account);
    	$result = DB::table('tbl_customers')->where('customer_email',$email)->where('customer_password',$password)->first();
    	
    	
    	if($result){
            Session::put('customer_id',$result->customer_id);
    		Session::put('customer_name',$result->customer_name);
            Session::put('money',$result->money);
    		return Redirect::to('/');
    	}else{
            Session::put('true',1);
            Session::put('message','Tài khoản hoặc mật khẩu không hợp lệ');
    		return Redirect::to('/dang-nhap');
    	}
        Session::save();

    }
   
}
