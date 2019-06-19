  @extends('layouts.app')
  @section('css')
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

  .cid-qyY9JUAdBE .input-wrap select {
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
  .row {
    display: -ms-flexbox; /* IE10 */
    display: flex;
    -ms-flex-wrap: wrap; /* IE10 */
    flex-wrap: wrap;
    margin: 0 -16px;
  }

  .col-25 {
    -ms-flex: 25%; /* IE10 */
    flex: 25%;
  }

  .col-50 {
    -ms-flex: 50%; /* IE10 */
    flex: 50%;
  }

  .col-75 {
    -ms-flex: 100%; /* IE10 */
    flex: 100%;
  }

  .col-25,
  .col-50,
  .col-75 {
    padding: 0 16px;
  }

  .container {
    padding: 5px 20px 15px 20px;
    border-radius: 3px;
  }

  input[type=text] {
    width: 100%;
    margin-bottom: 20px;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 3px;
  }

  label {
    margin-bottom: 10px;
    display: block;
  }

  .icon-container {
    margin-bottom: 20px;
    padding: 7px 0;
    font-size: 24px;
  }

  .btn {
    background-color: #4CAF50;
    color: white;
    padding: 12px;
    margin: 10px 0;
    border: none;
    width: 100%;
    border-radius: 3px;
    cursor: pointer;
    font-size: 17px;
  }

  .btn:hover {
    background-color: #45a049;
  }

  select{
      width: 100%;
      margin-bottom: 20px;
      padding: 12px;
      border: 1px solid #ccc;
      border-radius: 3px;
      background: white;
  }

  span.price {
    float: right;
    color: grey;
  }

  /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (and change the direction - make the "cart" column go on top) */
  @media (max-width: 800px) {
    .row {
      flex-direction: column-reverse;
    }
    .col-25 {
      margin-bottom: 20px;
    }
  }
        </style>
  @endsection
  @section('content') 
<section class="cid-qyY9JUAdBE" id="form3-68" data-rv-view="2720">
  <div class="row">
    <div class="col-75">
      <div class="container">
        @if(session('error'))
        <div class="row">
            <div class="col col-12">
                <h4>{{session('error')}}</h4>
            </div>
        </div>
        @endif
        <form action="/register" method="POST" style="padding: 20px;">
         {{ csrf_field() }}
          <div class="row input-wrap">
            <div class="col-75">
              <h3>Datos de la cuenta</h3>
              <div class="row">
                <div class="col-50">
                  <input type="text" placeholder="Email" id="email" name="email">
                </div>
                <div class="col-50">
                  <input type="password" placeholder="Contraseña" id="password" name="password">
                </div>
              </div>
            </div>
            <div class="col-50">
              <h3>Dirección</h3>
              <input type="text" id="fname" placeholder="Nombre completo" name="name">
              <div class="row">
                <!--div class="col-50">
                  <input type="text" id="dni" placeholder="DNI" name="dni">
                </div-->
                <div class="col-50">
                  <input type="text" id="phone" placeholder="Teléfono" name="phone">
                </div>
              </div>
              
              <input type="text" id="adr" placeholder="Dirección" name="address">
              <input type="text" id="city" placeholder="Ciudad" name="city">

              <!--div class="row">
                <div class="col-50">
                  <input type="text" id="state" placeholder="Estado" name="state">
                </div>
                <div class="col-50">
                  <input type="text" id="zip" placeholder="Zip" name="zip">
                </div>
              </div-->
            </div>

            <!--div class="col-50">
              <h3>Pago</h3>
              <div class="icon-container" style="    margin-top: 15px;margin-bottom: 26px;">
                <label for="fname" style="float: left;margin-right: 10px;font-size: 1.4rem;">Tarjetas aceptadas</label>
                <i class="fa fa-cc-visa" style="color:navy;"></i>
                <i class="fa fa-cc-amex" style="color:blue;"></i>
                <i class="fa fa-cc-mastercard" style="color:red;"></i>
                <i class="fa fa-cc-discover" style="color:orange;"></i>
              </div>
              <input type="text" id="cname" placeholder="Nombre en la tarjeta" name="cardname">
              <input type="text" id="ccnum" maxlength="19" placeholder="Número" name="cardnumber">
              <select name="expmonth">
                <option value="0" selected>Mes de vencimiento</option>
                <option value="01">Enero</option>
                <option value="02">Febrero</option>
                <option value="03">Marzo</option>
                <option value="04">Abril</option>
                <option value="05">Mayo</option>
                <option value="06">Junio</option>
                <option value="07">Julio</option>
                <option value="08">Agosto</option>
                <option value="09">Septiembre</option>
                <option value="10">Octubre</option>
                <option value="11">Noviembre</option>
                <option value="12">Diciembre</option>
              </select>

              <div class="row">
                <div class="col-50">
                  <input type="number" id="expyear" placeholder="Año de vencimiento" name="expyear">
                </div>
                <div class="col-50">
                  <input type="number" placeholder="CVV" id="cvv" name="cvv">
                </div>
              </div>
            </div-->

          </div>
          <!--label>
            <input type="checkbox" checked="checked" name="sameadr"> Dirección de envío es la misma 
          </label-->
          <input type="submit" value="Continuar" class="btn btn-form btn-primary display-4">
        </form>
        <hr>
        <span> Ya tienes cuenta? <a href="/ingresar"> ingresar </a> </span>
      </div>
    </div>
  </div>
  </section>
  @endsection
  @section('js')
  <script type="text/javascript">

      function pasoDos(){
        $(".register-form-2").toggle();
        $(".register-form").toggle();
        $(".login-form").toggle();
        $("#nameh").val($("#firstname-form3-68").val());
        $("#emailh").val($("#email-form3-68").val());
        $("#passwordh").val($("#passwordd-form3-68").val());
      }

      $('#ccnum').keyup(function() {
        var foo = $(this).val().split("-").join(""); // remove hyphens
        if (foo.length > 0) {
          foo = foo.match(new RegExp('.{1,4}', 'g')).join("-");
        }
        $(this).val(foo);
      });
  </script>
  @endsection