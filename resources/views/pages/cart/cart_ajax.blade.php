@extends('layout')
@section('content')
	<section id="cart_items">
		<div class="container" style="width: 1400px;">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="{{URL::to('/')}}">Trang chủ</a></li>
				  <li class="active">Giỏ hàng của bạn</li>
				</ol>
			</div>
			  @if(session()->has('message'))
                    <div class="alert alert-success">
                        {!! session()->get('message') !!}
                    </div>
                @elseif(session()->has('error'))
                     <div class="alert alert-danger">
                        {!! session()->get('error') !!}
                    </div>
                @endif
			<div class="table-responsive cart_info" style="width: 1370px">
			
				<form action="{{url('/update-cart')}}" method="POST" >
					@csrf
				<table class="table table-condensed" >
					<thead>
						<tr class="cart_menu">
							<td class="image">Hình ảnh</td>
							<td class="description">Tên sản phẩm</td>
							<td class="description">Số lượng tồn</td>
							<td class="price">Giá sản phẩm</td>
							<td class="quantity">Số lượng</td>
							<td class="total">Thành tiền</td>
							
						</tr>
					</thead>
					<tbody>
						@if(Session::get('cart')==true)
						@php
								$total = 0;
						@endphp
						@foreach(Session::get('cart') as $key => $cart)
							@php
								$subtotal = $cart['product_price']*$cart['product_qty'];
								$total+=$subtotal;
							@endphp

						<tr>
							<td class="cart_product">
								<img src="{{asset('public/uploads/product/'.$cart['product_image'])}}" width="90" alt="{{$cart['product_name']}}" />
							</td>
							<td class="cart_description">
								<h4><a href=""></a></h4>
								<p>{{$cart['product_name']}} </p>
							</td>
							<td class="cart_description">
								<h4><a href=""></a></h4>
								<p>{{$cart['product_quantity']}}</p>
							</td>
							<td class="cart_price">
								<p>{{number_format($cart['product_price'],0,',','.')}}đ</p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
								
									<input class="cart_quantity" type="number" min="1" name="cart_qty[{{$cart['session_id']}}]" value="{{$cart['product_qty']}}"  >
								
									
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price">
									{{number_format($subtotal,0,',','.')}}đ
									
								</p>
							</td>
							<td class="cart_delete">
								<a class="cart_quantity_delete" href="{{url('/del-product/'.$cart['session_id'])}}"><i class="fa fa-times"></i></a>
							</td>
						</tr>
						
						@endforeach
						<tr>
							<td><input type="submit" value="Cập nhật giỏ hàng" name="update_qty" class="check_out btn btn-default btn-sm"></td>
							<td><a class="btn btn-default check_out" href="{{url('/del-all-product')}}">Xóa tất cả</a></td>
</form>

							

							<form action="{{url('/checkout')}}" method="GET" >
							<td colspan="1">
							<li><b>Tổng tiền: <input type="hidden" name="total" value={{$total}} >{{number_format($total,0,',','.')}}đ</span></li></b>
							<td>
								@if(Session::get('customer_name'))
								@if(Session::get('money')>= $subtotal)
	                          	<button onclick="return confirm('Bạn có chắc là muốn mua tài khoản này không ?') "   class="btn btn-default check_out" type="submit">Mua Tài Khoản</button>
	                          	@else
								<a href="{{URL('/nap-tien')}}" onclick="return confirm('Tài khoản không đủ... Vui lòng nạp thêm tiền!') "   class="btn btn-default check_out" >Mua Tài Khoản</button>
								@endif  
								@else 
	                          	<a class="btn btn-default check_out" href="{{url('/dang-nhap')}}">Mua Tài Khoản</a>
								@endif
							</td>
</form>
							
							
						</td>
						</tr>
						
						@endif
					</tbody>

					

				

				</table>

			</div>
		</div>
	</section> <!--/#cart_items-->



@endsection