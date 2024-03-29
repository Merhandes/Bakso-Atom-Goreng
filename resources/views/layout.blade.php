<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('assets/images/short.jpg') }}">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;600;700&display=swap" rel="stylesheet">

    <title>Bakso Atom</title>

    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/bootstrap.min.css')}}">

    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/font-awesome.css')}}">

    <link rel="stylesheet" href="{{ asset('assets/css/css-library.css')}}">

    <link rel="stylesheet" href="{{ asset('assets/css/owl-carousel.css')}}">

    <link rel="stylesheet" href="{{ asset('assets/css/lightbox.css')}}">

    <script src="{{ asset('assets/js/angular.min.js')}}"></script>
    <script src="{{ asset('assets/js/bKash-checkout.js')}}"></script>
    <script src="{{ asset('assets/js/bKash-checkout-sandbox.js')}}"></script>

    </head>
    
    <body ng-app="">
    
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>  
    
    <header class="header-area" style="z-index:1000">
        <div class="container">
                    <nav class="main-nav">
                        <a href="{{url('/')}}" class="logo">
                            <img width="75px" src="{{ asset('assets/images/logo.png')}}">
                        </a>
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="/">Home</a></li>
                            <li class="scroll-to-section"><a href="/#about">About</a></li>   
                            <li class="scroll-to-section"><a href="/#menu">Menu</a></li>                    	
                            <li class="scroll-to-section"><a href="/#reservation">Pre-Order</a></li>


                            <?php
                                
                                if(Auth::user())
                                {
                        
                                    $cart_amount=DB::table('carts')->where('user_id',Auth::user()->id)->where('product_order','no')->count();
                        
                        
                                }
                                else
                                {
                        
                                    $cart_amount=0;
                        
                                }


                            ?>


                            <style>


                                .badge {
                                padding-left: 9px;
                                padding-right: 9px;
                                padding-top:10px;
                                -webkit-border-radius: 9px;
                                -moz-border-radius: 9px;
                                border-radius: 9px;
                                height:16px;
                                text-align:center;
                                }

                                .label-warning[href],
                                .badge-warning[href] {
                                background-color: #c67605;
                                }
                                #lblCartCount {
                                    font-size: 12px;
                                    background: #ff0000;
                                    color: #fff;
                                    padding: 0 5px;
                                    vertical-align: top;
                                    margin-left: -10px; 
                                }
                            </style>
                            <li>
                                @if (Route::has('login'))
                                <div class="hidden fixed top-0 right-0 px-6 py-4 sm:block">
                                    @auth
                                        <li style="margin-top:-13px;">
                                            <x-app-layout> </x-app-layout>
                                        </li>
                                    @else
                                      <li>
                                        <a href="{{ route('login') }}" class="text-sm text-gray-700 underline">Log in</a>
                                      </li>
                                        @if (Route::has('register'))
                                            <li><a href="{{ route('register') }}" class="ml-4 text-sm text-gray-700 underline">Register</a> </li>
                                        @endif
                                    @endauth
                                </div>
                                @endif
                            </li>
                        </ul>        
                        
                    </nav>
        </div>
    </header>

    <div style="min-height:500px">
        @yield('page-content')
    </div>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-xs-12">
                    <div class="right-text-content">
                            <ul class="social-icons">
                                
                                <li><a href="https://www.instagram.com/atom.basogoreng/"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="logo">
                        <a href="{{url('/')}}"><img width="75px" src="{{ asset('assets/images/logo.png')}}" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-4 col-xs-12">
                    <div class="left-text-content">
                        <p>© Copyright Bakso Atom
							<br>Since 2023</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script src="{{ asset('assets/js/jquery-2.1.0.min.js')}}"></script>

    <script src="{{ asset('assets/js/popper.js')}}"></script>
    <script src="{{ asset('assets/js/bootstrap.min.js')}}"></script>

    <script src="{{ asset('assets/js/owl-carousel.js')}}"></script>
    <script src="{{ asset('assets/js/accordions.js')}}"></script>
    <script src="{{ asset('assets/js/datepicker.js')}}"></script>
    <script src="{{ asset('assets/js/scrollreveal.min.js')}}"></script>
    <script src="{{ asset('assets/js/waypoints.min.js')}}"></script>
    <script src="{{ asset('assets/js/jquery.counterup.min.js')}}"></script>
    <script src="{{ asset('assets/js/imgfix.min.js')}}"></script> 
    <script src="{{ asset('assets/js/slick.js')}}"></script> 
    <script src="{{ asset('assets/js/lightbox.js')}}"></script> 
    <script src="{{ asset('assets/js/isotope.js')}}"></script> 
    
    <!-- Global Init -->
    <script src="{{ asset('assets/js/custom.js')}}"></script>
    <script>

        $(function() {
            var selectedClass = "";
            $("p").click(function(){
            selectedClass = $(this).attr("data-rel");
            $("#portfolio").fadeTo(50, 0.1);
                $("#portfolio div").not("."+selectedClass).fadeOut();
            setTimeout(function() {
              $("."+selectedClass).fadeIn();
              $("#portfolio").fadeTo(50, 1);
            }, 500);
                
            });
        });

    </script>
  </body>
</html>