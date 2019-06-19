@extends('layouts.app')
@section('css')
<style type="text/css">
    nav{
        background: #374193 !important;
        min-height: 60px;
    }
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
      </style>
@endsection
@section('content') 

      <section class="cid-qyY9JUAdBE" id="form3-68" data-rv-view="2720">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="form-1 col-md-10 col-lg-8" data-form-type="formoid">
                <h1 class="mbr-fonts-style mbr-section-title align-center display-2">
                    CONTACTANOS!
                </h1>
      

                <form class="mbr-form" action="/contact" method="post" data-form-title="Contacto">
                  {{ csrf_field() }}
                    <div class="row input-main">
                        <div class="col-md-5 col-lg-4 input-wrap" data-for="firstname">
                            <label class="form-label-outside" for="form-1-firstname">Nombre</label>
                            <input type="text" class="field display-7" name="firstname" data-form-field="First Name" required="" id="firstname-form3-68">
                        </div>
                        <div class="col-md-5 col-lg-4 input-wrap" data-for="lastname">
                            <label class="form-label-outside" for="form-1-lastname">Apellido</label>
                            <input type="text" class="field display-7" name="lastname" data-form-field="Last Name" required="" id="lastname-form3-68">
                        </div>
                    </div>
                    <div class="row input-main">
                        <div class="col-md-5 col-lg-4 input-wrap" data-for="email">
                            <label class="form-label-outside" for="form-1-email">E-mail</label>
                            <input type="email" class="field display-7" name="email" data-form-field="Email" required="" id="email-form3-68">
                        </div>
                        <div class=" col-md-5 col-lg-4 input-wrap" data-for="phone">
                            <label class="form-label-outside" for="form-1-phone">Teléfono</label>
                            <input type="text" class="field display-7" name="phone" data-form-field="Phone" id="phone-form3-68">
                        </div>
                    </div>
                    <div class="row input-main">
                        <div class="col-md-10 col-lg-8 form-group" data-for="message">
                            <label class="form-label-outside" for="form-1-message">Mensaje</label>
                            <textarea type="text" class="form-control display-7" name="message" rows="7" data-form-field="Message" id="message-form3-68"></textarea>
                        </div>
                    </div>
                    <div class="row input-main">
                        <div class="col-md-10 col-lg-8 btn-row">
                            <span class="input-group-btn">
                                <button onclick="document.getElementsByClassName('mbr-form') [0].submit();" type="submit" class="btn btn-form btn-primary display-4">ENVIAR</button>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
        </div>
   </div>
</section>
      @endsection