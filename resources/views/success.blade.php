@extends('layouts.app')
@section('content') 
<section class="table1 section-table cid-rhpFL4BvYc" id="table1-r" style="padding-top:0;" data-sortbtn="btn-primary">
   <div class="container-fluid">
      <div class="media-container-row align-center">
         <div class="col-12 col-md-12">
            <h2 class="mbr-section-title mbr-fonts-style mbr-black display-5"><br>Listo!, estamos preparando tu pedido, lo enviarémos lo antes posible!, muchas gracias.</h2>
            <div class="underline align-center pb-3">
               <div class="line"></div>
            </div>
            <div class="table-wrapper pt-5" style="width: 82%;">
               <div class="container-fluid">
                  <div class="row search">
                     <!--div class="col-md-6"></div>
                     <div class="col-md-6"-->
                        <!--div class="dataTables_filter">
                           <label class="searchInfo mbr-fonts-style display-7">Buscar:</label>
                           <input class="form-control input-sm" disabled="">
                        </div-->
                        <!--a href="/reorder/{{$order->payu_order_id}}" class="btn btn-form btn-primary display-4">Encargar nuevamente</a>
                     </div-->
                  </div>
               </div>
               <div class="container-fluid scroll">
                  <table class="table table-striped isSearch" cellspacing="0">
                     <thead>
                        <tr class="table-heads">
                           <th class="head-item mbr-fonts-style display-4"><strong>Producto</strong></th>
                           <th class="head-item mbr-fonts-style display-4"><strong></strong></th>
                           <th class="head-item mbr-fonts-style display-4"><strong>Cantidad</strong></th>
                           <th class="head-item mbr-fonts-style display-4"><strong>Stock</strong></th>
                           <th class="head-item mbr-fonts-style display-4"><strong>Total</strong></th>
                        </tr>
                     </thead>
                     <tbody>
                        @php $enviar = false; @endphp
                        @foreach(DB::table('orders_products')->where('order_id', '=', $order->id)->get() as $order_product) 
                        @foreach(DB::table('products')->where('id', '=', $order_product->product_id)->get() as $product) 
                        @php
                           if($product->active == 1) 
                           {$enviar = true;}
                        @endphp
                        <tr>
                           <td class="body-item mbr-fonts-style display-7">{{$product->name}}</td>
                           <td class="body-item mbr-fonts-style display-7"><img style="max-width:150px;" src="{{ Voyager::image( $product->image ) }}" alt="" title=""> </td>
                           <td class="body-item mbr-fonts-style display-7">{{$order_product->quantity}}</td>
                           <td> <span @if($product->active == 0) style="background:red;color:white;" @endif>@if($product->active == 0) SIN STOCK @endif</span></td>
                           <td class="body-item mbr-fonts-style display-7">$ {{$product->price}}</td>
                        </tr>
                        @endforeach
                        @endforeach
                        <tr>
                           <td class="body-item mbr-fonts-style display-7"></td>
                           <td class="body-item mbr-fonts-style display-7">Total:</td>
                           <td class="body-item mbr-fonts-style display-7">$ {{$order->value}}</td>
                           <td>
                              @if($enviar == 1)
                                 <a href="/reorder/{{$order->payu_order_id}}" class="btn btn-form btn-primary display-4">Encargar nuevamente</a>
                              @else
                              <button disabled href="#!"  class="btn btn-form btn-primary display-4">Encargar nuevamente</button></td>

                              @endif

                        </tr>
                     </tbody>
                  </table>
               </div>
               <div class="container-fluid table-info-container">
                  <div class="row info mbr-fonts-style display-7">
                     <div class="dataTables_info">
                        <span class="infoBefore">Mostrando</span>
                        <span class="inactive infoRows"></span>
                        <span class="infoAfter">Entradas</span>
                        <span class="infoFilteredBefore">(Filtrado de</span>
                        <span class="inactive infoRows"></span>
                        <span class="infoFilteredAfter"> Entradas totales)</span>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
@php
    $user = App\User::where('id', $order->user_id)->firstOrFail();
@endphp
<section class="table2 section-table cid-rhpIqIFoI4" id="table2-t" data-sortbtn="btn-primary">
   <div class="container-fluid">
      <div class="media-container-row align-center">
         <div class="col-12 col-md-12">
            <h2 class="mbr-section-title mbr-fonts-style mbr-black display-5">Detalles del cliente</h2>
            <div class="table-wrapper pt-5" style="width: 88%;">
               <div class="container-fluid">
               </div>
               <div class="container-fluid scroll">
                  <table class="table table-striped" cellspacing="0">
                     <thead>
                        <tr class="table-heads">
                           <th class="head-item mbr-fonts-style display-4">Email:</th>
                           <th class="head-item mbr-fonts-style display-4">{{$user->email}}</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <td class="body-item mbr-fonts-style display-7">Teléfono:</td>
                           <td class="body-item mbr-fonts-style display-7">{{$user->phone}}</td>
                        </tr>
                     </tbody>
                  </table>
               </div>
               <div class="container-fluid table-info-container">
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
<section class="table1 section-table cid-rhpJumSyYf" id="table1-v" data-sortbtn="btn-primary">
   <div class="container-fluid">
      <div class="media-container-row align-center">
         <div class="col-12 col-md-12">
            <div class="table-wrapper pt-5" style="width: 82%;">
               <div class="container-fluid">
               </div>
               <div class="container-fluid scroll">
                  <table class="table table-striped" cellspacing="0">
                     <thead>
                        <tr class="table-heads">
                           <th class="head-item mbr-fonts-style display-4"><strong>Dirección de Envío</strong></th>
                           <th class="head-item mbr-fonts-style display-4"><strong>Dirección de Envío</strong></th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <td class="body-item mbr-fonts-style display-7">
                              <br>{{$user->name}}
                              <br>{{$user->address}}
                              <br>{{$user->dni}}
                              <br>{{$user->state}}
                              <br>{{$user->zip}}, {{$user->city}} 
                           </td>
                           <td class="body-item mbr-fonts-style display-7">
                              <br>{{$user->name}}
                              <br>{{$user->address}}
                              <br>{{$user->dni}}
                              <br>{{$user->state}}
                              <br>{{$user->zip}}, {{$user->city}} 
                           </td>
                        </tr>
                     </tbody>
                  </table>
               </div>
               <div class="container-fluid table-info-container">
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
@endsection