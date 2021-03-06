@extends('Website.layout.app')

@section('content')
    <div class="container-fluid px-0" id="back-about" style="margin-bottom: 100px; height: 536px">
        <h1 class="text-light" style="padding-top:100px;padding-right: 200px;font-size: 34px;font-weight: bold "> درباره ما</h1>
    </div>

    <div class="container col-lg-12 col-md-12 col-sm-11  my-5 mx-auto text-center" style="">
        <div class="row col-lg-12 shadow col-md-12" style="">
            <div class="col-lg-4 col-sm-12 bg-light rounded-right mr-0  " id="back-aboutME">
            </div>
            <div class="col-lg-8 col-sm-12 rounded-left justify-content-center   py-5 py-sm-0   px-5" style="font-size:14px;background-color: #dedede;text-align: center; ">
                <h2 class="mt-5" style="font-weight: bold ">استارتاپی بر پایه اینترنت اشیاء </h2>
                <br>
                <p class="mt-4" style="line-height: 35px ;text-align: center;font-size: 1.8rem">آغاز فعالیت تیم رٌست مانا بر پایه ایده‌ای هوشمندانه در سه خدمت طراحی گلخانه‌هایی دکوراتیو در ابعاد محدود، طراحی فضاهای سبز داخلی، فروش آنلاین گیاهان با قابلیت کنترل از راه دور توسط اپلیکیشن  در دی ماه سال ۱۳۹۸ شکل گرفت. هدف اصلی این مجموعه فراهم آوردن رویشی ماندگار با استفاده از سیستم اتوماسیون هوشمند برای گیاهان با شرایط نگه‌داری متفاوت و اقلیم‌های خاص می‌باشد. در این زمینه نیروهای متخصص با استفاده از فناوری‌های نوین، پیوسته در تلاش می‌باشند تا محصولی با کیفیت و کارآمد را متناسب با سلیقه مصرف‌کننده عرضه نمایند. لازم به ذکر است که این مجموعه آماده به همکاری با گروه‌های طراحی و معماری می‌باشد و با تلاشی روز افزون در راه پیاده‌سازی ایده‌های جدید و متفاوت گام برمی‌دارد. در حال حاضر رست‌مانا نمونه اولیه خود را آماده‌سازی نموده است و به ارائه محصول نهایی خود پرداخته است.</p>
            </div>
        </div>
    </div>
    <div class="container-fluid col-lg-12 col-md-12 my-5 pt-0" style="background-color:#d5d5d5;">
                <div class="row justify-content-center "style="height: 30%;">
                        <div class="col-2  d-flex mx-1 mt-5" style="height: 100%;display: block"><div class="row"><img src="/img/aboutMe/application.svg.svg" height="100px" class="col-12 mx-auto " alt=""> <br><h3 class="col-10 mx-auto mt-5 text-center" style="font-size: 1.2rem;">سیستم اتوماسیون هوشمند
                                کنترل شرایط نگه‌داری گیاهان</h3></div></div>
                        <div class="col-2  d-flex mx-1 mt-5" style="height: 100%;display: block"><div class="row"><img src="/img/aboutMe/بانک%20اطلاعاتی%20گیاهان.svg.svg" height="100px" class="col-12 mx-auto " alt=""><br><h3 style="font-size: 1.2rem;" class="col-10 mx-auto mt-5 text-center">بانک اطلاعاتی معرفی
                                    شرایط نگه‌داری انواع گیاهان</h3> </div> </div>
                        <div class="col-2  d-flex mx-1 mt-5" style="height: 100%;display: block"><div class="row"> <img src="/img/aboutMe/ضمانت%20رویش%20ماندگار.svg" height="100px" class="col-12 mx-auto " alt=""><br><h3 style="font-size: 1.2rem;" class="col-10 mx-auto mt-5 text-center">ارائه ضمانت
                                    <br> رویش پایدار گیاهان</h3></div></div>
                    <div class="col-2  d-flex mx-1 mt-5" style="height: 100%;display: block"><div class="row"><img src="/img/aboutMe/طراحی%20منحصر%20به%20فرد.svg.svg"  height="100px" class="col-12 mx-auto" alt=""><br><h3 style="font-size: 1.2rem;" class="col-10 mx-auto mt-5 text-center">طراحی منحصر به فرد و
                                متناسب با دکوراسیون داخلی </h3></div></div>
                        <div class="col-2  d-flex mx-1 mt-5 py-0" style="height: 100%;display: block"><div class="row"><img src="/img/aboutMe/هوشمندسازی.svg.svg"  height="100px" class="col-12 mx-auto" alt=""><br><h3 style="font-size: 1.2rem;" class="col-10 mx-auto mt-5 text-center">سیستم اتوماسیون هوشمند<br> کنترل شرایط نگه‌داری گیاهان</h3></div> </div>
                </div>
    </div>
    <div class="container col-12 justify-content-center my-5 mx-auto" style="">
        <h1 class="text-center">بیشتر با رٌست مانا آشنا شوید</h1>
        <div class="row col-12">
        <video class=" col-lg-6 px-0  col-sm-12 mx-auto justify-content-center d-flex  border " controls >
            <source class="col-lg-6 col-md-6 mx-auto justify-content-center d-flex " src="./video/rostmana video.mp4" type="video/mp4">
{{--            <source src="./video/rostmana video.mp4" type="video/ogg">--}}
        </video>

        </div>
        <div class=" mx-auto col-12 text-center mt-5" style="">
            <br>
         <h4>   رٌست مانا با تولید گلخانه‌های هوشمند ملی و هوشمندسازی فضاهای سبز داخلی، گامی مؤثر را در جهت تلفیق هنر و طبیعت، با ارئه طراحی و سبکی نوین در دکوراسیون داخلی بر‌می‌دارد.
         </h4>
        </div>
    </div>
    <div class="container-fluid  col-12" style="" id="back-info">
        <div class="col-12 mx-auto bg-light py-1 px-5" style="margin-top: 100px;border-radius: 20px">
        <h1 class="font-weight-bold mr-5  mt-1">محل کار ما</h1>
            <p class="font-weight-light mt-3" style="line-height: 30px;font-size: 1.3rem">

                تیم رٌست مانا در مجموعه شتابدهی نکسترا فعالیت خود را آغاز نموده است. روحیه کار تیمی و ارتباطات مؤثر در محیط کاری  سبب شده است تا شاهد موفقیت‌های چشم‌گیر در زمینه‌های مختلف برای ما فراهم گردد. جذابیت محیط کار و همدلی اعضاء تیم، عاملی بر توسعه کسب و کار ما می‌باشد. در حال حاضر افراد متخصص در حوزه‌های مختلف برای توسعه خدمات و بهبود کیفیت محصولات رست‌مانا در تلاش می‌باشند.
            </p>
        </div>
        <div class="row  col-12   mx-auto justify-content-center" id="P_Profile" >
            <div class="col-lg-3 col-sm-12  mx-5 bg-light my-5 justify-content-center "style="">

                <div class=" col-6 mx-auto mt-5 " style="border-radius: 20px;"><img src="../Profile/تینا%20حسن%20ولی.JPG" class="img-fluid shadow  " style="border-radius: 20px" alt=""></div>

                <h1 class="text-center mt-5">تینا حسن ولی</h1>
                <h5 class="text-center">هم‌بنیان‌گذار و مدیر فنی</h5>
                <h6 class="text-center">کارشناس ارشد مکانیک - طراحی جامدات</h6>

            </div>
            <div class="col-lg-3 col-sm-12 mx-5 bg-light my-5" style="">
                <div class=" col-6 mx-auto mt-5 " style="border-radius: 20px;"><img src="../Profile/ادیبه%20چوپانی.JPG" class="img-fluid shadow  " style="border-radius: 20px" alt=""></div>
                <h1 class="text-center mt-5">ادیبه چوپانی</h1>
                <h5 class="text-center">هم‌بنیان‌گذار و مدیر طراحی</h5>
                <h6 class="text-center">کارشناس ارشد مکانیک - طراحی جامدات</h6>
            </div>
            <div class="col-lg-3 col-sm-12 mx-5 bg-light my-5" style="">
                <div class=" col-6 mx-auto mt-5 " style="border-radius: 20px;"><img src="../Profile/ابولفضل%20رحمانی.jpg" class="img-fluid shadow  " style="border-radius: 20px" alt=""></div>
                <h1 class="text-center mt-5">ابوالفضل رحمانی</h1>
                <h5 class="text-center">Full Stack Web Developer</h5>
                <h6 class="text-center">مهندسی کامپیوتر - نرم‌افزار</h6>
            </div>
            <div class="col-lg-3 col-sm-12 mx-5 bg-light my-5" style="">
                <div class=" col-6 mx-auto mt-5 " style="border-radius: 20px;"><img src="../Profile/عرفان%20اخوان%20راد.jpeg" class="img-fluid shadow  " style="border-radius: 20px" alt=""></div>
                <h1 class="text-center mt-5">عرفان اخوان‌ راد</h1>
                <h5 class="text-center">Application Developer</h5>
                <h6 class="text-center">مهندسی کامپیوتر - نرم‌افزار</h6>
            </div>
            <div class="col-lg-3 col-sm-12 mx-5 bg-light my-5" style="">
                <div class=" col-6 mx-auto mt-5 " style="border-radius: 20px;"><img src="/Profile/photo_2021-02-17_20-18-49.jpg" class="img-fluid shadow  " style="border-radius: 20px" alt=""></div>
                <h1 class="text-center mt-5">پویا بیمون کلیمی</h1>
                <h5 class="text-center ">سرپرست بخش الکترونیک</h5>
                <h6 class="text-center">مهندسی برق - قدرت</h6>
            </div>
            <div class="col-lg-3 col-sm-12 mx-5 bg-light my-5" style="">
                <div class=" col-6 mx-auto mt-5 " style="border-radius: 20px;"><img src="/Profile/بابک%20صادقی.jpeg" class="img-fluid shadow  " style="border-radius: 20px" alt=""></div>
                <h1 class="text-center mt-5">بابک صادقی‌نسب</h1>
                <h5 class="text-center ">سرپرست کارگاه ساخت</h5>
                <h6 class="text-center">مهندسی مکانیک - ساخت و تولید</h6>
            </div>
        </div>
</div>





@endsection
