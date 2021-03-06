@extends('Website.layout.app')

@section('content')
    <div class="container-fluid px-0">
        <div class="col-12 px-0 mt-0"  id="contant_back" >
<h1 style="padding-top: 100px;padding-right: 200px ;font-size: 38px ;font-weight: bold" class="text-light">تماس باما</h1>
        </div>
        <div class="col-12 px-0 overflow-hidden "style="" >
      <div class="row h-100">
        <div class="col-3 mx-0 h-100 p-5 " style="background-color: #83c365"><img class="img-fluid mx-auto justify-content-center d-flex px-5 my-auto mx-auto  " width="300px" src="/img/contactus/همکاری%20با%20ما.svg" alt="">
            <h3 class="text-center" >همکاری باما</h3>
        </div>
        <div class="col-3 mx-0 h-100 p-5 " ><img class="img-fluid mx-auto justify-content-center d-flex px-5 mx-auto " src="/img/contactus/پشتیبانی.svg" width="300px" alt="">
            <h3 class="text-center" >پشتیبانی</h3>
        </div>
        <div class="col-3 mx-0 h-100 p-5 "style="background-color: #83c365"><img class="img-fluid px-5 mx-auto justify-content-center d-flex" width="300px"  src="/img/contactus/تماس%20با%20ما.svg" alt="">
            <h3 class="text-center" >تماس باما</h3>
        </div>
          <div class="col-3 mx-0 h-100 p-5 "style=""><img class="img-fluid px-5 mx-auto justify-content-center d-flex" width="300px"  src="/img/contactus/تماس%20با%20ما.svg" alt="">
              <h3 class="text-center" >سوالات رایج</h3>
          </div>
      </div>

      </div>

        <div class="col-12 " >
            <h1 class="mx-auto text-center my-5">دفتر کار ما </h1>
            <p class="mx-auto px-0  col-10 justify-content-center" style="line-height : 40px; font-size: 18px;text-align: center; ">
                مجموعه رست‌مانا همواره در تلاش می‌باشد که با ارائه بهترین کیفیت از خدمات خود، رضایت مشتریان خود را جلب نمایید. برای مشاوره  آنلاین شما می‌توانید با شماره تماس و ایمیل‌های زیر ارتباط برقرار کنید. هم‌چنین برای کسب اطلاعات بیشتر می‌توانید به دفتر ما مراجعه فرمایید.
            </p>


        </div>
        <div class="col-12 mt-5" style="margin-top: 150px!important;">

            <div class="row" style="height: 400px">

                <div class="col-6 h-100 " style="background-color: #83c365">
                <h1 class="text-center mt-5 " >راه های ارتباطی با ما </h1>
                    <h2 class="text-center mt-5">

                <img  class="img-fluid" src="/img/contactus/location.svg.svg" width="50px">
                        محل کار
                    </h2>
                    <h4 class="text-center mt-5">
                        تهران، کارگر شمالی، پردیس فنی دانشگاه تهران، مرکز نوآوری نکسترا
                    </h4>
                    <h2 class="text-center mt-5">

                        تماس باما
                    </h2>
                    <div class="row col-12 mt-5 justify-content-center">
                   <div class="col-5 pr-5">
                       <h4 class="text-center mr-5">09021442158<img src="/img/contactus/call.png" width="20px" alt="">
                       </h4>
                   </div>
                        <div class="col-6 text-center">
                            <h4 class="text-center">
                                info@rostmana.com <img src="/img/contactus/email.png" width="20px" alt="">
                            </h4>


                        </div>
                    </div>

                </div>



                <div class="col-6 h-100 px-0 overflow-hidden " >
                    <img src="/img/contactus/location%201.png" class="img-fluid" alt="">

                </div>


            </div>

        </div>


        <div class="col-12 px-0 position-relative" style="" >
            <img src="/img/contactus/pexels-brett-sayles-2384574.jpg"  height="600px" width="100%" style="opacity: 0.5" alt="">

          <div class="position-absolute col-12 px-0 justify-content-center" style="top: 0" >
              <h1 class="text-center my-5 " style="font-weight: bold">تماس با ما</h1>
              <h3 class="text-center my-5">برای کسب اطلاعات بیشتر و یا درخواست اعزام تیم مشاور به محل، با ما از طریق ایمیل در تماس باشید.</h3>
              <form action="" class="col-4 py-3 mt-5  mx-auto px-5 bg-light d-block " style="border-radius: 20px;background-color: #b5b9b9;font-size: 14px" >
                 <div class="form-group text-center mx-auto">
                  <label for="firstnameLastname " class="">نام و نام خانوادکی</label>
                     <input type="text" style="border: none;height: 30px;border-radius: 5px" class="form-control">
                 </div>
                  <div class="form-group text-center mx-auto">
                      <label for="email" class="">ادرس ایمیل</label>
                      <input type="email" style="border: none;height: 30px;border-radius: 5px"class="form-control">
                  </div>
                  <div class="form-group text-center mx-auto">
                      <label for="massage" class="">پیام شما</label>
                      <textarea  class="form-control "  style="border: none;border-radius: 5px;  resize: none;" id="massage" name="massage" rows="4" cols="50"></textarea>
                  </div>
                  <div class="form-group text-center mx-auto">
                      <button style="background-color: white;border-radius: 10px" class="btn-light btn btn-lg col-4  "> ارسال</button>
                  </div>



              </form>

          </div>

        </div>

    </div>

@endsection
