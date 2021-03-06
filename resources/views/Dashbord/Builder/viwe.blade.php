@extends('Dashbord.layout.add')

@section('content')
    <script src="/vendor/jquery/jquery.min.js"></script>
    <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
    @include('Dashbord.sidebar')
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->


                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                 aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                               placeholder="Search for..." aria-label="Search"
                                               aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter">3+</span>
                            </a>
                            <!-- Dropdown - Alerts -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                 aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">
                                    Alerts Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-primary">
                                            <i class="fas fa-file-alt text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 12, 2019</div>
                                        <span class="font-weight-bold">A new monthly report is ready to download!</span>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-success">
                                            <i class="fas fa-donate text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 7, 2019</div>
                                        $290.29 has been deposited into your account!
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-warning">
                                            <i class="fas fa-exclamation-triangle text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 2, 2019</div>
                                        Spending Alert: We've noticed unusually high spending for your account.
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                            </div>
                        </li>

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter">7</span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                 aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Message Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_1.svg"
                                             alt="">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate">Hi there! I am wondering if you can help me with a
                                            problem I've been having.</div>
                                        <div class="small text-gray-500">Emily Fowler ?? 58m</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_2.svg"
                                             alt="">
                                        <div class="status-indicator"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">I have the photos that you ordered last month, how
                                            would you like them sent to you?</div>
                                        <div class="small text-gray-500">Jae Chun ?? 1d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_3.svg"
                                             alt="">
                                        <div class="status-indicator bg-warning"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Last month's report looks great, I am very happy with
                                            the progress so far, keep up the good work!</div>
                                        <div class="small text-gray-500">Morgan Alvarez ?? 2d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60"
                                             alt="">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Am I a good boy? The reason I ask is because someone
                                            told me that people say this to all dogs, even if they aren't good...</div>
                                        <div class="small text-gray-500">Chicken the Dog ?? 2w</div>
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
                                <img class="img-profile rounded-circle"
                                     src="img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                 aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800 justify-content-center">{{$builder->name}}</h1>
                        <div class="card justify-content-center "><div class="card-header ">
                                <img src="{{$builder->icon}}" class="card-img-top col-5 mx-auto d-block justify-content-center shadow rounded" width="100" alt="">

                        </div>
                            <div class="card-body ">
                                <div class="card-title justify-content-center mx-auto d-flex font-weight-bold"> {{$builder->model}}??????</div>
                                <div class="card-title justify-content-center mx-auto d-flex font-weight-bold">??????{{$builder->width}}</div>
                                <div class="card-title justify-content-center mx-auto d-flex font-weight-bold">??????: {{$builder->length}}</div>
                                <div class="card-title justify-content-center mx-auto d-flex font-weight-bold">??????: {{$builder->picture}}</div>
                                <div class="card-title justify-content-center mx-auto d-flex font-weight-bold">??????: {{$builder->gender->name}}</div>
                                <div class="card-title justify-content-center mx-auto d-flex font-weight-bold">?????? ???? ???????? : {{$builder->watermode->name}}</div>
                            </div>
                        </div>
                    <div class="card">
                        <div class="card-header">
                            <div class="card-title">???????????? ???? ????????</div>
                        </div>
<div class="card-body">
    <form action="{{route('PtB',$builder->id)}}" method="post">
        @csrf
        <div class="row form-group ">
            <select class="col-7 mx-3 itemName form-control" name="states[]" multiple="multiple">
            </select>
            <button class="col-3 mx-1 btn btn-sm btn-success btn">??????????  ???????? ????  ?????? ????????</button>
        </div>
    </form>
    <table id="plant_table">
        <thead>
        <tr>
            <th>????????</th>
            <th>?????? ????????</th>
            <th>????????????</th>

        </tr>
        </thead>
        <tbody>

        </tbody>


    </table>

</div>
                    </div>
                        <div class="card">
                            <div class="card-header">
                                 <div class="card-title">?????????? ????????????</div>
                            </div>
                            <div class="card-body">
                                <div class="status-indicator">
                                    <table class="table">
                                        <tr>
                                            <td>?????????? ???????? ??????</td>
                                            <td>?????????? ????</td>
                                            <td>?????????? ???? ??????</td>
                                            <td>?????????? ??????</td>

                                        </tr>
                                        <tbody>
                                        <td class="table-active">
                                           @if($builder->Comand->vap_status)
                                                <button class="btn btn-success btn-sm">On</button>
                                            @else
                                                <button class="btn btn-danger btn-sm">off</button>
                                            @endif
                                        </td>
                                        <td class="table-active">
                                            @if($builder->Comand->fan_status)
                                                <button class="btn btn-success btn-sm">On</button>
                                            @else
                                                <button class="btn btn-danger btn-sm">off</button>
                                            @endif
                                        </td>
                                        <td class="table-active">
                                            @if($builder->Comand->fogg_status)
                                                <button class="btn btn-success btn-sm">On</button>
                                            @else
                                                <button class="btn btn-danger btn-sm">off</button>
                                            @endif
                                        </td>
                                        <td class="table-active">
                                            @if($builder->Comand->light_status)
                                                <button class="btn btn-success btn-sm">On</button>
                                            @else
                                                <button class="btn btn-danger btn-sm">off</button>
                                            @endif
                                        </td>

                                        </tbody>
                                    </table>
                                    <table id="plant_table">
                                        <thead>
                                        <tr>
                                            <th>????????</th>
                                            <th>?????? ????????</th>
                                            <th>????????????</th>

                                        </tr>
                                        </thead>
                                        <tbody>

                                        </tbody>


                                    </table>
                                    <div style=""> ?????????? ??????????</div>
                                    <table id="datatable" class="display">

                                        <thead>
                                        <tr>
                                            <th>??????</th>
                                            <th>?????????? ??????</th>
                                            <th>?????????? ??????</th>
                                            <th>??????????????</th>
                                            <th>?????? ????</th>
                                            <th>??????????</th>

                                        </tr>
                                        </thead>
                                        <tbody>

                                        </tbody>
                                    </table>
                                </div>
                            </div>









                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Rostmana 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">??</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

        <script>
        $(document).ready( function () {
            $('.itemName').select2({
                placeholder: 'Select an item',
                ajax: {
                    url: '/dashbord/select2Plant',
                    dataType: 'json',
                    delay: 250,
                    processResults: function (data) {

                        return {
                            results:  $.map(data, function (item) {
                                return {
                                    text: item.name,
                                    id: item.id
                                }
                            })
                        };
                    },
                    cache: true
                }
            });
            $('#plant_table').DataTable({
                serverSide: false,
                data:[
                        @foreach($builder->Plant as $Plant)
                    {
                        "id":"{{$Plant->id}}",
                        "name": "{{$Plant->name}}",
                        "Photo":"{{$Plant->photo}}}"

                    },
                    @endforeach
                ]
                // ...
                ,columns: [
                    {data:'id',name:'id'},
                    {data: 'name', name: 'name'},
                    {
                        data: null,
                        name: 'action',
                        render: data => {
                            return '<a href="/dashbord/User/'+data.id+'/edit" class="edit btn btn-primary btn-sm mr-1">??????????????</a>'+
                                '<a href="javascript:void(0)" class="delete btn btn-danger btn-sm " id="'+data.id+'"> ?????? ????????  </a>'
                                ;


                        }
                    }


                    // {data: 'profile.firstname', name: 'profile.firstname'},
                    //{data: 'action', name: 'action', orderable: false, searchable: false},
                ],

            });
            console.log('{{$builder->Log}}')
            $('#datatable').DataTable({
                serverSide: true,
                ajax: {
                    url: '/dashbord/log/{{$builder->id}}',
                    type: 'GET'
                },
                processing: true,
                "language": {
                    "url": "//cdn.datatables.net/plug-ins/1.10.22/i18n/Persian.json"
                },
                columns: [


                    {data: 'temp', name: 'temp'},
                    {data: 'light', name: 'light'},
                    {data: 'humidity_soil', name: 'humidity_soil'},
                    {data: 'humidity_air', name: 'humidity_air'},
                    {data: 'water_level', name: 'water_level'},
                    {data: 'created_at', name: 'created_at'},


                ]
            });
        } );
    </script>


@endsection
