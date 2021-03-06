@extends('Dashbord.layout.add')
@section('content')
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
                    <form class="form-inline">
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>
                    </form>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                   aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

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
                                        <div class="small text-gray-500">Emily Fowler · 58m</div>
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
                                        <div class="small text-gray-500">Jae Chun · 1d</div>
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
                                        <div class="small text-gray-500">Morgan Alvarez · 2d</div>
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
                                        <div class="small text-gray-500">Chicken the Dog · 2w</div>
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
                    <h1 class="h3 mb-2 text-gray-800">User </h1>
                    <p class="mb-4"> .</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">جدول کاربر ها</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
{{--                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">--}}
{{--                                    <thead>--}}
{{--                                    <tr>--}}
{{--                                        <th>نام</th>--}}
{{--                                        <th>نام خانوادگی</th>--}}
{{--                                        <th>شماره تلفن</th>--}}
{{--                                        <th>نما</th>--}}
{{--                                        <th>شروع عضویت</th>--}}
{{--                                        <th>پاک کردن</th>--}}
{{--                                        <th>تغییر</th>--}}
{{--                                        <th><a href="{{route('User.create')}}" class="btn btn-success">AddUser</a></th>--}}

{{--                                    </tr>--}}
{{--                                    </thead>--}}
{{--                                    <tfoot>--}}
{{--                                    <tr>--}}
{{--                                        <th>نام</th>--}}
{{--                                        <th>نام خانوادگی</th>--}}
{{--                                        <th>شماره تلفن</th>--}}
{{--                                        <th>نما</th>--}}
{{--                                        <th>شروع عضویت</th>--}}
{{--                                        <th>پاک کردن</th>--}}
{{--                                        <th>تغییر</th>--}}

{{--                                    </tr>--}}
{{--                                    </tfoot>--}}
{{--                                    <tbody>--}}
{{--                                    @foreach($Users as $User)--}}
{{--                                    <tr>--}}
{{--                                        <td>@isset($User->Profile->firstname){{$User->Profile->firstname}}@endisset</td>--}}
{{--                                        <td>@isset($User->Profile->firstname){{$User->Profile->lastname}}@endisset</td>--}}
{{--                                        <td>{{$User->phonenumber}}</td>--}}
{{--                                        <td><img src="@isset($User->Profile->avatar){{$User->Profile->avatar}}@endisset" alt="" width="100px"></td>--}}
{{--                                        <td>{{$User->created_at}}</td>--}}
{{--                                        <td>--}}
{{--                                            <form action="{{route('User.destroy',$User->id)}}" method="POST">--}}
{{--                                                @method('DELETE')--}}
{{--                                                @csrf--}}

{{--                                                <button class="btn btn-sm btn-danger"type="submit">Delete</button></form></td>--}}
{{--                                        <td>--}}
{{--                                            <form action="{{route('User.edit',$User->id)}}" method="get">--}}
{{--                                                @csrf--}}
{{--                                                <button class="btn btn-success btn-sm">Edite</button>--}}
{{--                                            </form></td>--}}
{{--                                                                            </tr>--}}
{{--                                    @endforeach--}}
{{--                                    </tbody>--}}
{{--                                </table>--}}
                                <table id="datatable" class="display">
                                    <a href="{{route('User.create')}}" class="btn-success btn btn-sm mb-5">AddUser</a>
                                    <thead>
                                    <tr>
                                        <th>آیدی</th>
                                        <th>شماره تلفن</th>
                                        <th>نام </th>
                                        <th>عملیات </th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    </tbody>
                                </table>
                            </div>
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
                        <span>Copyright &copy; Your Website 2020</span>
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
    <div id="confirmModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h2 class="modal-title">Confirmation</h2>
                </div>
                <div class="modal-body">
                    <h4 align="center" style="margin:0;">Are you sure you want to remove this data?</h4>
                </div>
                <div class="modal-footer">
                    <button type="button" name="ok_button" id="ok_button" class="btn btn-danger">OK</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="/vendor/jquery/jquery.min.js"></script>
    <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
{{--    <script src="/vendor/datatables/jquery.dataTables.min.js"></script>--}}
{{--    <script src="/vendor/datatables/dataTables.bootstrap4.min.js"></script>--}}

    <!-- Page level custom scripts -->
{{--    <script src="/js/demo/datatables-demo.js"></script>--}}
    <script>
        $(document).ready( function () {
            $('#datatable').DataTable({
                serverSide: true,
                ajax: {
                    url: '/dashbord/User',
                    type: 'GET'
                },
                processing: true,
                "language": {
                    "url": "//cdn.datatables.net/plug-ins/1.10.22/i18n/Persian.json"
                },
                columns: [
                    {data: 'id', name: 'id'},
                    {data: 'phonenumber', name: 'phonenumber'},
                    {
                        data: null,
                        name: 'profile.firstname',
                        render: data => {
                            // alert(JSON.stringify( data["profile"]))
                            let badges = "";
                            if(data["profile"]){
                                return   data["profile"].firstname;
                            }
                            return "";

                        }
                    },
                    {
                        data: null,
                        name: 'action',
                        render: data => {
                            return '<a href="/dashbord/User/'+data.id+'/edit" class="edit btn btn-primary btn-sm mr-1">Edit</a>'+
                                '<a href="javascript:void(0)" class="delete btn btn-danger btn-sm " id="'+data.id+'">Delete</a>'
                                +'<a href="/dashbord/User/'+data.id+'" class="edit btn btn-primary btn-sm mr-1">view</a>';


                        }
                    },
                    // {data: 'profile.firstname', name: 'profile.firstname'},
                    //{data: 'action', name: 'action', orderable: false, searchable: false},
                ]
            });
        } );
        var user_id;
        $(document).on('click','.delete',function () {
            user_id = $(this).attr('id');
            $('#confirmModal').modal('show');

        })
        $('#ok_button').click(function(){
            $.ajax({
                url:"/dashbord/User/destroy/"+user_id,
                beforeSend:function(){
                    $('#ok_button').text('Deleting...');
                },
                success:function(data)
                {
                    setTimeout(function(){
                        $('#confirmModal').modal('hide');
                        $('#datatable').DataTable().ajax.reload();
                    }, 2000);
                }
            })
        });
        function deluser(e,userid){
            var url = "/dashbord/User/destroy";
            var dltUrl = url+"/"+userid;
            $.ajax({
                url: dltUrl,
                // type: "DELETE",
                cache: false,
            data: {
                _token: '{{ csrf_token() }}'
            },success:function (res){

                        alert(res);
                        e.parentElement.parentElement.parentElement.deleteRow(e.parentElement.parentElement.rowIndex-1)


                }
            })
            ;


        }
    </script>
@endsection
