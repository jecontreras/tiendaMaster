@extends('layouts.app')
@section('content')

<section class="cid-rf5VjUkWqe" id="content7-9" data-sortbtn="btn-primary">
   <div class="container-fluid">
      <div class="row justify-content-center">
         <div class="col-12 col-lg-6 col-md-8 align-center">
            <h2 class="mbr-section-title align-center mbr-fonts-style mbr-bold display-2">
               COMBOS <span style="font-weight: normal;">EXPRESS</span>
            </h2>
         </div>
      </div>
   </div>
</section>
<section class="mbr-gallery cid-rf5SHc5jTK" id="shop4-8" data-sortbtn="btn-primary">
   <div class="container">
      <div class="mbr-shop" card-buttons="">
         <!-- Shop Gallery -->
         <div class="row col-md-12">
            <div class="wrapper-shop-items col-md-12">
               <div class="mbr-gallery-row">
                  <div>
                     <div class="shop-items">

                     @if(count($products) > 0)
                      @foreach($products as $producto)
                              <div class="mbr-gallery-item">
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
                              @else
                        <h5>Sin Combos Express Disponibles</h5>         
                              @endif
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