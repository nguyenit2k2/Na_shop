@extends('layout')
@section('content')
@foreach($product_details as $key => $value)
<div class="product-details"><!--product-details-->
						<div class="col-sm-5">
							<div class="view-product">
								<img src="{{URL::to('/public/uploads/product/'.$value->product_image)}}" alt="" />
							</div>
							<div id="similar-product" class="carousel slide" data-ride="carousel">
								
								  <!-- Wrapper for slides -->
								    <div class="carousel-inner">

										<div class="item active">
										  <a href="#/"><img src="{{URL::to('public/frontend/images/similar1.jpg')}}" alt=""></a>
										  <a href="#/"><img src="{{URL::to('public/frontend/images/similar2.jpg')}}" alt=""></a>
										  <a href="#/"><img src="{{URL::to('public/frontend/images/similar3.jpg')}}" alt=""></a>
										</div>
										
										
										
									</div>

								  <!-- Controls -->
								  <a class="left item-control" href="#similar-product" data-slide="prev">
									<i class="fa fa-angle-left"></i>
								  </a>
								  <a class="right item-control" href="#similar-product" data-slide="next">
									<i class="fa fa-angle-right"></i>
								  </a>
							</div>

						</div>
						<div class="col-sm-7">
							<div class="product-information"><!--/product-information-->
								<img src="images/product-details/new.jpg" class="newarrival" alt="" />
								<h2>{{$value->product_name}}</h2>
								<p>Mã ID: {{$value->product_id}}</p>
								<img src="images/product-details/rating.png" alt="" />
								
								<form action="{{URL::to('/save-cart')}}" method="POST">
									@csrf
											<input type="hidden" value="{{$value->product_id}}" class="cart_product_id_{{$value->product_id}}">

                                            <input type="hidden" value="{{$value->product_name}}" class="cart_product_name_{{$value->product_id}}">

                                            <input type="hidden" value="{{$value->product_image}}" class="cart_product_image_{{$value->product_id}}">

                                            <input type="hidden" value="{{$value->product_quantity}}" class="cart_product_quantity_{{$value->product_id}}">

                                            <input type="hidden" value="{{$value->product_price}}" class="cart_product_price_{{$value->product_id}}">
                                          
								<span>
									<span>{{number_format($value->product_price,0,',','.').'VNĐ'}}</span>
								
									<label>Số lượng:</label>
									<input name="qty" type="number" min="1" class="cart_product_qty_{{$value->product_id}}"  value="1" />
									<input name="productid_hidden" type="hidden"  value="{{$value->product_id}}" />
								</span>
								<input type="button" value="Thêm giỏ hàng" class="btn btn-primary btn-sm add-to-cart" data-id_product="{{$value->product_id}}" name="add-to-cart">
								</form>

								<p><b>Tình trạng:</b> Còn hàng</p>
								<p><b>Số lượng kho còn:</b> {{$value->product_quantity}}</p>
								<p><b>Thương hiệu:</b> {{$value->brand_name}}</p>
								<p><b>Thể Loại:</b> {{$value->category_name}}</p>
								<a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a>
							</div><!--/product-information-->
						</div>
</div><!--/product-details-->

					<div class="category-tab shop-details-tab"><!--category-tab-->
						<div class="col-sm-12">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#reviews" data-toggle="tab">Đánh giá</a></li>
								<li><a href="#companyprofile" data-toggle="tab">Chi tiết sản phẩm</a></li>
							
								
							</ul>
						</div>
						
						<div class="tab-content">
							<div class="tab-pane fade active in" id="reviews" >
							<?php 
                                   $customer_name = Session::get('customer_name');
                                   if($customer_name!=NULL):
                                 	?>
							
								<div class="col-sm-12">
									<ul>
										<li><h4><i class="fa fa-user"> <?php echo $customer_name ?>&nbsp;&nbsp;</h4></i>
										</li>
									<script>
 									var today = new Date();
 									var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
 
 									document.getElementById("hvn").innerHTML = time;
</script>
										<li><a href="" ><i class="fa fa-clock-o" ></i>
										<?php
 							 echo date("h:i");
							?>
									</a></li>
										<li><a href=""><i class="fa fa-calendar-o"></i>
							<?php
 							 $today = date("d/m/Y");
 							 echo $today;
							?></a></li>
									</ul>
									<p>Cảm ơn bạn đã quan tâm đến sản phẩm của chúng tôi</p>
					<br>
									<p><b>Viết bình luận</b></p>
									
									<form action="{{URL::to('/comment/'.$value->product_id)}}" method="POST">
										@csrf
										<textarea name="rate" class="form-control" row="3"></textarea>
										 
										<button type="summit" class="btn btn-default pull-right">
											Gửi
										</button>
									</form>
								</div>
							
							<?php else:?>
								
								<a href="{{URL::to('/dang-nhap')}}"><h3>Vui lòng Đăng Nhập </a>  để bình luận</h3>
								<br> 
									<?php endif;?>
									<br>
									@foreach($comment as $key =>$comment)
									<hr>
									<h4><b><i class="fa fa-user"> </i>&nbsp;{{$comment->customer_name}} &nbsp;&nbsp; </b>{{$comment->time}}</h4>
									<p> {{$comment->comment}}</p>
									
									<br>
									@endforeach
									
								
							</div>
							
							<div class="tab-pane fade" id="companyprofile" >
								<p>{!!$value->product_content!!}</p>
								
						
							</div>
							
						</div>
						
					</div><!--/category-tab-->
	@endforeach
					<div class="recommended_items"><!--recommended_items-->
						<h2 class="title text-center">Sản phẩm liên quan</h2>
						
						<div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								<div class="item active">
							@foreach($relate as $key => $lienquan)
							<div class="col-sm-4">
                            <div class="product-image-wrapper">
                           
                                <div class="single-products">
                                        <div class="productinfo text-center">
                                        <form action="{{URL::to('/save-cart')}}" method="POST">
                                                @csrf
                                            <input type="hidden" value="{{$lienquan->product_id}}" class="cart_product_id_{{$lienquan->product_id}}">
                                            <input type="hidden" value="{{$lienquan->product_name}}" class="cart_product_name_{{$lienquan->product_id}}">
                                          
                                            <input type="hidden" value="{{$lienquan->product_quantity}}" class="cart_product_quantity_{{$lienquan->product_id}}">
                                            
                                            <input type="hidden" value="{{$lienquan->product_image}}" class="cart_product_image_{{$lienquan->product_id}}">
                                            <input type="hidden" value="{{$lienquan->product_price}}" class="cart_product_price_{{$lienquan->product_id}}">
                                            <input type="hidden" value="1" class="cart_product_qty_{{$lienquan->product_id}}">

                                            <a href="{{URL::to('/chi-tiet/'.$lienquan->product_slug)}}">
                                                <img class="img style" src="{{URL::to('public/uploads/product/'.$lienquan->product_image)}}" alt="" />
                                                <h2>{{number_format($lienquan->product_price,0,',','.').' '.'VNĐ'}}</h2>
                                                <p>{{$lienquan->product_name}}</p>

                                             
                                             </a>
                                             <?php
                                   $customer_name = Session::get('customer_name');
                                  
                                   if($customer_name!=NULL ){ 
                                 ?>
                                            <input type="button" value="Thêm giỏ hàng" class="btn btn-default add-to-cart" data-id_product="{{$lienquan->product_id}}" name="add-to-cart">
                                            
                                        <?php
                                            }else{ 
                                            ?>
                                          <a href="{{URL::to('/dang-nhap')}}">  <input type="button" value="Thêm giỏ hàng" class="btn btn-default add-to-cart"  name="add-to-cart">
                                            <?php }?>
                                            </form>
                                        </div>
                                        
                                </div>
                           
                                <div class="choose">
                                    <ul class="nav nav-pills nav-justified">
                                        <li><a href="#"><i class="fa fa-plus-square"></i>Yêu thích</a></li>
                                        <li><a href="#"><i class="fa fa-plus-square"></i>So sánh</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
							@endforeach		

								
								</div>
									
							</div>
									
						</div>
					</div><!--/recommended_items-->
					{{--   <ul class="pagination pagination-sm m-t-none m-b-none">
                       {!!$relate->links()!!}
                      </ul> --}}

@endsection