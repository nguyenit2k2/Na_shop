@extends('admin_layout')
@section('admin_content')
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                           Thêm Tài Khoản
                        </header>
                         <?php
                            $message = Session::get('message');
                            if($message){
                                echo '<span class="text-alert">'.$message.'</span>';
                                Session::put('message',null);
                            }
                            ?>
                        <div class="panel-body">

                            <div class="position-center">
                                <form role="form" action="{{URL::to('/insert-account')}}" method="post" enctype="multipart/form-data">
                                    {{ csrf_field() }}
                                
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Tài Khoản</label>
                                    <input type="text" name="account" class="form-control" id="exampleInputEmail1" placeholder="Slide">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Mật Khẩu</label>
                                    <input type="text" name="password" class="form-control" id="exampleInputEmail1" placeholder="Slide">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Tên trò chơi</label>
                                      <select name="product_cate" class="form-control input-sm m-bot15">
                                        @foreach($cate_product as $key => $cate)
                                            <option value="{{$cate->product_id}}">{{$cate->product_name}}</option>
                                        @endforeach
                                            
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Hiển thị</label>
                                      <select name="status" class="form-control input-sm m-bot15">
                                           <option value="1">Hiển thị</option>
                                            <option value="0">Ẩn</option>
                                            
                                    </select>
                                </div>
                               
                                <button type="submit" name="add_account" class="btn btn-info">Thêm Tài Khoản</button>
                                </form>
                            </div>

                        </div>
                    </section>

            </div>
@endsection