@extends('admin_layout')
@section('admin_content')
<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Chi tiết trò chơi
    </div>
    <div class="row w3-res-tb">
     
     
    
    </div>
    <div class="table-responsive">
                      
      <table class="table table-striped b-t b-light">
        <thead>
          <tr>
            <th>Tên trò chơi</th>
            <th>Giá tiền</th>
            <th>Số lượng</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>{{ $product->product_name}}</td>
            <td>{{ $product->product_price }}</td>
            <td>{{ $product->product_quantity }}</td>
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
      Chi tiết bình luận
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
            <th>Nội dung</th>
            <th>Thời gian</th>
            <th></th>
          </tr>
        </thead>
        <tbody>
          @foreach($comment as $key => $comment)
          <tr>
            <td>{{ $comment->customer_name}}</td>
            <td>{{ $comment->comment }}</td>
            <td>{{ $comment->time }}</td>
            <td>
            <a onclick="return confirm('Bạn có chắc là muốn xóa bình luận này không?')" href="{{URL::to('/delete-comment/'.$comment->comment_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-times text-danger text"></i>
              </a>
            </td>
            </tr>
          @endforeach
          
        </tbody>
      </table>
    </div>
    <footer class="panel-footer">
      <div class="row">
        
        <div class="col-sm-5 text-center">
          <small class="text-muted inline m-t-sm m-b-sm">showing 20-30 of 50 items</small>
        </div>
        <div class="col-sm-7 text-right text-center-xs">                
          
        </div>
      </div>
    </footer>
  </div>
</div>
@endsection