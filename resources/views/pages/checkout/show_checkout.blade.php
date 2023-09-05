@extends('layout')
@section('content')

<section id="cart_items">
<div class="container" style="width: 1400px;">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="{{URL::to('/')}}">Trang chủ</a></li>
				  <li class="active">Thanh toán giỏ hàng</li>
				</ol>
			</div>
			<?php
     $message = Session::get('message');
    if($message){
    echo '<span class="alert alert-success">'.$message.'</span>';
    Session::put('message',null);
    }
 ?>
 <br><br>
			

@if($cart)
<div class="table-responsive cart_info" style="width: 1370px">
			<table class="table table-condensed">
			<thead>
									<tr class="cart_menu">
									<td class="image">Tên trò chơi</td>
										<td class="price">Tên tài khoản</td>
										<td class="price">Mật khẩu</td>

									</tr>
								</thead>
								<tbody>
								
			@foreach($cart as $key => $cart)
								@php
									$i=0;
								@endphp
							
								@foreach($all_account as $key => $account)
								<?php 
								if($cart->product_id==$account->product_id and $cart->product_quantity>$i):
								?>
								<form action="{{url('/buy-cart')}}" method="POST" >
							@csrf
									<tr>
									<td class="cart_description">
											<h4><a href=""></a></h4>
											<p>{{$cart->product_name}}</p>
										</td>
									<td class="cart_description">
											<h4><a href=""></a></h4>
											<p>{{$account->account}}</p>
										</td>
										<td class="cart_description">
											<p>{{$account->password}}</p>
										</td>
										<?php 
										DB::table('tbl_account')->where('acc_id',$account->acc_id)->update(['status'=>0]);
										DB::table('tbl_product')->where('product_id',$account->product_id)->decrement('product_quantity',1);
										DB::table('tbl_account')->where('acc_id',$account->acc_id)->update(['customer_id'=>Session::get('customer_id')]);
										date_default_timezone_set('Asia/Ho_Chi_Minh');
										DB::table('tbl_account')->where('acc_id',$account->acc_id)->update(['time_buy'=>now()]);
										DB::table('tbl_account')->where('acc_id',$account->acc_id)->update(['product_name'=>$cart->product_name]);
										?>
									</tr>
									</form>
									@php
									$i=$i+1;
									@endphp
									<?php
									 endif; 
									 ?>
									
									
@endforeach
								@endforeach
								@else
								return Redirect::to(/history);
								@endif

</tbody>		
</table>
</div>

			
					</div>
									
				</div>
			</div>
		

			
			
		</div>
	</section> <!--/#cart_items-->

@endsection