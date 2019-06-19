@extends('layouts.app')
@section('css')
<link rel="stylesheet" href="{{ asset('vendor/lightbox/slick-lightbox.css') }}">
@endsection
@section('content')
<section class="features1 cid-rgt8CUkRk9" id="features1-f">

    

    
    <div class="container">
        <div class="row main align-items-center">
            <div class="col-md-6 image-element align-self-center">
                <div class="img-wrap" style="width: 60%; height: 60%;">
                    <img src="{{ Voyager::image( $producto->image ) }}" alt="" title="">
                </div>
            </div>
            <div class="col-md-6 text-element">
                <div class="text-content">
                    <h2 class="mbr-title pt-2 mbr-fonts-style align-center display-2">{{$brand->name}}</h2>
                    <div class="underline align-center">
                         <div class="line"></div>
                    </div>
                    <div class="mbr-section-text price-block" style="    text-align: center;">
                                          <span style="font-weight:bold;color: #767676;" class="shop-item-price mbr-fonts-style display-5">$ @if($producto->discount != "" && $producto->discount != 0) {{ number_format(($producto->price - (($producto->discount * $producto->price)/100)),0,",",".")}} @else {{$producto->price}} @endif</span>
                                          @if($producto->discount != "" && $producto->discount != 0)<span class="oldprice mbr-fonts-style display-7" style=" color: #767676;   text-decoration: line-through;">${{number_format($producto->price,0,",",".")}}</span>@endif
                                       </div>
      
                    <div class="mbr-section-btn pt-3 align-center"><a class="btn btn-md btn-primary display-4" href="#!"  onclick="addProduct({{$producto->id}})">COMPRAR</a></div>
                </div>
            </div>
        </div>
    </div>          
</section>

<section class="toggle1 cid-rgt9QhidsS" id="toggle1-g">
    <div class="container-fluid">
        <div class="media-container-row">
            <div class="col-12 col-md-12">
                <div class="section-head text-center space30">
                   <h2 class="mbr-section-title pb-3 mbr-fonts-style display-2"><strong>{{$producto->name}}</strong></h2>
                </div>
                <div class="underline align-center pb-3">
                    <div class="line"></div>
                </div>
                <div class="section-subhead text-center space30">
                    <h2 class="mbr-section-subtitle mbr-light mbr-fonts-style pb-3 display-7"><strong>Descripción</strong>:</h2> {!! $producto->description !!}
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</section>
@if($producto->images != "" && $producto->images != "[]")
<section class="mbr-gallery cid-rgti5p8vwY cid-rgt9QhidsS" id="shop4-l">
    <div style="text-align:center;">
	   <div class="mbr-shop row" card-buttons="">
	      <!-- Shop Gallery -->
          <div class="col-12 col-md-6" style="display: inline-block;    float: left;padding: 3vw;">
              <div id="bootstrap-toggle" class="toggle-panel accordionStyles tab-content row justify-content-center">
                    @if($producto->beneficios != "")
                    <div class="col-md-12" style="margin-bottom: 50px;">
                        <div class="card">
                            <div class="card-header" role="tab" id="headingOne">
                                <a role="button" class="collapsed panel-title text-black" data-toggle="collapse" data-parent="#accordion" data-core="" href="#collapse1_12" aria-expanded="false" aria-controls="collapse1">
                                    <span class="sign mbr-iconfont mbri-arrow-down inactive"></span>
                                    <h4 class="toggle-header inactive mbr-fonts-style display-7">
                                        <span class="toggle-title"><strong>Beneficios de {{$producto->name}} ™</strong></span>
                                    </h4>
                                </a>
                            </div>
                            <div id="collapse1_12" class="panel-collapse noScroll collapse" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body p-4">
                                    {!! $producto->beneficios !!}
                                </div>
                            </div>
                        </div>
                    </div>
                    @endif
                    @if($producto->beneficios != "")
                    <div class="col-md-12" style="margin-bottom: 50px;">
                        <div class="card">
                            <div class="card-header" role="tab" id="headingTwo">
                                <a role="button" class="collapsed panel-title text-black" data-toggle="collapse" data-parent="#accordion" data-core="" href="#collapse2_12" aria-expanded="false" aria-controls="collapse2">
                                    <span class="sign mbr-iconfont mbri-arrow-down inactive"></span>
                                    <h4 class="toggle-header inactive mbr-fonts-style display-7">
                                        <span class="toggle-title"><strong>Uso Sugerido</strong></span>
                                    </h4>
                                </a>
                        
                            </div>
                            <div id="collapse2_12" class="panel-collapse noScroll collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body p-4">
                                    {!! $producto->uso_sugerido !!}
                                </div>
                            </div>
                        </div>
                    </div>
                    @endif
                    @if($producto->advertencia != "")
                    <div class="col-md-12" style="margin-bottom: 50px;">
                        <div class="card">
                            <div class="card-header" role="tab" id="headingThree">
                                <a role="button" class="collapsed panel-title text-black" data-toggle="collapse" data-parent="#accordion" data-core="" href="#collapse3_12" aria-expanded="false" aria-controls="collapse3">
                                    <span class="sign mbr-iconfont mbri-arrow-down inactive"></span>
                                    <h4 class="toggle-header inactive mbr-fonts-style display-7">
                                        <span class="toggle-title"><strong>
                                            Advertencia
                                        </strong></span>
                                    </h4>
                                </a>
                            </div>
                            <div id="collapse3_12" class="panel-collapse noScroll collapse" role="tabpanel" aria-labelledby="headingThree">
                                <div class="panel-body p-4">
                                    {!! $producto->advertencia !!}
                                </div>
                            </div>
                        </div>
                    </div>
                    @endif
                    @if($producto->sabores != "")
                    <!--div class="col-md-12" style="margin-bottom: 50px;">
                        <div class="card">
                            <div class="card-header" role="tab" id="headingThree">
                                <a role="button" class="collapsed panel-title text-black" data-toggle="collapse" data-parent="#accordion" data-core="" href="#collapse4_12" aria-expanded="false" aria-controls="collapse4">
                                    <span class="sign mbr-iconfont mbri-arrow-down inactive"></span>
                                    <h4 class="toggle-header inactive mbr-fonts-style display-7">
                                        <span class="toggle-title"><strong>
                                            Sabores</strong></span>
                                    </h4>
                                </a>
                            </div>
                            <div id="collapse4_12" class="panel-collapse noScroll collapse" role="tabpanel" aria-labelledby="headingThree">
                                <div class="panel-body p-4">
                                    {!! $producto->sabores !!}
                                </div>
                            </div>
                        </div>
                    </div-->
                    @endif
                </div>
          </div>
	      <div class="col-12 col-md-6" style="display: inline-block;">
	         <img src="{{ Voyager::image( $producto->images ) }}" style="    max-width: 100%;" alt="" title="">
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
@endif
<section class="clients cid-rgtco9uJg1" id="clients1-h">
      

    
    <div class="container mb-5">
        <div class="media-container-row">
            <div class="col-12 align-center">
                <h2 class="mbr-section-title mbr-fonts-style display-2"><strong>Productos Relacionados</strong></h2>
                 
                
            </div>
        </div>
    </div>

    <div class="container">
        <div class="carousel slide" data-ride="carousel" role="listbox">
            <div class="slider-clients">
                <div class="carousel-inner" data-visible="4">
                    @foreach($destacados as $dealer)
                        <div class="carousel-item" style="cursor:pointer;">
                            <div class="media-container-row">
                                <div class="col-md-12" onclick="window.location = '/detail/{{$dealer->id}}';">
                                    <div class="wrap-img ">
                                        <img src="{{Voyager::image($dealer->image)}}" class="img-responsive clients-img" alt="" title="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
        <div class="carousel-controls">
            <a data-app-prevent-settings="" class="carousel-control carousel-control-prev" role="button" data-slide="prev">
                <span aria-hidden="true" class="mbri-left mbr-iconfont"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a data-app-prevent-settings="" class="carousel-control carousel-control-next" role="button" data-slide="next">
                <span aria-hidden="true" class="mbri-right mbr-iconfont"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

</section>
@endsection
@section('js')
  <script src="{{ asset('vendor/lightbox/slick-lightbox.min.js') }}"></script>
  <script src="{{ asset('js/page_detalle.js') }}"></script>
@endsection