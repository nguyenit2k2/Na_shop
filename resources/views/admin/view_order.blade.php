@extends('admin_layout')
@section('admin_content')
<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Chi tiết khách hàng
    </div>
    <div class="row w3-res-tb">
     
     
    
    </div>
    <div class="table-responsive">
                      <?php
                            $message = Session::get('message');
                            if($message){
                                echo '<span class="text-alert">'.$message.'</span>';
                                Session::put('message',null);
                            }
                            ?>
      <table class="table table-striped b-t b-light">
        <thead>
          <tr>
            <th>Tên khách hàng</th>
            <th>Số điện thoại</th>
            <th>Email</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>{{ $customer->customer_name}}</td>
            <td>{{ $customer->customer_phone }}</td>
            <td>{{ $customer->customer_email }}</td>
            </tr>
        </tbody>
      </table>
    </div>
    <footer class="panel-footer">
      <div class="row">
        
        <div class="col-sm-5 text-center">
         
        </div>
        <div class="col-sm-7 text-right text-center-xs">                
          
        </div>
      </div>
    </footer>
   
  </div>
</div>
   
<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Liệt kê đơn hàng
    </div>
    <div class="row w3-res-tb">
     
     
    
    </div>
    <div class="table-responsive">
                      <?php
                            $message = Session::get('message');
                            if($message){
                                echo '<span class="text-alert">'.$message.'</span>';
                                Session::put('message',null);
                            }
                            ?>
      <table class="table table-striped b-t b-light">
        <thead>
          <tr>
            <th>Mã đơn hàng</th>
            <th>Tên trò chơi</th>
            <th>Giá tiền</th>
            <th>Số lượng</th>
          </tr>
        </thead>
        <tbody>
          @foreach($cart as $key => $cart)
          <tr>
            <td>{{ $cart->order_id}}</td>
            <td>{{ $cart->product_name }}</td>
            <td>{{number_format($cart->product_price,0,',','.')}}đ</td>
            <td>{{ $cart->product_quantity}}</td>
            </tr>
          @endforeach
           
        </tbody>
      </table>
    </div>
    <footer class="panel-footer">
      <div class="row">
        
        <div class="col-sm-5 text-center">
         
        </div>
        <div class="col-sm-7 text-right text-center-xs">                
          
        </div>
      </div>
    </footer>
   
  </div>
</div>
@endsection