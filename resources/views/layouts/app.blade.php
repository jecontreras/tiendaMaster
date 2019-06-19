<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="generator" content="designingsolutions.com.co">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
    <link rel="shortcut icon" href="{{ asset('assets/images/logo-web-368x154.png') }}" type="image/x-icon">
    <meta name="description" content="{{setting('site.description')}}">
    <meta name="image" content="storage/{{setting('site.logo')}}">
    <title>{{setting('site.title')}}</title>
    <link  rel="icon"   href="favicon.png" type="image/png">
    <link rel="stylesheet" href="{{ asset('assets/web/assets/mobirise-icons/mobirise-icons.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/bootstrap/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/bootstrap/css/bootstrap-grid.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/bootstrap/css/bootstrap-reboot.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/dropdown/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/socicon/css/styles.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/theme/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/gallery/style.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/mobirise/css/mbr-additional.css?2=2') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('assets/css/estilo.css') }}">
    <!-- <link rel="stylesheet" href="fonts.css"> -->
    <style type="text/css">
      .shopItemsModal_wraper{
        left: 0px;
      }
    </style>
    <style type="text/css">
         .popover-cart{
             top: 1em;
             margin-left: auto;
             z-index: 999999;
             position: fixed;
             bottom: 0;
             right: 0;
             width: 250px;
             height: fit-content;
             color: #f6f6f6;
             background-color: #ff6f00;
             border-color: #c3e6cb;
             text-align: center;
             border-radius: 5px;
             margin-right: 10px;
             padding: 20px;
             display: none;
         }
         .popover-cart.success a{
            font-weight: 600;
            color: white;
            text-decoration: underline;
            cursor: pointer;
         }
         .popover-cart.error{
             color: #f6f6f6;
             background-color: red;
             border-color: red;
             text-align: center;
             border-radius: 5px;
             margin-right: 10px;
             padding: 20px;
             display: none;
         }
         .go-to-cart{
             border-radius: 100%;
             color: #f6f6f6 !important;
             background-color: #ff6f00;
             border-color: transparent;
             margin: 2%;
             z-index: 999999;
             position: fixed;
             top: 85%;
             height: 50px;
             right: 0;
             font-size: 1.5rem !important;
             width: 50px;
             padding: 10px 12px;
             @if(isset($cart)) @if($cart == 0) display: none; @endif @endif
         }
         .mbr-gallery-item:hover .btnDescription{
             display:none;

         }
         @media only screen and (max-width: 434px) {
          .barraRight, .barraLeft {
                float: inherit !important;
                margin: auto !important;
          }
        }
        .mobile.carousel-item.slider-fullscreen-image {
                display: none;
          }
        @media only screen and (max-width: 991px) {
           .mobile.carousel-item.slider-fullscreen-image {
                display: block;
          }
          .desktop.carousel-item.slider-fullscreen-image {
                display: none;
          }
        }
      </style>
  @yield('css')
</head>
<body>
  @extends('socialmedia.app')
  @if (session('status'))
          <div class="alert alert-success" style="    margin-top: 17vh;margin-bottom: -10vh;">
              {{ session('status') }}
          </div>
      @endif

      @if (session('suscribe'))
          <div class="alert alert-success" style=" background-color: #9e0fa0 !important; color: white !important;     margin-top: 17vh;margin-bottom: -10vh;">
              {{ session('suscribe') }}
          </div>
      @endif

      @if (session('suscripto'))
          <div class="alert alert-success" style=" background-color: #9e0fa0 !important; color: white !important;     margin-top: 17vh;margin-bottom: -10vh;">
              {{ session('suscripto') }}
          </div>
      @endif
    <a href="/cart" class="go-to-cart">
        <span class="contador" style="@if(Cart::count() == 0)display:none;@endif position: absolute;color: white;border-radius: 35px;width: 25px;font-size: 1rem;padding-left: 10px;padding-top: 2px;font-weight: bold;margin-left: 14px;margin-top: -10px;"> {{ Cart::count() }}</span>
         <span class="mbri-shopping-cart"></span>
      </a>
      <span class="popover-cart success">
            <div>Producto agregado correctamente</div>
            <a href="/cart">Pagar</a>
      </span>
      <span class="popover-cart error">
            <div>OPS, intentelo nuevamente</div>
      </span>
      @if(!Auth::guest())
    @else
    @endif
  <!-- Header -->
  <section class="menu popup-btn-cards cid-rf5Gg8AsWK" once="menu" id="menu2-0" data-sortbtn="btn-primary" style="height: 193.5px;">
    <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
        <div class="mbr-overlay" style="opacity: 0.9;"></div>

      <a class="full-link" href="{{setting('url.descuento')}}">
        <div class="card-wrapper mbr-fonts-style mbr-white display-7" style="text-align: center;width: 100%;padding: .5rem 0;">{{setting('site.barra_superior')}}</div>
      </a>
      <div class="full-link" style="background-color: #d16512;text-align:center;">
        <div class="card-wrapper mbr-fonts-style mbr-white display-7" style="text-align: left;display: inline-block;    padding:1rem 0 0 0;padding-left: 1rem;">
            <form action="/resultados" method="POST" class="mbr-form">
              {{csrf_field()}}
                <input @if(isset($search)) value="{{$search}}" @endif type="search" name="search" class="field special-form display-7" placeholder="Buscar" style="font-size: .9rem;height: 2rem;border: 0px solid;border-radius: 5px;width: 400px;margin-right: .6rem;padding: .5rem 1rem; max-width:70vw;">
                <button class="btn btn-form btn-primary display-4" style="    margin-left: -17px;height: 2rem;border: 2px solid white;width: 50px;z-index: 9999999;border-color: white !important;padding: 0;padding-left: 6px;margin-bottom: 0;margin-top: 0;">
                  <span class="p-2 mbr-iconfont mbri-search" style="    padding: 0 !important;font-size: 1rem;"></span>
                </button>

            </form>
        </div>
        <div class="barraRight card-wrapper  mbr-fonts-style mbr-white display-7" style=" margin-right: 50px; display: inline-block; float: right;padding: .5rem 0;">
          <div class="icons-menu" style="display: -webkit-flex;padding-left: 1rem;text-align: center; font-size: .9rem;height: 2.5rem;border: 0px solid;border-radius: 5px;margin-right: .6rem;padding: .5rem 1rem;">
              <div class="soc-item">
                  @if(!Auth::guest())

              <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true">
  <li class="nav-item dropdown">
  <a class="nav-link link text-white dropdown-toggle display-4" href="#!" data-toggle="dropdown-submenu" aria-expanded="false">
    {{auth()->user()->name}}!</a>
   <div class="dropdown-menu">
    <a class="text-white dropdown-item display-4"  href="/dashboard">Mis Pedidos</a>
    <a class="text-white dropdown-item display-4"  href="/profile">Perfil</a>
    <a class="text-white dropdown-item display-4"  href="/logout">Salir</a>
  </div>
</li>
</ul>

            @else

              <a class="nav-link link text-white display-4" href="/ingresar">
                                Ingresar</a>

            @endif
                <!--a href="/ingresar">
                  <span class="mbr-iconfont mbri-login" style="color: rgb(255, 255, 255); fill: rgb(255, 255, 255);"></span-->
                </a>
              </div>
              <div class="soc-item">
                <a href="/cart">  <span class="contador" style="@if(Cart::count() == 0)display:none;@endif position: absolute;color: white;border-radius: 35px;width: 25px;font-size: 1rem;padding-left: 10px;padding-top: 2px;font-weight: bold;margin-left: 14px;margin-top: -10px;"> {{ Cart::count() }}</span>
                  <span class="p-2 mbr-iconfont mbri-shopping-cart" style="color: rgb(255, 255, 255); fill: rgb(255, 255, 255);"></span>
                </a>
              </div>



            </div>
        </div>

        <!-- <div class="barraLeft card-wrapper  mbr-fonts-style mbr-white display-7" style="margin-right: 50px; display: inline-block; float: left;padding: .5rem 0;">
          <div class="icons-menu" style="display: -webkit-flex;padding-left: 1rem;text-align: center; font-size: .9rem;height: 2.5rem;border: 0px solid;border-radius: 5px;margin-right: .6rem;padding: .5rem 1rem;    margin-left: 1vw;">
              <div class="soc-item">
                <a href="https://api.whatsapp.com/send?phone=573005000453" target="_blank">
                  <span class="mbr-iconfont socicon-whatsapp socicon" style="color: rgb(255, 255, 255); fill: rgb(255, 255, 255);"></span>
                </a>
              </div>
              <div class="soc-item">
                <a href="https://www.facebook.com/expressnutrition.co/" target="_blank">
                  <span class="mbr-iconfont socicon-facebook socicon" style="color: rgb(255, 255, 255); fill: rgb(255, 255, 255);"></span>
                </a>
              </div>
              <div class="soc-item">
                <a href="https://www.instagram.com/expressnutrition.co/" target="_blank">
                  <span class="mbr-iconfont socicon-instagram socicon" style="color: rgb(255, 255, 255); fill: rgb(255, 255, 255);"></span>
                </a>
              </div>

            </div>
        </div> -->
      </div>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">

        <div class="left-menu">
          <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true"><li class="nav-item">
                  <a class="nav-link link text-white display-4" href="/">TIENDA</a>
              </li>
              <li class="nav-item dropdown">
                  <a class="nav-link link dropdown-toggle text-white display-4" href="#!" data-toggle="dropdown-submenu" aria-expanded="false">
                       PRODUCTOS</a>
                       <div class="dropdown-menu">

                         @foreach (App\Brandscategory::where('show_on_front', 1)->get() as $category)
                          <a class="text-white dropdown-item display-4"  href="{{ url('/category/'.$category->slug.'') }}">{{ $category->name }}</a>
                        @endforeach

                        </div>
              </li><li class="nav-item dropdown">
                <a class="nav-link link text-white dropdown-toggle display-4" href="#!" data-toggle="dropdown-submenu" aria-expanded="false">
                       MARCAS</a>
                       <div class="dropdown-menu"><div class="dropdown">
                        <a class="text-white dropdown-item dropdown-toggle display-4" href="#!" data-toggle="dropdown-submenu" aria-expanded="false">Nacional</a>
                        <div class="dropdown-menu dropdown-submenu">

                          @foreach (App\Brand::all() as $brand)
                          @if($brand->global_name == "nacional")
                            <a class="text-white dropdown-item display-4"  href="{{ url('/brand/'.$brand->slug.'') }}">{{ $brand->name }}</a>
                          @endif
                          @endforeach

                        </div></div><div class="dropdown"><a class="text-white dropdown-item dropdown-toggle display-4" href="#!" aria-expanded="false" data-toggle="dropdown-submenu">Importado</a>
                          <div class="dropdown-menu dropdown-submenu">

                            @foreach (App\Brand::all() as $brand)
                          @if($brand->global_name == "option2")
                            <a class="text-white dropdown-item display-4"  href="{{ url('/brand/'.$brand->slug.'') }}">{{ $brand->name }}</a>
                          @endif
                          @endforeach

                            <div class="dropdown"><a class="text-white dropdown-item dropdown-toggle display-4" href="#!" aria-expanded="false" data-toggle="dropdown-submenu">Otras Marcas</a><div class="dropdown-menu dropdown-submenu" style="top: -760%;"><a class="text-white dropdown-item display-4" href="#!" aria-expanded="true">Now Sport</a><a class="text-white dropdown-item display-4" href="#!" aria-expanded="true">Nature´s Best</a><a class="text-white dropdown-item display-4" href="#!" aria-expanded="true">MHP</a><a class="text-white dropdown-item display-4" href="#!" aria-expanded="true">Ronnie Coleman</a><a class="text-white dropdown-item display-4" href="#!" aria-expanded="true">Beast Sport Nutrition</a><a class="text-white dropdown-item display-4" href="#!" aria-expanded="true">Evolucion Nutrition</a><a class="text-white dropdown-item display-4" href="#!" aria-expanded="true">RSP</a><a class="text-white dropdown-item display-4" href="#!" aria-expanded="true">GAT                                                 </a></div></div></div></div></div></li><li class="nav-item"><a class="nav-link link text-white display-4" href="/kits">
                       COMBOS EXPRESS</a></li></ul>
        </div>

        <div class="brand-container">
          <div class="navbar-brand">
              <span class="navbar-logo">
                  <a href="/">
                      <img src="{{ asset('assets/images/logo-web-368x154.png') }}" alt="Mobirise" title="" style="height: 5rem;">
                  </a>
              </span>

          </div>
        </div>

        <div class="right-menu">
          <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true"><li class="nav-item">
                <a class="nav-link link text-white display-4" href="/articles">
                    ARTICULOS NUTRITION</a>
            </li>
            <li class="nav-item">
                <a class="nav-link link text-white display-4" href="/faq">
                    PREGUNTAS FRECUENTES</a>
            </li><li class="nav-item"><a class="nav-link link text-white display-4" href="/contact">
                    CONTACTO</a></li></ul>
        </div>
      </div>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
          </button>
    </nav>
</section>
  <!-- Header End -->

  @yield('content')


<section class="cid-rf5VEjQFOR" id="footer3-a" data-sortbtn="btn-primary">




    <div class="container-fluid">
        <div class="row align-center justify-content-center">
            <div class="col-lg-6 col-xl-4">
                <div class="follow-section">
                    <div class="follow-heading mbr-fonts-style align-left display-7">
                        Seguir
                    </div>
                    <div class="social-media pb-3 align-left">
                        <ul>
                            <li>
                                <a class="icon-transition" href="https://www.facebook.com/expressnutrition.co/" target="_blank">
                                    <span class="mbr-iconfont socicon-facebook socicon"></span>
                                </a>
                            </li>
                            <li>
                                <a class="icon-transition" href="https://www.instagram.com/expressnutrition.co/" target="_blank">
                                    <span class="mbr-iconfont socicon-instagram socicon"></span>
                                </a>
                            </li>
                            <li>
                                <a class="icon-transition" href="https://api.whatsapp.com/send?phone=573005000453" target="_blank">
                                    <span class="mbr-iconfont socicon-whatsapp socicon"></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="row column-menu">
                    <div class="col-xl-5 col-md-6">
                        <ul class="firstColumn align-left mbr-white mbr-fonts-style display-7">
                            <li><a href="https://www.expressnutrition.co/category/Proteinas" class="text-white">Proteinas</a></li>
                            <li><a href="https://www.expressnutrition.co/category/Quemadores" class="text-white">Quemadores de Grasa</a></li>
                            <li><a href="https://www.expressnutrition.co/category/Creatina" class="text-white">Creatininas</a></li>
                            <li><a href="https://www.expressnutrition.co/category/Pre-entreno" class="text-white">Pre Entrenos</a></li>
                        </ul>
                    </div>
                    <div class="col-xl-5 col-md-6">
                        <ul class="secondColumn align-left mbr-white mbr-fonts-style display-7">
                            <li><a href="https://www.expressnutrition.co/category/ganadores-de-peso" class="text-white">Ganadores de Peso</a></li>
                            <li><a href="https://www.expressnutrition.co/category/pro-hormonales" class="text-white">Pro Hormonales</a></li>
                            <li><a href="https://www.expressnutrition.co/category/aminos-bcaa" class="text-white">Aminos / Bcaa's</a></li>
                            <li><a href="https://www.expressnutrition.co/category/multivitaminicos" class="text-white">Multivitamínicos</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xl-6 form-section">
                <ul class="mbr-list list-inline align-left">



                <li class="list-inline-item mbr-fonts-style display-7">
                        <a href="#!" class="text-white">Nuevas llegadas</a>
                    </li><li class="list-inline-item mbr-fonts-style display-7">
                        <a href="#!" class="text-white">Descuentos</a>
                    </li><li class="list-inline-item mbr-fonts-style display-7">
                        <a href="#!" class="text-white">Contacta con nosotros</a>
                    </li></ul>
                <div class="input-form">
                    <span class="mbr-fonts-style form-text display-7">
                      Suscríbete para recibir las últimas novedades sobre ventas, nuevos lanzamientos y más ...
                    </span>
                    <div class="form1" data-form-type="formoid">
                        <div data-form-alert="" hidden="">
                            ¡Gracias por completar el formulario!
                        </div>
                        <form class="mbr-form suscribir" action="/" method="post" data-form-title="My Mobirise Form"><input type="hidden" name="email" data-form-email="true" value="gIm+PcRsIiTQKPt5ljAcrRful56SYrjCz8Zod9fhNwlXs/Z9WJaYtZvwNE0e/xvrrZPVBC7xQ+XDfW5r47fzCUDIs265BTCh4xD6h+Maam2Ek6kFaO4C6AeGLsfoXV8A">
                            <div class="input-wrap" data-for="email">
                                <input type="text" class="field special-form display-7" name="email" data-form-field="E-mail" required="" id="email-footer3-a">
                            </div>
                            <span class="input-group-btn"><button href="#!" type="submit" class="btn btn-form btn-primary display-4">Subscribirse</button></span>
                        </form>
                    </div>
                </div>
                <h3 class="subtext-1 mbr-fonts-style pb-3 display-7">Diseñado por&nbsp;<a href="http://designingsolutions.com.co" class="text-secondary" target="_blank">Designing Solutions</a></h3>
                <h3 class="subtext-2 mbr-fonts-style display-7">
                    Sistemas de pago soportados
                </h3>
                <ul class="card-support align-left">
                    <li>
                        <img src="{{ asset('assets/images/visa.png') }}" height="30" alt="Visa">
                    </li>
                    <li>
                        <img src="{{ asset('assets/images/master-card.png') }}" height="30" alt="Master Card">
                    </li>
                    <li>
                        <img src="{{ asset('assets/images/american-express.png') }}" height="30" alt="American Express">
                    </li>
                    <li>
                        <img src="{{ asset('assets/images/codensa.png') }}" height="30" alt="PayPal">
                    </li>

                    <li>
                        <img src="{{ asset('assets/images/efecty.png') }}" height="30" alt="Discover">
                    </li>

                    <li>
                        <img src="{{ asset('assets/images/baloto.jpg') }}" height="30" alt="Discover">
                    </li>

                    <li>
                        <img src="{{ asset('assets/images/bancolombia.jpg') }}" height="30" alt="Discover">
                    </li>




                </ul>
            </div>
        </div>
    </div>
</section>

  <script src="{{ asset('assets/script/script.js') }}"></script>
  <script src="{{ asset('assets/web/assets/jquery/jquery.min.js') }}"></script>
  <script src="{{ asset('assets/popper/popper.min.js') }}"></script>
  <script src="{{ asset('assets/bootstrap/js/bootstrap.min.js') }}"></script>
  <script src="{{ asset('assets/smoothscroll/smooth-scroll.js') }}"></script>
  <script src="{{ asset('assets/dropdown/js/script.min.js') }}"></script>
  <script src="{{ asset('assets/touchswipe/jquery.touch-swipe.min.js') }}"></script>
  <script src="{{ asset('assets/ytplayer/jquery.mb.ytplayer.min.js') }}"></script>
  <script src="{{ asset('assets/vimeoplayer/jquery.mb.vimeo_player.js') }}"></script>
  <script src="{{ asset('assets/bootstrapcarouselswipe/bootstrap-carousel-swipe.js') }}"></script>
  <script src="{{ asset('assets/mobirise-shop/script.js') }}"></script>
  <script src="{{ asset('assets/theme/js/script.js') }}"></script>
  <script src="{{ asset('assets/gallery/player.min.js') }}"></script>
  <script src="{{ asset('assets/gallery/script.js') }}"></script>
  <script src="{{ asset('assets/slidervideo/script.js') }}"></script>
  <script type="text/javascript">
         $(function() {
          $('form.suscribir').each(function() {
              $(this).find('input').keypress(function(e) {
                  // Enter pressed?
                  if(e.which == 10 || e.which == 13) {
                      this.form.submit();
                  }
              });

              $(this).find('input[type=submit]').hide();
          });
         });
      </script>
            <script type="text/javascript">
          function addProduct(id){
            //alert(id);
            $.get('/addtocart/' + id, function(response){

               $(".shopItemsModal_wraper").hide();

            }).always(function(response) {
               seePopover( response );
           });
          }

          function seePopover(result){
             if (result == "true") {
                  $(".popover-cart.success").toggle();
                   setTimeout(function(){
                        $(".popover-cart.success").toggle();
                   }, 3000);
                   $(".contador").text( parseInt($(".contador").text()) + 1);
                    $(".contador").show();
                    $(".go-to-cart").show();
             }else{
                debugger;
                $(".popover-cart.error").toggle();
                setTimeout(function(){
                     $(".popover-cart.error").toggle();
                }, 3000);
             }
          }
      </script>
  @yield('js')
  <!-- Modal HTML embedded directly into document -->
<div id="ex1" class="modal"> <div class="modal-body">
  <p>Para pedidos con pago contra entrega solo en Bogotà.</p>
  <a href="#!" onclick="$('#ex1').modal('toggle')" class="btn btn-form btn-primary display-4" rel="modal:close">Close</a></div>
</div>
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">

        <h4 class="modal-title">Información:</h4>
         <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <p>Para pedidos con pago contra entrega solo en Bogotà.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-form btn-primary display-4" data-dismiss="modal" onclick="window.location.href='/contra-entrega';">Aceptar</button>
      </div>
    </div>

  </div>
</div>
</body>
</html>
