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
form{
  text-align: center;
}
      </style>
@endsection
@section('content') 

<section class="cid-qyY9JUAdBE" id="form3-68" data-rv-view="2720">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="form-1 col-md-10 col-lg-4" data-form-type="formoid">

                <form class="mbr-form" action="{{ route('login') }}" method="post" data-form-title="Contacto">
                  <h3 style="line-height: 35px;">Iniciar sesión para <br>un pago más rápido</h3><br>
                  {{ csrf_field() }}
                    <div class="row input-main">
                        <div class="col-md-12 input-wrap" data-for="firstname">
                            <input type="text" class="field display-7" name="email" placeholder="Email" data-form-field="First Name" required="" id="firstname-form3-68">
                        </div>
                        <div class="col-md-12 input-wrap" data-for="lastname">
                            <input type="password" class="field display-7" name="password" placeholder="Contraseña" data-form-field="Last Name" required="" id="lastname-form3-68">
                        </div>
                    </div>
                    
                    <div class="row input-main">
                        <div class="col-md-12 btn-row">
                            <span class="input-group-btn">
                                <button onclick="document.getElementsByClassName('mbr-form') [0].submit();" type="submit" class="btn btn-form btn-primary display-4">ACEPTAR</button>
                            </span>
                        </div>
                        <div class="col-md-12 btn-row">
                            <a href="#!">Olvidé mi contraseña</a>
                        </div>
                    </div>
                </form>


                  <hr>
                  <div class="row input-main" style="text-align: center;"><center>Si aun no tienes cuenta registrate!</center></div>
                    <div class="row input-main" style="text-align: center;">
                        <div class="col-md-12 btn-row">
                            <span class="input-group-btn">
                                <a href="/payments" class="btn btn-form btn-primary display-4">REGISTRARSE</a>
                            </span>
                        </div>
                    </div>

            </div>
        </div>
   </div>
</section>
      @endsection