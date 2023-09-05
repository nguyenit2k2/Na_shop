<style>

@import url('https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap');

.logo{
    font-size: 60px;
    font-weight: bold;
    font-family: 'Press Start 2P', cursive;
}

.menu ul li {
    margin-left:10px ;
}
.menu ul li a{
   padding: 5px;
   font-size: 17px;
   font-weight: 700;  
}
.contact{
    position: relative;
    padding: 10px 10px 5px 50px ;
    border: none;
    border-radius: 10%; 
    font-size: 20px; 
    
}

.contact i {
    position: absolute;
    font-size: 40px;    
    left: 5px;
    transform: translateY(-18%);
   
    
}
.pages h1{
    font-family: 'Fredericka the Great', cursive;
}
.pages img{
    width: 100vw;
    height: 100vh;



}
/*////////////////////////////header cho từng phần //////////////////// */
.header{
 text-align: center;
 margin-top: 5rem;
}
.header hr{
    position: relative;
    margin-top: 0;
       height: 10px;
       background-color: black;
       width: 25%;
}
/*//////////////////////// phần dịch vụ ///////////////////////////*/
.service .row{
    margin-top: 10px;
    border: 2px solid gray;
    border-radius: 5%;
    font-size: 26px;
}
.content{
    background-color: rgb(139, 139, 139);
    color: azure;
    padding: 20px;
    text-align: center;
    border-radius: 5%;
}
.content i {
    font-size: 50px;
}
.foot{
    background-color: black;
}
.container{
    border: none;
}
/*/////////////////////////công ty đồng hành/////////////////*/
.companies .row{
  border: none;
}
.companies img{
    margin: 10px;
    width: 200px;
    height: 100px;
}

.btn-header{
    position: fixed;
    right: 0;
    bottom: 5rem;
    border: none;
    border-radius: 50%;
    background-color: rgb(236, 236, 193);

}
.btn-header i{
    font-size: 30px;
}
.member-btn{
    position: absolute;
    width: 10%;
    left: 50%;
    top: 90%;
    transform: translateX(-44%);

    
}
.member-btn button{
    background-color: gray;
}
.member-content{
    position: relative;
}
.member-content p{
   border: 5rem solid #212529;
   border-bottom: 10rem solid #212529 ;
   padding: 2rem 2rem 5rem 1rem;
   font-size: 20px;
   z-index: 1;
}
.member-content img{
    position: absolute;
   width: 8rem;
   top:15rem;
   left: 50vw;
   transform: translateX(-50%);
   border: 0.5rem solid #212529;
   border-radius: 50%;
}



/*//////////////////////////reposive cho màn hình nhỏ ////////////////////////*/
@media (max-width: 575.98px) {
    .contact{
        display: none;
    }
    .row {
        flex-direction: column;
        font-size: 18px;
    }
    .card-body{
          font-size: 18px;
    }
  }
/*//////////////////////////reposive cho màn hình trung ////////////////////////*/
  @media (max-width: 768.98px) { 
    .row {
        font-size: 23px;
    } 
  }

</style>
<!doctype html>
<html lang="en">
  <head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="style.css">
    <link href="src={{asset('public/frontend/css/all.css')}}" rel="stylesheet">


    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
      
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand logo" href="#">NaShop</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  
    <div class="collapse navbar-collapse menu" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link" href="#"><i class="fas fa-shopping-cart"></i>Shop</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#services"><i class="fab fa-servicestack"></i>Dịch vụ cung cấp</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#quesion"><i class="far fa-question-circle"></i>Câu hỏi thường gặp</a>
          </li>
       
       
      </ul>
    
    </div>
    <button class="contact">
      <i class="fas fa-phone-square-alt"></i>
      <i class=""></i>
      0987101405
  </button>
  </nav>
  <!--/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                              THE  CAROUSEL SESSTION    
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
  <div id="carouselExampleIndicators" class="carousel slide  pages" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img class="d-block w-100" src="{{asset('public/frontend/images/mn1.jpg')}}" alt="First slide">
        <div class="carousel-caption d-none d-md-block">
            <h1 style="font-weight: 900;">CUNG CẤP ACCOUNT</h1>
            
          </div>
      </div>
      <div class="carousel-item">
        <img class="d-block w-100" src="{{asset('public/frontend/images/mn2.png')}}" alt="Second slide">
        <div class="carousel-caption d-none d-md-block">
            <h1 style="font-weight: 900;">UY TÍN</h1>
            
          </div>
      </div>
      <div class="carousel-item">
        <img class="d-block w-100" src="{{asset('public/frontend/images/mn3.jpg')}}" alt="Third slide">
        <div class="carousel-caption d-none d-md-block">
            <h1 style="font-weight: 900;">PHONG PHÚ</h1>
            
          </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
    <path fill="#212529" fill-opacity="1" d="M0,96L48,96C96,96,192,96,288,117.3C384,139,480,181,576,202.7C672,224,768,224,864,240C960,256,1056,288,1152,282.7C1248,277,1344,235,1392,213.3L1440,192L1440,0L1392,0C1344,0,1248,0,1152,0C1056,0,960,0,864,0C768,0,672,0,576,0C480,0,384,0,288,0C192,0,96,0,48,0L0,0Z"></path>
  </svg>
  <!--/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                              THE  COMPANIES SESSTION    
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
<div class="header" >
  <h1 >Đối tác đồng hành</h1>
  <hr>
  <div class="container companies">
    <div class="row">
      <div class="col">
        <img src="./img/game/campany-1.png" class="img-fluid" alt="Responsive image">
      </div>
      <div class="col">
        <img src="./img/game/campany-2.png" class="img-fluid" alt="Responsive image">
      </div>
      <div class="col">
        <img src="./img/game/campany-3.png" class="img-fluid" alt="Responsive image">
      </div>
    </div>
    <div class="row">
      <div class="col">
        <img src="./img/game/campany-4.png" class="img-fluid" alt="Responsive image">
      </div>
      <div class="col">
        <img src="./img/game/campany-5.png" class="img-fluid" alt="Responsive image">
      </div>
      <div class="col">
        <img src="./img/game/campany-6.png" class="img-fluid" alt="Responsive image">
      </div>
    </div>
  </div>

</div>
   <!--/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                              THE  SERVICE SESSTION    
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
         <div class="header" id="services">
            <h1 >Dịch vụ cung cấp</h1>
            <hr>
        
         </div>
<div class="container service" >
    <div class="row">
      <div class="col">
        <img src="./img/services/service-1.png" class="img-fluid" alt="Responsive image">
      </div>
      <div class="col content">
        <i class="fab fa-shopify"></i>
      <h2>Cung cấp tài khoản</h2>
      <p>Cung cấp các tài khoản trò chơi của hơn 200++ trò chơi khác nhau
          với đầu đủ mức giá phù hợp cho từng nhu cầu của người mua,tài khoản được
          đảm bảo về độ bảo mật .
      </p>
      </div>
    </div>
    <div class="row">
      <div class="col content">
        <i class="fas fa-search-dollar"></i>
        <h2>Thu mua tài khoản</h2>
        <p>Người dùng có thể kiếm tiền bằng cách bán lại tài khoản của mình cho web.
            Từ đó bạn có thể kiếm thêm một vài thu nhập nhỏ từ chính công sức của bạn.
        </p>
      </div>
      <div class="col">
        <img src="./img/services/service-2.png" class="img-fluid" alt="Responsive image">
      </div>
    </div>
    
      <div class="row">
        <div class="col">
            <img src="./img/services/service-4.png" class="img-fluid" alt="Responsive image">
        </div>
        <div class="col content">
          <i class="fas fa-birthday-cake"></i>
          <h2>Tổ chức sự kiện</h2>
          <p>Bạn có thể tham gia các sự kiện,chương trìn kuyến mại mà trang web tổ chức
              .Bạn có thể thử vận may với các trò chơi và nhận về những phần thưởng cho bản thân.
          </p>
        </div>
      </div>
      <div class="row">
        <div class="col  content">
          <i class="fas fa-headset"></i>
           <h2>Tư vấn </h2>
           <p>Tư vấn người dùng 24/24 sẵn sàng giải đáp mọi thắt mắt của bạn . <br>
               -hỗ trợ trong quá trình mua. <br>
               -giải quyết các vấn đề về sản phẩm.
               

           </p>
        </div>
        <div class="col">
            <img src="./img/services/service-5.png" class="img-fluid" alt="Responsive image">
        </div>
      </div>
  </div>
 <!--/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                              THE  MEMBER SESSTION    
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
<div class="header" id="quesion">
  <h1 >Thành Viên</h1>
  <hr>
 
</div>
  <div id="carouselExampleControls" class="carousel slide "  data-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active member-content">
        
        <p class="text-justify">Ambitioni dedisse scripsisse iudicaretur. Cras mattis iudicium purus sit amet fermentum. Donec sed odio operae, eu vulputate felis rhoncus. Praeterea iter est quasdam res quas ex communi. At nos hinc posthac, sitientis piros Afros. 
          Petierunt uti sibi concilium totius Galliae in diem certam indicere. Cras mattis iudicium purus sit amet fermentum.</p>
          
              <img class="img-thumbnail" src="./img/member/member-1.jpg" alt="First slide">
            
      </div>
     
      <div class="carousel-item member-content">
        <p class="text-justify">Ambitioni dedisse scripsisse iudicaretur. Cras mattis iudicium purus sit amet fermentum. Donec sed odio operae, eu vulputate felis rhoncus. Praeterea iter est quasdam res quas ex communi. At nos hinc posthac, sitientis piros Afros. 
          Petierunt uti sibi concilium totius Galliae in diem certam indicere. Cras mattis iudicium purus sit amet fermentum.</p>
        
      
            <img class="img-thumbnail" src="./img/member/member-2.jpg" alt="Second slide">
         
      </div>

     
    </div>
    <div class="member-btn">
      
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
          <button>
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
          </button>
        </a>
     
      
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
          <button>
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
          </button>
        </a>
      
     </div>
     
  </div>
  

 <!--/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                              THE  QUESION SESSTION    
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
<div class="header" id="quesion">
    <h1 >Câu hỏi thường gặp</h1>
    <hr>

 </div>
<div id="accordion">
    <div class="card">
      <div class="card-header" id="headingOne">
        <h5 class="mb-0">
          <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Mua sản phẩm như thế nào?
          </button>
        </h5>
      </div>
  
      <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
        <div class="card-body">
          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header" id="headingTwo">
        <h5 class="mb-0">
          <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Những hình thức mà tôi có thể dùng để thanh toán?
          </button>
        </h5>
      </div>
      <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
        <div class="card-body">
          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header" id="headingThree">
        <h5 class="mb-0">
          <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
             Làm thế nào để liên hệ để bán sản phẩm?
          </button>
        </h5>
      </div>
      <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
        <div class="card-body">
          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
        </div>
      </div>
    </div>
  </div>
  <!--/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                              THE  FOOT SESSTION    
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
   <!-- Footer -->
<footer class="text-center text-lg-start bg-dark text-muted mt-5">
    <!-- Section: Social media -->
    <section
      class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom"
    >
      <!-- Left -->
      <div class="me-5 d-none d-lg-block">
        <span>Get connected with us on social networks:</span>
      </div>
      <!-- Left -->
  
      <!-- Right -->
      <div>
        <a href="" class="me-4 text-reset">
          <i class="fab fa-facebook-f"></i>
        </a>
        <a href="" class="me-4 text-reset">
          <i class="fab fa-twitter"></i>
        </a>
        <a href="" class="me-4 text-reset">
          <i class="fab fa-google"></i>
        </a>
        <a href="" class="me-4 text-reset">
          <i class="fab fa-instagram"></i>
        </a>
        <a href="" class="me-4 text-reset">
          <i class="fab fa-linkedin"></i>
        </a>
        <a href="" class="me-4 text-reset">
          <i class="fab fa-github"></i>
        </a>
      </div>
      <!-- Right -->
    </section>
    <!-- Section: Social media -->
  
    <!-- Section: Links  -->
    <section class="">
      <div class="container text-center text-md-start mt-5">
        <!-- Grid row -->
        <div class="row mt-3">
          <!-- Grid column -->
          <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
            <!-- Content -->
            <h6 class="text-uppercase fw-bold mb-4">
              <i class="fas fa-gem me-3"></i>NaShop
            </h6>
            <img src="./img/City buildings_Flatline.png" alt="congty" class="img-thumbnail">
          </div>
          <!-- Grid column -->
  
          <!-- Grid column -->
          <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold mb-4">
              Products
            </h6>
            <p>
              <a href="#!" class="text-reset">Angular</a>
            </p>
            <p>
              <a href="#!" class="text-reset">React</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Vue</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Laravel</a>
            </p>
          </div>
          <!-- Grid column -->
  
          <!-- Grid column -->
          <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold mb-4">
              Useful links
            </h6>
            <p>
              <a href="#!" class="text-reset">Pricing</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Settings</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Orders</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Help</a>
            </p>
          </div>
          <!-- Grid column -->
  
          <!-- Grid column -->
          <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold mb-4">
              Contact
            </h6>
            <p><i class="fas fa-home me-3"></i> Việt Nam</p>
            <p>
              <i class="fas fa-envelope me-3"></i>
              info@example.com
            </p>
           
          </div>
          <!-- Grid column -->
        </div>
        <!-- Grid row -->
      </div>
    </section>
    <!-- Section: Links  -->
  
    <!-- Copyright -->
    <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
      © 2021 Copyright:
     shopbanacgame
    </div>
    <!-- Copyright -->
  </footer>
  <!-- Footer -->
  </div>
<button class="btn-header">
  <a href="#"><i class="fas fa-arrow-up"></i></a>
  
</button>
</html>