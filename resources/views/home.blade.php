@extends('layout', ['title'=> 'Home'])

@section('page-content')

    <div id="top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4">
                    <div class="left-content">
                        <div class="inner-content">
                            <h3>Baso Goreng Atom</h3>
                            <h4>RASANYA GAK BISA LUPA</h4>
                            <div class="main-white-button scroll-to-section">
                                <a href="#reservation"><h2>Pre-Order Now</h2></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="main-banner header-text">
                        <div class="Modern-Slider">

                        @foreach($banners as $banner)
                          <div class="item">
                            <div class="img-fill">
                                <img src="{{ asset('assets/images/'.$banner->image)}}" alt="">
                            </div>
                          </div>

                        @endforeach
                         
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="section" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-xs-12">
                    <div class="left-text-content">
                        <div class="section-heading">
                        @foreach($about_us as $a_us)
                            <h6>About Us</h6>
                            <h2>{{  $a_us->title  }}</h2>
                        </div>
                        <p>{{  $a_us->description  }}</p>
                        <div class="row">
                            <div class="col-4">
                                <img src="{{ asset('assets/images/'.$a_us->image1)}}" alt="">
                            </div>
                            <div class="col-4">
                                <img src="{{ asset('assets/images/'.$a_us->image2)}}" alt="">
                            </div>
                            <div class="col-4">
                                <img src="{{ asset('assets/images/'.$a_us->image3)}}" alt="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-xs-12">
                    <div class="right-content">
                        <div class="thumb">
                            <a rel="nofollow" href="{{  $a_us->youtube_link    }}" target="_blank"> <i class="fa fa-play"></i></a>
                            <img src="{{ asset('assets/images/'.$a_us->vd_image)}}" alt="">

                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
 
    

<section class="section"  id="menu">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="section-heading" >
                        <h6>Our Menu</h6>
                        <h2>Our selection of Meat Fried with quality taste</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="menu-item-carousel">
            <div class="col-lg-12">
                <div class="owl-menu-item owl-carousel" >
                  
                    @foreach($menu as $product)
                   
                    <div class="item">

                    <?php
                        $img=$product->image;
                    ?>
                        <div class='card' style="background-image: url({{asset('assets/images/'.$img)}})"> 

                            <div class="price"><h6>Rp.{{ $product->price }}</h6>
                            @if($product->available!="Stock")
                            <h4 style="">Out Of Stock</h4> 

                            @endif
                        
                        </div>
                        <?php

                            
                            $total_rate=DB::table('rates')->where('product_id',$product->id)
                            ->sum('star_value');


                            $total_voter=DB::table('rates')->where('product_id',$product->id)
                            ->count();

                            if($total_voter>0)
                            {

                                $per_rate=$total_rate/$total_voter;

                            }
                            else
                            {

                                $per_rate=0;


                            }

                            $per_rate=number_format($per_rate, 1);


                            $whole = floor($per_rate);      // 1
                            $fraction = $per_rate - $whole

                        ?>
                            <div class='info'>
                              <h1 class='title'>{{ $product->name }}</h1>
                              <p class='description'>{{ $product->description  }}</p>
                              <div class="main-text-button">
                                  <div class="scroll-to-section" >
              
                                @if($product->available=="Stock")
                                @endif

                                @if($product->available!="Stock")
                                  <form method="post" action="{{route('cart.store',$product->id)}}">
                                     @csrf
                        
                                  </form>
                                @endif
                                </div>
                              </div>
                              
                            </div>
                        </div>
                    </div>
                   
                    @endforeach
                </div>
            </div>
        </div>
    </section>
    <section class="section" id="reservation">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 align-self-center">
                    <div class="left-text-content">
                        <div class="section-heading">
                            <h6>Hubungi kami</h6>
                            <h2>Disini kalian bisa melakukan pemesanan</h2>
                        </div>
                        <p>Members of Bakso Atom are always active to response your call.</p>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="phone">
                                    <i class="fa fa-phone"></i>
                                    <h4>Nomor Telepon</h4>
                                    <span><a href="#">081288576632</a>
								
									</span>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="message">
                                    <i class="fa fa-envelope"></i>
                                    <h4>Email</h4>
                                    <span><a href="baksoatom@gmail.com">baksoatom@gmail.com</a><br>
								
									</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="contact-form">
                        <form id="contact" action="/reserve/confirm" method="post">
                            @csrf
                          <div class="row">
                            <div class="col-lg-12">
                                <h4>Pre-order</h4>
                            </div>
                            <div class="col-lg-6 col-sm-12">
                              <fieldset>
                                <input name="name" type="text" id="name" placeholder="Nama Anda*" required="">
                              </fieldset>
                            </div>
                            <div class="col-lg-6 col-sm-12">
                              <fieldset>
                              <input name="email" type="text" id="email" pattern="[^ @]*@[^ @]*" placeholder="Alamat Email Anda" required="">
                            </fieldset>
                            </div>
                            <div class="col-lg-6 col-sm-12">
                              <fieldset>
                                <input name="phone" type="text" id="phone" placeholder="Nomor telepon*" required="">
                              </fieldset>
                            </div>
                            <div class="col-md-6 col-sm-12">
                              <fieldset>
                                <select value="number-guests" name="no_guest" id="number-guests">
                                    <option value="number-guests">Menu</option>
                                    <option name="1" id="1">Paket Sharing</option>
                                    <option name="2" id="2">All You Can Eat</option>
                                    <option name="3" id="3">Paket 6 Atom</option>
                                    <option name="4" id="4">Dua Bowl Berdua</option>
                                    <option name="5" id="5">Paket Family</option>
        
                                </select>
                              </fieldset>
                            </div>
                            <div class="col-lg-6">
                                <div id="filterDate2">    
                                  <div class="input-group date" data-date-format="dd/mm/yyyy">
                                    <input  name="date" id="date" type="text" class="form-control" placeholder="dd/mm/yyyy">
                                    <div class="input-group-addon" >
                                      <span class="glyphicon glyphicon-th"></span>
                                    </div>
                                  </div>
                                </div>   
                            </div>
                            <div class="col-md-6 col-sm-12">
                              <fieldset>
                                <select value="time" name="time" id="time">
                                    <option value="time">Waktu</option>
                                    <option name="Pagi" id="Pagi">Pagi</option>
                                    <option name="Siang" id="Siang">Siang</option>
                                    <option name="Malam" id="Malam">Malam</option>
                                </select>
                              </fieldset>
                            </div>
                            <div class="col-lg-12">
                              <fieldset>
                                <textarea name="message" rows="6" id="message" placeholder="Pesan" required=""></textarea>
                              </fieldset>
                            </div>
                            <div class="col-lg-12">
                              <fieldset>
                                <button type="submit" id="form-submit" class="main-button-icon">Buat Pre-Order</button>
                              </fieldset>
                            </div>
                          </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
   @endsection