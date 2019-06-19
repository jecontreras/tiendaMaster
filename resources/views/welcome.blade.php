@extends('layouts.app')
@section('content')
<section class="carousel slide cid-rf5InVlJc3" data-interval="false" id="slider2-2" data-sortbtn="btn-primary">
   <div class="container-fluid content-slider">
      <div class="content-slider-wrap">
         <div>
            <div class="mbr-slider slide carousel" data-pause="true" data-keyboard="false" data-ride="false" data-interval="false">
               <div class="carousel-inner" role="listbox">
                  @foreach($sliders as $key => $slider)
                  <div class="@if($slider->mobile) mobile @else desktop @endif carousel-item slider-fullscreen-image active" data-bg-video-slide="false" style="background-image: url({{ voyager::image($slider->image)}});">
                     <div class="container container-slide">
                        <div class="image_wrapper">
                           <img src="{{ voyager::image($slider->image)}}">
                           <div class="carousel-caption justify-content-center">
                              <div class="col-10 align-center"></div>
                           </div>
                        </div>
                     </div>
                  </div>
                  @endforeach
               </div>
               <a data-app-prevent-settings="" class="carousel-control carousel-control-prev" role="button" data-slide="prev" href="#slider2-2"><span aria-hidden="true" class="mbri-left mbr-iconfont"></span><span class="sr-only">Previous</span></a><a data-app-prevent-settings="" class="carousel-control carousel-control-next" role="button" data-slide="next" href="#slider2-2"><span aria-hidden="true" class="mbri-right mbr-iconfont"></span><span class="sr-only">Next</span></a>
            </div>
         </div>
      </div>
   </div>
</section>
<section class="mbr-section features18 cid-rf5M31yqFs" id="features18-5" data-sortbtn="btn-primary">
   <div class="container-fluid">
      <h2 class="mbr-section-title align-left mbr-fonts-style mbr-bold mbr-white display-2">NUESTRAS <span style="font-weight: normal;">CATEGORIAS</span></h2>
      <div class="row justify-content-center pt-5">
         @foreach ($categories as $category)
         <div class="card px-3 py-4 col-12 col-md-6 col-lg-3">
            <div class="card-wrapper">
               <div class="card-img">
                  <a href="{{ url('/category/'.$category->slug.'') }}"><img src="{{ voyager::image($category->image_preview)}}" alt="Mobirise" title=""></a>
               </div>
               <div class="card-box">
                  <p class="mbr-text mbr-fonts-style align-center mbr-white display-5"><strong>{{ $category->name }}</strong></p>
               </div>
            </div>
         </div>
         @endforeach
      </div>
   </div>
</section>
<section class="cid-rf5QGqRX0P" id="info2-6" style="background-image: url({{Voyager::image(setting('site.banner_home'))}})" data-sortbtn="btn-primary">
   <div class="container-fluid">
      <div class="row justify-content-center">
         <div class="media-container-column col-12 col-lg-8 col-md-6">
            <h2 class="mbr-section-title align-left mbr-fonts-style mbr-bold display-2"></h2>
            <h3 class="mbr-section-subtitle align-left mbr-fonts-style mbr-light mbr-white display-5"></h3>
         </div>
         <div class="media-container-column col-12 col-lg-4 col-md-6">
            <div class="mbr-section-btn align-center"><a class="btn btn-white-outline display-4" href="{{setting('url.descuento')}}">Empieza a comprar</a>
            </div>
         </div>
      </div>
   </div>
</section>
<section class="cid-rf5VjUkWqe" id="content7-9" data-sortbtn="btn-primary">
   <div class="container-fluid">
      <div class="row justify-content-center">
         <div class="col-12 col-lg-6 col-md-8 align-center">
            <h2 class="mbr-section-title align-center mbr-fonts-style mbr-bold display-2">
                <span style="font-weight: normal;">DESCUENTOS</span>
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


                      @foreach($products as $producto)
                              <div class="mbr-gallery-item" style="min-height:370px;">
                                 <div class="item_overlay" href="/detail/{{$producto->id}}" data-toggle="modal"></div>
                                 <div class="galleryItem" data-toggle="modal">
                                    <div class="style_overlay"></div>
                                    <div class="img_wraper">
                                       <a href="/detail/{{$producto->id}}">
                                           <h4 style="font-size: 1rem;text-align: center;padding-top: 15px;margin: 0 55px;color:black;">{{$producto->name}}</h4>
<img src="{{ Voyager::image( $producto->image ) }}"  alt="" title=""></a>
                                    </div>
                                    @if($producto->discount != "" && $producto->discount != 0) <span class="onsale mbr-fonts-style display-7" data-onsale="false">-{{$producto->discount}}%</span>@endif
                                    <div class="sidebar_wraper">
                                       <h4 class="item-title mbr-fonts-style mbr-text display-5"><a href="/detail/{{$producto->id}}">{{$producto->titulo}}</a></h4>
                                       <div class="price-block">
                                          <span class="shop-item-price mbr-fonts-style display-5">$ @if($producto->discount != "" && $producto->discount != 0) {{number_format(($producto->price - (($producto->discount * $producto->price)/100)),0,",",".")}} @else {{$producto->price}} @endif</span>
                                          @if($producto->discount != "" && $producto->discount != 0)<span class="oldprice mbr-fonts-style display-7">${{number_format($producto->price,0,",",".")}}</span>@endif
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
