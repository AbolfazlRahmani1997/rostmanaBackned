<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Rostmana</title>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <script async src="https://cse.google.com/cse.js?cx=adbf4d4196099214a"></script>
    <script src="./js/main_index.js"></script>
    <link rel="stylesheet" href="/css/fontiran.css">
    <link rel="stylesheet" href="./css/aboutMe.css">
    <link rel="stylesheet" href="/css/main_index.css">
    <link rel="stylesheet" href="./css/bootstrap.css">
    <link rel="stylesheet" href="./css/1.css">
    <link rel="stylesheet" href="/css/main_contactus.css">
    <script src="./js/jquery.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="./js/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="./js/bootstrapjquery.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="./js/dropzone.js"></script>
    <script src="./js/axax.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link rel="stylesheet" href="./css/aboutMe.css">
    <link rel="stylesheet" href="/css/main_index.css">
    <link rel="stylesheet" href="./css/bootstrap.css">
    <link rel="stylesheet" href="/css/main_contactus.css">


</head>
<body>
@include('Website.Navbar.Navbar')
<div>
@yield('content')
</div>
<footer>

    <div class="col-12 bg-light" id="footer" style="">
        <div class="row ">

            <div class="col-xs-3 col-lg-3 col-12 mt-n4 pt-1 mx-auto text-center pt-sm-1 pt-xs-0 pt-lg-5 justify-content-center ">
                <i class=""><img src="../img/footer/call.svg.svg" width="40px" alt=""></i>
                <i class=" "><img src="../img/footer/location.svg.svg" width="40px" alt=""> </i>
                <i class=""><img src="../img/footer/instagram.png" width="40px" alt=""></i>
                <i class=""><img src="../img/footer/linkedin.png" width="40px" alt=""></i>
                <i class=""><img src="../img/footer/twitter.svg.svg" width="40px" alt=""></i>
{{--                <i class=""><img src="../img/footer/linkedin.png" width="40px" alt=""></i>--}}
                <i class=""><img src="../img/footer/email.svg.svg" width="40px" alt=""></i>
            </div>
            <div class=" justify-content-center text-center mx-auto pt-0  pb-0 col-xs-3 col-lg-3 col-12 mt-3 mt-sm-0  " id="logo_footer" >
                <img src="/img/logo.png" class="img-fluid " style="" height="75px" width="75px" alt="">
            </div>

            <div class="col-xs-3 col-lg-3 col-12 mt-3 pt-4 pb-1 mx-auto text-center ">
                © تمامی حقوق برای این وبسایت محفوظ است
            </div>

        </div>
    </div>

</footer>

</body>
<script src="/js/bootstrap.js"></script>

<script src="/js/main.js"></script>
<script>


    $('.service-box').hover(function (){
            $(this).children('.service-child').css("transition","800ms");
            $(this).children('.service-child').css("top","80%");
            $(this).children('.service-child').css("opacity","0.8");
        }
        ,function (){
            $(this).children('.service-child').css("opacity","1");
            $(this).children('.service-child').css("top","100%");
        }
    );
    $('.service').hover(function (){
            $(this).children('.card-img-top').css("transition","800ms");
            // $(this).children('.card-img-top').css("top","50%");
            $(this).children('.card-img-top').css("opacity","0.5");

        }
        ,function (){
            $(this).children('.card-img-top').css("opacity","1");
            // $(this).children('.card-img-top').css("top","100%");
        }
    );

</script>
</html>
