<nav class="navbar navbar-expand-lg px-0 navbar-light bg-light fixed-top font-weight-bold " style="font-size: 14px; border-radius: 0; ">
    <button class="navbar-toggler  float-right" style="" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class=" float-left  float-right">
            <img src="/icon/Menu.png" class="img-fluid mr-5" width="40px" alt="">
        </span>
    </button>
    <img src="/img/logo.png "   width="75px" height="75px" class="img-fluid my-0 mr-5 " alt="">


    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mx-auto">
            <li class="nav-item active mx-3">
                <a class="nav-link" href="{{route('indexPage')}}">خانه <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item mx-3">
                <a class="nav-link" href="{{route('404')}}">وبلاگ</a>
            </li>
            <li class="nav-item  mx-3 disabled">
                <a class="nav-link" href="{{route('404')}}">فروشگاه</a>
{{--                <a class="nav-link dropdown-toggle" href="{{route('404')}}" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--}}
{{--                    فروشگاه--}}
{{--                </a>--}}
{{--                <div class="dropdown-menu" aria-labelledby="navbarDropdown">--}}
{{--                    <a class="dropdown-item" href="#">Action</a>--}}
{{--                    <a class="dropdown-item" href="#">Another action</a>--}}
{{--                    <div class="dropdown-divider"></div>--}}
{{--                    <a class="dropdown-item" href="#">Something else here</a>--}}
{{--                </div>--}}
            </li>
            <li class="nav-item mx-3">
                <a class="nav-link " href="{{route('appPage')}}">نرم افزار </a>
            </li>
            <li class="nav-item mx-3">
                <a class="nav-link " href="{{route('aboutPage')}}">درباره ما</a>
            </li>
            <li class="nav-item mx-3">
                <a class="nav-link " href="{{route('contactPage')}}">تماس باما</a>
            </li>

        </ul>
{{--        <form class="form-inline my-2 my-lg-0">--}}
{{--            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">--}}
{{--            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>--}}
{{--        </form>--}}
{{--      todo>> if User logined src defualt  change to src User avatar   --}}

    </div>
    <div class="rounded-circle ml-5" style="width:50px;height: 50px;" onload=""><img src="/icon/user.png" class="img-fluid" alt=""></div>
</nav>
