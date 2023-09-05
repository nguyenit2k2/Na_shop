<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use App\Http\Requests;
use Illuminate\Support\Facades\Redirect;
use DB;
use App\Recharge;
use App\Customer;
use App\Card;
use App\Slider;
session_start();

class RechargeController extends Controller
{   
    public function nap_tien(Request $request){
        //slide
       $slider = Slider::orderBy('slider_id','DESC')->where('slider_status','1')->take(4)->get();
       //seo 

       $meta_desc = "Đăng nhập nạp tiền"; 
       $meta_keywords = "Đăng nhập nạp tiền";
       $meta_title = "Đăng nhập nạp tiền";
       $url_canonical = $request->url();
       $card = DB::table('tbl_card')->orderby('money')->get();
       $card_name = DB::table('tbl_card_name')->get();
       $cate_product = DB::table('tbl_category_product')->where('category_status','0')->orderby('category_id','desc')->get();
       $brand_product = DB::table('tbl_brand')->where('brand_status','0')->orderby('brand_id','desc')->get();  
       return view('pages.recharge')->with('card_name',$card_name)->with('card',$card)->with('category',$cate_product)->with('brand',$brand_product)->with('meta_desc',$meta_desc)->with('meta_keywords',$meta_keywords)->with('meta_title',$meta_title)->with('url_canonical',$url_canonical)->with('slider',$slider);
   }
   public function recharge(Request $request){
    $card = DB::table('tbl_recharge')->where('seri',$request->seri)->Orwhere('pin',$request->pin)->first();
    if($card==NULL){
    $data = array();
    $data['card_name'] =  $request->card_name;
    $data['total'] = $request->card;
    $data['seri'] = $request->seri;
    $data['pin'] = $request->pin;
    $data['customer_id'] = Session::get('customer_id');
    date_default_timezone_set('Asia/Ho_Chi_Minh');
    $data['time'] = now();
    DB::table('tbl_recharge')->insert($data);
    DB::table('tbl_customers')->where('customer_id',$data['customer_id'])->increment('money',$data['total']);
    $result = DB::table('tbl_customers')->where('customer_id',$data['customer_id'])->first();
        if($result){
            Session::put('money',$result->money);
    	}else{
    		return Redirect::to('/dang-nhap');
    	}
    Session::put('message','Nạp tiền thành công');
    return Redirect::to('/nap-tien');
    }
    else{
            Session::put('message','Số seri hoặc mã pin sai ! Vui lòng kiểm tra lại');
            return Redirect::to('/nap-tien');
    }
}
    public function AuthLogin(){
        $admin_id = Session::get('admin_id');
        if($admin_id){
            return Redirect::to('dashboard');
        }else{
            return Redirect::to('admin')->send();
        }
    }
    public function list_card(){
        $this->AuthLogin();
    	$all_recharge = DB::table('tbl_recharge')
        ->join('tbl_customers','tbl_customers.customer_id','=','tbl_recharge.customer_id')
        ->orderby('tbl_recharge.time','desc')->paginate(10);
    	$manager_recharge  = view('admin.all_recharge')->with('all_recharge',$all_recharge);
    	return view('admin_layout')->with('admin.all_recharge', $manager_recharge);

    }
    public function delete_card($part_id){
        $this->AuthLogin();
        DB::table('tbl_recharge')->where('part_id',$part_id)->delete();
        Session::put('message','Xóa thẻ thành công');
        return Redirect::to('list-card');
    }
}