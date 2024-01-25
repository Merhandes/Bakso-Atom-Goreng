<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="SSLCommerz">
    <title>Bakso Atom</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
</head>
<body class="bg-light">
<div class="container">
    <div class="py-5 text-center">
        <h2>Bakso Atom</h2>

      
    </div>

    <div class="row">
        <div class="col-md-4 order-md-2 mb-4">
            <h4 class="d-flex justify-content-between align-items-center mb-3">
                <span class="text-muted">Keranjang Anda</span>
            </h4>
            <ul class="list-group mb-3">
               
                <li class="list-group-item d-flex justify-content-between">
                    <span>Total (IDR)</span>
                    <strong>{{ $total }}</strong>
                </li>
            </ul>
        </div>
        <div class="col-md-8 order-md-1">
            <h4 class="mb-3">Alamat pengiriman</h4>
            <form method="POST" class="needs-validation" novalidate>
               

                <div class="mb-3">
                    <label for="address">Alamat</label>
                    <input type="text" class="form-control" id="address" name="address" placeholder=""
                           value="" required>
                    <div class="invalid-feedback">
                        Tolong masukkan alamat anda.
                    </div>
                </div>

                <div class="mb-3">
                    <label for="address2">Alamat 2 <span class="text-muted">(Opsional)</span></label>
                    <input type="text" class="form-control" id="address2" placeholder="">
                </div>

                <div class="row">
                    <div class="col-md-5 mb-3">
                        <label for="country">Negara</label>
                        <select class="custom-select d-block w-100" id="country" required>
                            <option value="">Pilih...</option>
                            <option value="Indonesia">Indonesia</option>
                        </select>
                        <div class="invalid-feedback">
                            Silakan pilih negara yang valid.
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="state">Provinsi</label>
                        <select class="custom-select d-block w-100" id="state" required>
                            <option value="">Pilih...</option>
                            <option value="Jawa Barat">Jawa Barat</option>
                        </select>
                        <div class="invalid-feedback">
                            Harap berikan status yang valid.
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label for="Kode Pos">Kode Pos</label>
                        <input type="text" class="form-control" id="zip" placeholder="" required>
                        <div class="invalid-feedback">
                            Membutuhkan kode pos.
                        </div>
                    </div>
                </div>
                <hr class="mb-4">
                <p id="add" style="display:none;"></p>
              
                <hr class="mb-4">
                <button class="btn btn-primary btn-lg btn-block" id="sslczPayBtn"
                        token="if you have any token validation"
                        postdata="your javascript arrays or objects which requires in backend"
                        order="If you already have the transaction generated for current order"
                        endpoint="{{ url('/pay-via-ajax') }}" onclick="myFunction()"> Pay Now
                </button>
            </form>
        </div>
    </div>
 

   
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

<script>
    var obj = {};
   obj.cus_email = $('#address').val();
        console.log(obj);

    $("sslczPayBtn").click(function(){
        $.post("demo_test_post.asp",
    {
        name: "Donald Duck",
        city: "Duckburg"
    },
    function(data, status){
    console.log(data);
  });
});

      

        function myFunction() {
                 var addr = document.getElementById("address").value;
               <?php    
                ?>
                 
        }

  

   

    $('#sslczPayBtn').prop('postdata', obj);

    (function (window, document) {
        var loader = function () {
            var script = document.createElement("script"), tag = document.getElementsByTagName("script")[0];
            script.src = "https://sandbox.sslcommerz.com/embed.min.js?" + Math.random().toString(36).substring(7);
            tag.parentNode.insertBefore(script, tag);
        };

        window.addEventListener ? window.addEventListener("load", loader, false) : window.attachEvent("onload", loader);
    })(window, document);
</script>
</html>
