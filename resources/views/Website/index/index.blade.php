@extends('Website.layout.app')

@section('content')
{{--    <div class="col-12 px-0 mb-5 mx-0" id="slider" >--}}
{{--        <div class="col-12 sliderd" id="slide">--}}
{{--            <button class="btn-danger btn-sm " style="position: absolute; top:10px;right: 100px "> gotoo</button>--}}
{{--        </div>--}}
{{--        <div class="col-12 sliderd" id="slide1">--}}

{{--        </div>--}}
{{--    </div>--}}

<div id="myCarousel" class="carousel slide mb-2" data-ride="carousel" >
    <!-- Indicators -->
    <ol class="carousel-indicators">
{{--        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>--}}
{{--        <li data-target="#myCarousel" data-slide-to="1"></li>--}}

    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" style="width:100%; ">
        <div class="item active ">
            <img class="img-fluid"  src="./img/backgarund1.jpg"class="img-fluid"  alt="Chicago" style=" height: 600px!important;   width:100%;">

            <div class="carousel-caption  d-none d-md-block "style="
            position: center;top: 200px;">
                <div class="col-2 justify-content-center d-flex mx-auto pt-3" style="background-color: rgba(255,255,255,0.2); height: 50px;font-size: 14px;text-align: center ">
                    <h2>
                        | رست مانا |
                    </h2>
                </div>
                <div class="col-5 mt-3 justify-content-center  d-flex mx-auto pt-3" style="background-color: rgba(255,255,255,0.2); height: 50px;font-size: 14px;text-align: center ">
                    <span>
                    <h2>| سبکی نوین در طراحی دکوراسیون داخلی | </h2>
                    </span>
                </div>

            </div>
        </div>


         <div class="item">
             <img class="img-fluid" height="100%" src="./img/index-slider/10.jpg"alt="Los Angeles " style="width:100%; height: 600px!important; ">

            <div class="carousel-caption  d-none d-md-block "style="position: center;top: 200px;">
                <div class="col-2 justify-content-center d-flex mx-auto pt-3" style="background-color: rgba(255,255,255,0.2); height: 50px;font-size: 14px;text-align: center ">
                    <h2> | رست مانا |</h2></div>
                <div class="col-5 mt-3 justify-content-center  d-flex mx-auto pt-3" style="background-color: rgba(255,255,255,0.2); height: 50px;font-size: 14px;text-align: center ">

                    <span><h2>| تحقق رویش ماندگار |</h2></span>
                </div>

            </div>

        </div>


    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
    <div class="container-fluid mt-0 mx-md-auto " id="boxmain">
        <div class="justify-content-center">
            <div class="row  mx-md-auto my-sm-5 " style="opacity: 1; ">

                <div class="col-lg-8 col-sm-12 bg-light  text-dark px-5 pt-5 rounded-left shadow pb-5 " style="  ">
                 <h2 class="text-center" >معرفی کسب کار ما</h2>
                   <p class="text-reset px-5 mt-5" style="font-size: 20px; text-align: justify">
                    رست‌مانا ارائه‌دهنده سبکی نوین در به کارگیری انواع پوشش‌های ‌گیاهی در دکوراسیون داخلی می‌باشد. این مجموعه با بهره‌مندی از اینترنت اشیاء و استفاده از سیستم اتوماسیون هوشمند، شرایط ایده‌آل نگه‌داری و پرورش گیاهان را تحقق می‌بخشد.
                    تضمین رویش پایدار، کنترل هوشمند شرایط نگه‌داری گیاه، قابلیت کنترل از راه دور توسط اپلیکیشن، ساختاری مدرن و کارآمد در دکوراسیون داخلی از جمله ویژگی‌های برتر رست‌مانا به شمار می‌آید‌.
                    </p>
                </div>
                <div class="col-lg-4 col-sm-12 px-0 rounded-right shadow" >
                    <img class="img-fluid " src="/img/ژربرا آفریقایی.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid mt-0 mx-md-auto  " id="boxmain">

        <div class="container-fluid justify-content-center " >
            <h4  class="justify-content-center d-flex font-weight-bold mt-5 mx-auto "> خدمات رستمانا </h4>

            <hr class="my-5">
            <div class="row justify-content-center d-flex col-lg-12 col-md-12 col-sm-5 col-xl-12 mx-auto " id="treebox" >
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 mx-2 mb-5 service justify-content-center  d-flex" style=" position: relative">
                   <div class="bg-success d-block p-0" style="border-radius: 200px;width: 90px; z-index: 1; position:absolute;opacity:1;top: -10%;" > <img src="/icon/فرش%20گیاه.svg" alt="" class="img-fluid " style="  " ></div>
                    <div class="col-12 bg-dark justify-content-center d-flex service-box" style="height: 100%;" id="service_box1">
                        <!--                <div class="" style="position: relative;top: -25px; height: 90px;width: 90px"> </div>-->
                        <!--                <div class="col-12 bg-secondary mt-5"></div>-->
                        <!--                <img src="icon/فروش%20سازه.png" alt="" class="card-img-top " style="top:-50px; position: relative" width="75" height="120">-->
                        <div class="col-12 text-light service-child pt-4 "  style="height:100%;background-color: #1c7430; position:absolute;top:100%;text-align: center; font-size: 14px; ">
                            فروش گلخانه‌های هوشمند مینیاتوری
                            با قابلیت کنترل از راه دور
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 mx-2 mb-5 service justify-content-center  d-flex" style="position: relative">
                    <div class="bg-success d-block p-0" style="border-radius: 200px;width: 90px; z-index: 1; position:absolute;opacity:1;top: -10%;" > <img src="/icon/فروش%20سازه.svg" alt="" class="img-fluid " style="  " ></div>
                    <div class="col-12 bg-dark justify-content-center d-flex service-box" style="height: 100%" id="service_box2">
                        <!--                <div class="" style="position: relative;top: -25px; height: 90px;width: 90px"> </div>-->
                        <!--                <div class="col-12 bg-secondary mt-5"></div>-->
                        <!--                <img src="icon/فروش%20آنلاین%20گیاه.png" alt=""  class="card-img-top " style="top:-50px; position: relative" width="100" height="100">-->

                        <div class="col-12 text-light service-child pt-4"  style="height:100%;background-color: #1c7430; position:absolute;top:100%;text-align: center; font-size: 14px;">
                            هوشمندسازی  و طراحی سه بعدی
                            فضاهای سبز داخلی
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 mx-2 service justify-content-center  d-flex">
                    <div class="bg-success d-block p-0" style="border-radius: 200px;width: 90px; z-index: 1; position:absolute;opacity:1;top: -10%;" > <img src="/icon/هوشمندسازی%20فضا.svg" alt="" class="img-fluid " style="  " ></div>

                    <div class="col-12 bg-dark justify-content-center d-flex service-box" style="height: 100%" id="service_box3">

                        <div class="col-12 text-light service-child pt-4"  style="height:75%;background-color: #1c7430; position:absolute;top:100%;text-align: center; font-size: 14px;">
                            فروش آنلاین انواع گل و گیاهان
                            به قیمت تولید عمده گلخانه
                        </div>
                    </div>

                </div>
            </div>
            <div class="container  justify-content-cente  d-flex  " style="">
                <div class="row justify-content-center pt-3 mx-auto col-12">
                    <div class="col-lg-2 col-xs-3 col-sm-3 col-3 text-center mx-3"><img src="/img/انتخاب%20اسکلت%20بندی.svg"class=" services_icons img-fluid"   alt=""><h6 class="services_subtitle text-center mt-3 ">طرح اسکلت بندی </h6></div>
                    <div class="col-lg-2 col-xs-3 col-sm-3 col-3 text-center mx-3"><img src="/img/انتخاب%20گیاه.svg"class="services_icons img-fluid" width="80px" alt=""><h6 class="services_subtitle mt-3 text-center  ">انتخاب گیاه</h6></div>
                    <div class="col-lg-2 col-xs-3 col-sm-3 col-3 text-center mx-3"><img src="/img/هوشمندسازی.svg" class="services_icons img-fluid" alt=""><h6 class="services_subtitle text-center mt-3"> هوشمند سازی </h6></div>
                    <div class="col-lg-2 col-xs-3 col-sm-3 col-3 text-center mx-3"><img src="/img/اپلیکیشن.svg" class="services_icons img-fluid justify-content-center mx-auto " alt=""><h6 class="services_subtitle text-center mt-2 ">کنترل از طریق ا‍‍بلیکیشن </h6></div>
                </div>
            </div>

        </div>
    </div>
    <h1 class="mx-auto justify-content-center d-flex  my-5">دسته بندی گیاهان </h1>
    <div class="container-fluid justify-content-center  mx-auto" style="" >

        <div class="col-12  mt-5">

            <div class="row mx-auto col-sm-12" id="cat-plant">
                <div class="col-lg-3 col-md-3  mx-md-5 px-0" id="" style="height: 500px;border-radius: 10px">
                    <div class="col-12 text-light my-auto py-3 mx-0 px-0"  style="background-color: rgba(255,255,255,0.5); position: absolute; top: 40%;height: 50px;margin-top: -50px;"> <h2 class="my-auto text-center">برگ سبز </h2></div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-8 mx-auto text-center px-0 justify-content-center  mt-5  py-0 px-0  " style=" border-radius: 10px;" >
                    <div class="row mx-auto justify-content-center mt-lg-0 mt-md-0 mt-sm-5   " id="plants">
                        <div class="col-lg-5 col-md-5 col-sm-3 mt-lg-n2 mb-lg-5 my-sm-2 mx-2 ml-lg-4 px-0 " style="position: relative;"><div class="col-12 text-light my-auto py-3" style="background-color: rgba(172,172,172,0.5); position: absolute; top: 30%;height: 50px;margin-top: -50px;"><h4 class="">درختچه </h4></div></div>
                        <div class="col-lg-5 col-md-5 col-sm-3 mt-lg-n2 mb-lg-5 mt-lg-0 my-sm-2 mr-lg-4 mx-2 px-0" style="position: relative;"><div class="col-12 text-light my-auto py-3 mx-0 px-0"  style="background-color: rgba(172,172,172,0.5); position: absolute; top: 30%;height: 50px;margin-top: -50px;"> <h4 class=" my-auto">محصولات اورگانیک </h4></div></div>
                        <div class="col-lg-5 col-md-5 col-sm-3 mt-lg-5 mt-lg-0  my-sm-2 mt-sm-5 ml-lg-4 mx-2 px-0" style="position: relative;"><div class="col-12 text-light my-auto py-3 mx-0 px-0"  style="background-color: rgba(172,172,172,0.5); position: absolute; top: 30%;height: 50px;margin-top: -50px;"> <h4 class=" my-auto">کاکتوس </h4></div> </div>
                        <div class="col-lg-5 col-md-5 col-sm-3 mt-lg-5 px-0 mt-sm-5  my-sm-2 mr-lg-4 mx-2"style="position: relative;"><div class="col-12 text-light my-auto py-3 mx-0 px-0"  style="background-color: rgba(172,172,172,0.5); position: absolute; top: 30%;height: 50px;margin-top: -50px;"> <h4 class="my-auto ">گل های فصلی  </h4></div></div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 mx-md-5 mt-lg-0  mt-sm-5 px-0" style="height: 500px; border-radius: 10px; ">
                    <div class="col-12 text-light my-auto py-3 mx-0 px-0"  style="background-color: rgba(255,255,255,0.5); position: absolute; top: 40%;height: 50px;margin-top: -50px;"> <h2 class="my-auto text-center">گیاهان دارویی </h2></div>
                </div>
            </div>

        </div>

    </div>

    </div>
@endsection
