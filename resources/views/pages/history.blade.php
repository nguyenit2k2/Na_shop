@extends('layout')
@section('content')

<section id="cart_items">
<div class="container" style="width: 1400px;">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="{{URL::to('/')}}">Trang chủ</a></li>
				  <li class="active">Lịch sử thanh toán</li>
				</ol>
			</div>

<div class="table-responsive cart_info" style="width: 1370px">
			<table class="table table-condensed">
			<thead>
									<tr class="cart_menu">
									<td class="image">Tên trò chơi</td>
										<td class="price">Tên tài khoản</td>
										<td class="price">Mật khẩu</td>
                                        <td class="price">Thời gian mua</td>
									</tr>
								</thead>
								<tbody>

								@foreach($account as $key => $account)
									<tr>
									<td class="cart_description">
											<h4><a href=""></a></h4>
											<p>{{ $account->product_name}}</p>
										</td>
									<td class="cart_description">
											<h4><a href=""></a></h4>
											<p>{{$account->account}}</p>
										</td>
										<td class="cart_description">
											<p>{{$account->password}}</p>
										</td>
                                        <td class="cart_description">
											<p>{{$account->time_buy}}</p>
										</td>
									</tr>
								@endforeach

</tbody>		
</table>
</div>
			
					</div>
									
				</div>
			</div>
		

			
			
		</div>
	</section> <!--/#cart_items-->

@endsection