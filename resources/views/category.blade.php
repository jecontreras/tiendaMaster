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




<section class="cid-rhryIOT6GU" id="content7-13">
   <div class="container-fluid">
      <div class="row justify-content-center">
         <div class="col-12 col-lg-6 col-md-8 align-center">
            <h2 class="mbr-section-title align-center mbr-fonts-style mbr-bold display-2">
               <br>CATEGORIAS
            </h2>
         </div>
      </div>
   </div>
</section>
<section class="mbr-section article content1 cid-rhryNDNGwB" id="content1-14">
   <div class="container">
      <div class="media-container-row">
         <div class="mbr-text col-12 col-md-8 col-lg-10 mbr-fonts-style display-7">
            <div><strong>{{$category->name}}</strong></div>
            <div><strong><br></strong></div>
            <div>{!! $category->description !!}</div>
            <br>
            <div><br></div>
         </div>
      </div>
   </div>
</section>
<section class="mbr-gallery cid-rhrzQ8q8HS" id="shop4-15">
   <div class="container">
      <div class="mbr-shop" card-buttons="">
         <!-- Shop Gallery -->
         <div class="row col-md-12">
            <div class="wrapper-shop-items col-md-12">
               <div class="mbr-gallery-row">
                  <div>
                     <div class="shop-items">

                    @foreach(\App\Product::where('brandscategories_id', $category->id)->get() as $producto)
                      <div class="mbr-gallery-item" style="min-height:370px;">
                         <div class="item_overlay" href="/detail/{{$producto->id}}" data-toggle="modal"></div>
                         <div class="galleryItem" data-toggle="modal">
                            <div class="style_overlay"></div>
                            <div class="img_wraper">
                               <a href="/detail/{{$producto->id}}"><h4 style="font-size: 1rem;text-align: center;padding-top: 15px;margin: 0 55px;color:black;">{{$producto->name}}</h4><img src="{{ Voyager::image( $producto->image ) }}"  alt="" title=""></a>
                            </div>
                            @if($producto->discount != "" && $producto->discount != 0) <span class="onsale mbr-fonts-style display-7" data-onsale="false">-{{$producto->discount}}%</span>@endif
                            <div class="sidebar_wraper">
                               <h4 class="item-title mbr-fonts-style mbr-text display-5"><a href="/detail/{{$producto->id}}">{{$producto->titulo}}</a></h4>
                               <div class="price-block">
                                  <span class="shop-item-price mbr-fonts-style display-5">$ @if($producto->discount != "" && $producto->discount != 0) {{($producto->price - (($producto->discount * $producto->price)/100))}} @else {{$producto->price}} @endif</span>
                                  @if($producto->discount != "" && $producto->discount != 0)<span class="oldprice mbr-fonts-style display-7">${{$producto->price}}</span>@endif
                               </div>
                               <div class="card-description">
                                  {!!$producto->description!!}
                                  <br>Product code: <strong>{{$producto->code}}</strong>
                               </div>
                               <div class="mbr-section-btn" buttons="0">
                                  <a href="/detail/{{$producto->id}}"  class="btn btn-form btn-primary display-7 btnDescription">Ver descripción</a>
                                  <a href="#!" onclick="addProduct({{$producto->id}})" class="btn btn-form btn-primary display-7">¡Comprar ahora!</a>
                               </div>
                            </div>
                         </div>
                      </div>
                      @endforeach
                     </div>
                  </div>
                  <div class="clearfix"></div>
               </div>
            </div>
         </div>
         <!-- Lightbox -->
         <div class="shopItemsModal_wraper" style="z-index: 100;">
            <div class="shopItemsModalBg"></div>
            <div class="shopItemsModal row">
               <div class="col-md-6 image-modal"></div>
               <div class="col-md-6 text-modal"></div>
               <div class="closeModal">
                  <div class="close-modal-wrapper"></div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
      @endsection
