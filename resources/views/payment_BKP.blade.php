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
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
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
<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="/action_page.php">

        <div class="row">
          <div class="col-50">
            <h3>Dirección</h3>
            <label for="fname"><i class="fa fa-user"></i> Nombre completo</label>
            <input type="text" id="fname" name="firstname" placeholder="John M. Doe">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="john@example.com">
            <label for="adr"><i class="fa fa-address-card-o"></i> Dirección</label>
            <input type="text" id="adr" name="address" placeholder="542 W. 15th Street">
            <label for="city"><i class="fa fa-institution"></i> Ciudad</label>
            <input type="text" id="city" name="city" placeholder="New York">

            <div class="row">
              <div class="col-50">
                <label for="state">Estado</label>
                <input type="text" id="state" name="state" placeholder="NY">
              </div>
              <div class="col-50">
                <label for="zip">Zip</label>
                <input type="text" id="zip" name="zip" placeholder="10001">
              </div>
            </div>
          </div>

          <div class="col-50">
            <h3>Pago</h3>
            <label for="fname">Tarjetas aceptadas</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Nombre en la tarjeta</label>
            <input type="text" id="cname" name="cardname" placeholder="John More Doe">
            <label for="ccnum">Número</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
            <label for="expmonth">Mes de vencimiento</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="September">

            <div class="row">
              <div class="col-50">
                <label for="expyear">Año de vencimiento</label>
                <input type="text" id="expyear" name="expyear" placeholder="2018">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352">
              </div>
            </div>
          </div>

        </div>
        <!--label>
          <input type="checkbox" checked="checked" name="sameadr"> Dirección de envío es la misma 
        </label-->
        <input type="submit" value="Continue to checkout" class="btn">
      </form>
    </div>
  </div>

  <div class="col-25">
    <div class="container">
      <h4>Carrito 
        <span class="price" style="color:black">
          <i class="fa fa-shopping-cart"></i> 
          <b>4</b>
        </span>
      </h4>
      @php $total = 0; @endphp
      @foreach(Cart::content() as $row)
      @php $total += $row->price; @endphp
      <p><a href="#">{{$row->name}}</a> <span class="price">${{$row->price}}</span></p>
      @endforeach
      <hr>
      <p>Total <span class="price" style="color:black"><b>${{$total}}</b></span></p>
    </div>
  </div>
</div>
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