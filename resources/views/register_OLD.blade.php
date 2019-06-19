@extends('layouts.app')
@section('css')
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
             background-color: #e842f4;
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
             background-color: #e842f4;
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
             @if($cart == 0) display: none; @endif
         }
         .cid-qyY9JUAdBE {
  padding-top: 90px;
  padding-bottom: 90px;
  background-color: #ffffff;
}
.cid-qyY9JUAdBE .container-fluid {
  padding: 0 3rem;
}
.cid-qyY9JUAdBE .mbr-section-title {
  margin-bottom: 1.5em;
}
.cid-qyY9JUAdBE .input-main {
  width: 99.6%;
  margin-left: .1em;
  justify-content: center;
}
.cid-qyY9JUAdBE .input-main label {
  color: #000000;
}
.cid-qyY9JUAdBE .form-1 {
  margin: 0 1em;
  padding: 0;
}
.cid-qyY9JUAdBE .input-wrap {
  padding: 0;
  margin-bottom: 1.3em;
}
.cid-qyY9JUAdBE .input-wrap input {
  border: 1px solid #ddd;
  border-radius: 22px;
  background-color: #efefef;
  padding: 18px 25px;
  width: 96%;
}
.cid-qyY9JUAdBE .form-group {
  padding: 0;
}
.cid-qyY9JUAdBE .form-group textarea {
  background-color: #efefef;
  border-radius: 22px;
  padding: 1rem;
  width: 98%;
}
.cid-qyY9JUAdBE .btn-row {
  padding-left: 0;
}
.cid-qyY9JUAdBE .btn {
  padding: 1rem 4rem;
}
@media (max-width: 767px) {
  .cid-qyY9JUAdBE .container-fluid {
    padding: 0 1rem;
  }
  .cid-qyY9JUAdBE .btn {
    padding: 1rem 2rem;
    font-size: 16px !important;
  }
}
      </style>
@endsection
@section('content') 
<section class="cid-qyY9JUAdBE" id="form3-68" data-rv-view="2720">
    <div class="container-fluid">
        <div class="row justify-content-center">
          <div class="col-12" data-form-type="formoid">
                <h1 class="mbr-fonts-style mbr-section-title align-center display-2">
                    Necesitamos algunos datos!
                </h1>
          </div>
          <div class="col-12 col-md-6 col-lg-4 lg-offset-1 login-form">
                <form class="mbr-form" action="{{ route('voyager.login') }}" method="post" data-form-title="Contacto">
                  {{ csrf_field() }}
                    <div class="row input-main">
                        <div class="col-12 input-wrap" data-for="user">
                            <label class="form-label-outside" for="form-1-user">Usuario</label>
                            <input type="text" class="field display-7" name="email" data-form-field="First Name" required="" id="user-form3-68">
                        </div>
                    </div>
                    <div class="row input-main">
                        <div class="col-12 input-wrap" data-for="password">
                            <label class="form-label-outside" for="form-1-password">Contraseña</label>
                            <input type="password" class="field display-7" name="password" data-form-field="password" required="" id="password-form3-68">
                        </div>
                    </div>

                    <div class="row input-main">
                        <div class="col-md-10 col-lg-8 btn-row">
                            <span class="input-group-btn">
                                <button type="submit" class="btn btn-form btn-primary display-7">Ingresar</button>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-1 helper">

            </div>
            <div class="col-12 col-md-6 col-lg-4 lg-offset-1 register-form">
                <form class="mbr-form" action="/contact" method="post" data-form-title="Contacto">
                  {{ csrf_field() }}
                    <div class="row input-main">
                        <div class="col-12 input-wrap" data-for="firstname">
                            <label class="form-label-outside" for="form-1-firstname">Nombre</label>
                            <input type="text" class="field display-7" name="firstname" data-form-field="First Name" required="" id="firstname-form3-68">
                        </div>
                    </div>
                    <div class="row input-main">
                        <div class="col-md-5 col-lg-6 input-wrap" data-for="email">
                            <label class="form-label-outside" for="form-1-email">E-mail</label>
                            <input type="email" class="field display-7" name="email" data-form-field="Email" required="" id="email-form3-68">
                        </div>
                        <div class=" col-md-5 col-lg-6 input-wrap" data-for="password">
                            <label class="form-label-outside" for="form-1-password">Contraseña</label>
                            <input type="password" class="field display-7" name="password" data-form-field="password" id="passwordd-form3-68">
                        </div>
                    </div>
                    <div class="row input-main">
                        <div class="col-md-10 col-lg-8 btn-row">
                            <span class="input-group-btn">
                                <button type="button" onclick="pasoDos();" class="btn btn-form btn-primary display-7">Registrarse</button>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-12 col-md-12 register-form-2" style="display: none;">
                <form class="mbr-form" action="/register" method="post" data-form-title="Contacto">
                  {{ csrf_field() }}
                    <div class="row input-main">
                        <input type="hidden" class="field display-7" name="name" data-form-field="zip" id="nameh">
                        <input type="hidden" class="field display-7" name="password" data-form-field="zip" id="passwordh">
                        <input type="hidden" class="field display-7" name="email" data-form-field="zip" id="emailh">
                        <div class="col-2 input-wrap" data-for="dni">
                            <label class="form-label-outside" for="form-1-dni">DNI</label>
                            <input type="text" class="field display-7" name="dni" data-form-field="First Name" required id="dni-form3-68">
                        </div>
                        <div class="col-2 input-wrap" data-for="phone">
                            <label class="form-label-outside" for="form-1-phone">Teléfono</label>
                            <input type="text" class="field display-7" name="phone" data-form-field="Phone" id="phone-form3-68">
                        </div>
                        <div class="col-md-8 input-wrap" data-for="address">
                            <label class="form-label-outside" for="form-1-address">Dirección</label>
                            <input type="text" class="field display-7" name="address" data-form-field="address" required id="address-form3-68">
                        </div>
                        <div class=" col-md-5 input-wrap" data-for="city">
                            <label class="form-label-outside" for="form-1-city">Ciudad</label>
                            <input type="text" class="field display-7" name="city" data-form-field="city" required id="city-form3-68">
                        </div>
                        <div class=" col-md-5 input-wrap" data-for="state">
                            <label class="form-label-outside" for="form-1-state">Estado</label>
                            <input type="text" class="field display-7" name="state" data-form-field="state" required id="state-form3-68">
                        </div>
                        <div class=" col-md-2 input-wrap" data-for="zip">
                            <label class="form-label-outside" for="form-1-zip">Código Postal</label>
                            <input type="text" class="field display-7" name="zip" data-form-field="zip" required id="zip-form3-68">
                        </div>
                    </div>
                    <div class="row input-main">
                        <div class="col-md-10 col-lg-8 btn-row">
                            <span class="input-group-btn">
                                <button type="submit" class="btn btn-form btn-primary display-7">Registrarse</button>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
        </div>
   </div>
</section>
      @endsection
      @section('js')
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
                  $(".go-to-cart").show();
                  $(".popover-cart.success").toggle();
                   setTimeout(function(){
                        $(".popover-cart.success").toggle();
                   }, 3000);
                   
             }else{
                debugger;
                $(".popover-cart.error").toggle();
                setTimeout(function(){
                     $(".popover-cart.error").toggle();
                }, 3000);
             }
          }

          function pasoDos(){
            $(".register-form-2").toggle();
            $(".register-form").toggle();
            $(".login-form").toggle();
            $("#nameh").val($("#firstname-form3-68").val());
            $("#emailh").val($("#email-form3-68").val());
            $("#passwordh").val($("#passwordd-form3-68").val());
          }
      </script>
      @endsection