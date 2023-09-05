@extends('layout')
@section('content')

<div class="container" style="width: 1400px;">
<div class="row" style="margin-top: 50px;">
<div class="col-md-8" style="float:none;margin:0 auto;">
<form method="POST" role="form" action="{{URL::to('/recharge/')}}" enctype="multipart/form-data">
{{ csrf_field() }}
<?php
     $message = Session::get('message');
    if($message){
    echo '<h3 class="text-alert">'.$message.'</h3>';
    Session::put('message',null);
    }
 ?>
 <br>
<div class="form-group">
<label>Thẻ cào:</label>
<select class="form-control" name="card_name" >
    @foreach($card_name as $key => $card_name)
    <option value="{{$card_name->card_name}}"> {{$card_name->card_name}}    </option>
    @endforeach
</select>
</div>
<div class="form-group">
<label>Mệnh giá:</label>
<select class="form-control" name="card">
@foreach($card as $key => $card)
<option value="{{$card->total}}"> {{number_format($card->money,0,',','.').' '.'VNĐ'}}  + {{number_format($card->extra,0,',','.').' '.'VNĐ'}} Khuyến mãi </option>

@endforeach
</select>
</div>

<div class="form-group">
<label>Số seri:</label>
<input type="text" class="form-control" name="seri">
</div>
<div class="form-group">
<label>Mã thẻ:</label>
<input type="text" class="form-control" name="pin">
</div>
<div class="form-group">
</div>
<div class="form-group">
<button type="submit" class="btn btn-success btn-block"  name="submit">NẠP THẺ</button>
</div>
</form>
</div>
</div>
</div>



	</section><!--/form-->

@endsection