<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.model.Companybean"%>
<%@page import="com.services.CompanyDisplayService"%>
<%@page import="java.util.List"%>

<<html>
    <head>

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>EMS | Users Dashboard</title>
        <!-- Tell the browser to be responsive to screen width -->


        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="icon" href="images/favicon.png">

        <link rel="stylesheet" href="css/notify.css"> 
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <!-- bootstrap datepicker -->
        <link rel="stylesheet" href="css/bootstrap-datepicker.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="css/AdminLTE.min.css">
        <!-- AdminLTE Skins-->
        <link rel="stylesheet" href="css/_all-skins.min.css">
        <!-- Google Font -->
        <!--<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">-->
		<!-- jayram -->
        <link rel="stylesheet" href="css/style1.css">


    </head>



    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">

            <header class="main-header">
                <!-- Logo -->
                <a href="DashboardCompany.html" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>E</b></span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>EMS</b></span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- Notifications: style can be found in dropdown.less -->
                            <li class="dropdown notifications-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-bell-o"></i>
                                    <span class="label label-warning">2</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="header">You have 2 notifications</li>
                                    <li>
                                        <!-- inner menu: contains the actual data -->
                                        <ul class="menu">

                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-warning text-yellow"></i>Please add new users to admin
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-warning text-yellow"></i>Your users are not verified
                                                </a>
                                            </li>


                                        </ul>
                                    </li>
                                    <li class="footer"><a href="Notification.html">View all</a></li>
                                </ul>
                            </li>

                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="images/avatar.png" class="user-image" alt="User Image">
                                    <span class="hidden-xs">EMS Admin</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src=" images/avatar.png" class="img-circle" alt="User Image">

                                        <p>
                                            EMS Admin
                                        </p>
                                    </li>
                                    <!-- Menu Body -->
                                    <li class="user-body">
                                        <div class="pull-left" >
                                            <a href="Reset_Password.html" class="btn btn-default btn-flat">Change Password</a>
                                        </div>

                                        <div class="pull-right" >
                                            <a href="Login.html" class="btn btn-default btn-flat">Sign out</a>
                                        </div>
                                    </li>
                                    <!-- Menu Footer-->

                                </ul>
                            </li>
                            <!-- Control Sidebar Toggle Button -->

                        </ul>
                    </div>
                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src=" images/avatar.png" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p>�</p>
                            <p>EMS Admin</p>
                        </div>
                    </div>
                    <!-- search form -->

                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu" data-widget="tree">
                        <li class="header"></li>



                        <li>
                            <a href="DashboardCompany.jsp">
                                <i class="fa fa-dashboard"></i> <span>Company </span>
                                <span class="pull-right-container">
                                </span>
                            </a>
                        </li>

                        <li>
                            <a href="DashboardUser.html"><i class="fa fa-users"></i> <span>Users</span></a>
                        </li>
                        <li>
                            <a href="DashboardCourse.html"><i class="fa fa-code"></i> <span>Courses</span></a>
                        </li>
                        <li>
                            <a href="DashboardBranches.html"><i class="fa fa-sitemap"></i> <span>Branches</span></a>
                        </li>
                        <li>
                            <a href="DashboardSource.html"><i class="fa fa-cubes"></i><span>Sources</span></a>
                        </li>


                        <li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-cogs"></i> <span>Configuration</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                  <li><a href="ConfigEmail.html"><i class="fa fa-envelope"></i> Email</a></li>
                                  <li><a href="ConfigWhatsApp.html"><i class="fa fa-whatsapp"></i> Whats App</a></li>
                                  <li><a href="ConfigMessage.html"><i class="fa fa-comment-o"></i> Message</a></li>
 
                            </ul>
                        </li>
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Branch Dashboard
                    </h1>
                    <ol class="breadcrumb">

                        <li class="active">Dashboard</li>
                    </ol>
                </section>

                <section class=" content">
                    <!-- row end-->
                    <!-- table div startss-->



                    <!-- /.row -->
                    <!--  <div class="container">-->
                    <div class="row">
                        <div class="col-xs-12">

                            <div class=" box box-primary">
                                <div class="box-header">
                                    <%
										CompanyDisplayService display = new CompanyDisplayService();
										List<Companybean> list = display.getListOfCompanybeans();
										
									%>
                                    <div class="col-md-4">
                                        <div class="form-group" title="Select Company">
                                            <select class="form-control">
                                            <option>All</option>
                                        <% for(Companybean u : list) {
                                        %>
                                            <option><%=u.getCompany_name()%></option>
                                           <% } %>
                                            </select>
                                        </div>
                                    
                                    </div>
                                    
                                    <button type="submit" data-toggle="modal" data-target="#myModal1" class="btn mybtn pull-right pull-rights"> Add  <i class="fa fa-plus"></i></button>


                                    <!-- Modal HTML -->
                                    <div id="myModal1" class="modal fade">


                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header mymodal">

                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
                                                    <h4 class="modal-title">Add / Update User Details</h4>
                                                </div>
                                                <div class="modal-body" style="padding:35px 50px">
                                                    <form role="form">

                                                        <div class="row"><!-- date period row end -->
                                                            <div class="col-md-12">
                                                                <div class="form-group col-md-6">
                                                                    <label for="txtUserId">User Id</label>
                                                                    <input type="text" class="form-control" id="txtUserId" placeholder="1001">
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label for="txtUserName">User Name</label>
                                                                    <input type="text" class="form-control" id="txtUserName" placeholder="101BRN012">
                                                                </div>    
                                                                                                                            
                                                                <div class="form-group col-md-6">
                                                                    <label for="txtEmail">Email Id </label>
                                                                    <input type="email" class="form-control" id="txtEmail" placeholder="abc@gmail.com ">
                                                                </div>

                                                                <div class="form-group col-md-6">
                                                                    <label for="txtPhone">Mobile No. </label>
                                                                    <input type="text" class="form-control" id="txtPhone" placeholder="Enter Mobile Number ">
                                                                </div>
                                                                                                                          
                                                                <div class="form-group col-md-6">
                                                                    <label for="txtCompany">Company Name </label>
                                                                    <input type="text" class="form-control" id="txtCompany" placeholder="enter company name ">
                                                                </div>

                                                                <div class="form-group col-md-6">
                                                                    <label for="exampleInputEmail1">User Type</label>
                                                                    <select class="form-control">
                                                                        <option>Select</option>
                                                                        <option>HR</option>
                                                                        <option>Manager</option>
                                                                        <option>Counselor</option>
                                                                    </select>
                                                                </div>                                                        

                                                                
                                                                
                                                            </div>

                                                            <!-- /.form group -->
                                                        </div><!-- date period row end -->

                                                    </form>
                                                </div>

                                                <div class="modal-footer ">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>

                                                    <button type="button" class="btn mybtn">Save</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>  <!-- model close -->
                                </div>            <!-- /.box-header -->

                                
                                <div class="box-header">

                                    <!-- Modal HTML -->
                                    <div id="myModal2" class="modal fade">


                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">

                                                    <h4 class="modal-title"></h4>
                                                </div>
                                                <div class="modal-body">
                                                    <form role="form">

                                                        <div class="row"><!-- date period row end -->
                                                            <div class="col-md-6">
                                                                 <div class="form-group">
                                                                     <h3 style="color: brown">Do you really want to delete??</h3>
                                                                </div>
                                                        

                                                            </div>

                                                            <!-- /.form group -->
                                                        </div><!-- date period row end -->

                                                    </form>
                                                </div>

                                                <div class="modal-footer ">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>

                                                    <button type="button" class="btn btn-danger">Delete</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>  <!-- model close -->

                                
                                

                                <div class="box-body table-responsive no-padding">
                                    <table class="table table-hover tbl table-bordered">
                                        <tr>
                                            <th>User Id</th>
                                            <th>User Name</th>
                                            <th>Email</th>
                                            <th>Mobile</th>
                                            <th>Company</th>
                                            <th>User Type</th>
                                            <th>Edit/Delete</th>
                                        </tr>

                                        <tr>
                                            <td>101URN131</td>
                                            <td>Yojana Kharve</td>
                                            <td>yojana@enosissolutions.com</td>
                                            <td>7757012051</td>
                                            <td>Enosis Software Solutions</td>
                                            <td>HR</td>
                                     		<td>��<a href="#" data-toggle="modal" data-target="#myModal1" class="fa fa-edit"></a>������<a style="color:red" href="#" data-toggle="modal" data-target="#myModal2" class="fa fa-close"></a></td>
                                        </tr>
                                        
                                        <tr>
                                            <td>102URN133</td>
                                            <td>Sachin Rawool</td>
                                            <td>sachin@enosissolutions.com</td>
                                            <td>7757012054</td>
                                            <td>Enosis Software Solutions</td>
                                            <td>Manager</td>
                                     		<td>��<a href="#" data-toggle="modal" data-target="#myModal1" class="fa fa-edit"></a>������<a style="color:red" href="#" data-toggle="modal" data-target="#myModal2" class="fa fa-close"></a></td>
                                        </tr>
                                        
                                        <tr>
                                            <td>103URN135</td>
                                            <td>Vishaka Madam</td>
                                            <td>vishaka@smartview.com</td>
                                            <td>8787019051</td>
                                            <td>Smartview Technologies</td>
                                            <td>Manager</td>
                                     		<td>��<a href="#" data-toggle="modal" data-target="#myModal1" class="fa fa-edit"></a>������<a style="color:red" href="#" data-toggle="modal" data-target="#myModal2" class="fa fa-close"></a></td>
                                        </tr>
                                        
                                        

                                        <!--<td><span class="label label-success">Approved</span></td>-->

                                    </table>
                                </div>
                            </div>
                            <!-- /.box -->
                        </div>
                    </div>

                </section>

                <!-- section 2 ends-->



            </div>

            <!-- /.content-wrapper -->
            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Version</b> 1.0.1
                </div>
                <strong>Copyright &copy; 2018 <a href="https://enosislearning.com">Enosis Learning</a>.</strong> All rights
                reserved.
            </footer>
        </div>

        <!-- /.control-sidebar -->
        <!-- Add /labele sidebar's background. /labelis div must be placed
immediately after /labele control sidebar -->

        <!-- ./wrapper -->

        <!-- jQuery 3 -->
        <script src="js/jquery.min.js"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Select2 -->
        <script src="js/select2.full.min.js"></script>
        <!-- bootstrap datepicker -->
        <script src="js/bootstrap-datepicker.min.js"></script>
        <!-- SlimScroll -->
        <script src="js/jquery.slimscroll.min.js"></script>
        <!-- iCheck 1.0.1 -->
        <script src="js/icheck.min.js"></script>
        <!-- AdminLTE App -->
        <script src="js/adminlte.min.js"></script>


        <!-- Page script -->
        <script>
            $(function () {
                //Initialize Select2 Elements
                $('.select2').select2()


                //Date picker
                $('#datepicker').datepicker({
                    autoclose: true
                })

                //iCheck for checkbox and radio inputs
                $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
                    checkboxClass: 'icheckbox_minimal-blue',
                    radioClass   : 'iradio_minimal-blue'
                })
                //Red color scheme for iCheck
                $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
                    checkboxClass: 'icheckbox_minimal-red',
                    radioClass   : 'iradio_minimal-red'
                })
                //Flat red color scheme for iCheck
                $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
                    checkboxClass: 'icheckbox_flat-green',
                    radioClass   : 'iradio_flat-green'
                })

            })


            function toggleIcon(e) {
                $(e.target)
                    .prev('.panel-heading')
                    .find(".more-less")
                    .toggleClass('glyphicon-plus glyphicon-minus');
            }
            $('.panel-group').on('hidden.bs.collapse', toggleIcon);
            $('.panel-group').on('shown.bs.collapse', toggleIcon);

        </script>

    </body>
</html>
