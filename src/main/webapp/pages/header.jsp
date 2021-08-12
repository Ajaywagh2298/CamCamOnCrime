<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../img/face.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>
       Cam on Crime
    </title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <style>  body{
        -webkit-user-select: none;  /* Chrome all / Safari all */
        -moz-user-select: none;     /* Firefox all */
        -ms-user-select: none;      /* IE 10+ */
        user-select: none;          /* Likely future */
    }</style>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <!-- CSS Files -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../assets/css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="../assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
<div class="wrapper ">
    <div class="sidebar" data-color="black" data-active-color="danger" style="background: #1b1e21;">
        <div class="logo">
            <a href="" class="simple-text logo-mini">
                <div class="logo-image-small">
                    <img src="../img/face.png">
                   <!-- <i class="nc-icon nc-touch-id" style="font-size: 30px;"></i> -->
                </div>
                <!-- <p>CT</p> -->
            </a>
            <a href="#" class="simple-text logo-normal">
                Cam on Crime

            </a>
        </div>
        <div class="sidebar-wrapper">
            <ul class="nav" >
                <li class="">
                    <a href="dashboard.jsp">
                        <i class="fas fa-home-lg-alt" style="color:#00FEE9;"></i>
                        <p style="color:#FFFFFF;font-size: 15px;">Dashboard</p>
                    </a>
                </li>
                <li>
                    <a href="addcriminal.jsp">
                        <i class="fas fa-user-plus" style="color:#00FEE9;"></i>
                        <p style="color:#FFFFFF;font-size: 15px;">Add the Data</p>
                    </a>
                </li>
                <li>
                    <a href="past_history.jsp">
                        <i class="fas fa-fingerprint" style="color:#00FEE9;"></i>
                        <p style="color:#FFFFFF;font-size: 15px;">Find Past History  </p>
                    </a>
                </li>
                <li>
                    <a href="tracking.jsp">
                        <i class="fas fa-webcam" style="color:#00FEE9;"></i>
                        <p style="color:#FFFFFF;font-size: 15px;">Tracking </p>
                    </a>
                </li>
                <li>
                    <a href="add_case_data.jsp">
                        <i class="fas fa-file-plus" style="color:#00FEE9;"></i></i>
                        <p style="color:#FFFFFF;font-size: 13px;">Add the Case Details</p>
                    </a>
                </li>
                <li>
                    <a href="map.jsp">
                        <i class="fas fa-map-marked-alt" style="color:#00FEE9;"></i>
                        <p style="color:#FFFFFF;font-size: 15px;">Map</p>
                    </a>
                </li>
                <li>
                    <a href="officer_registration.jsp">
                        <i class="fas fa-user-tie" style="color:#00FEE9;"></i>
                        <p style="color:#FFFFFF;font-size: 13px;">Registration Officer</p>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/logoutServlet">
                        <i class="fad fa-sign-out-alt" style="color:#00FEE9;"></i>
                        <p style="color:#FFFFFF;font-size: 15px;">logout</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
            <div class="container-fluid">
                <div class="navbar-wrapper">
                    <div class="navbar-toggle">
                        <button type="button" class="navbar-toggler">
                            <span class="navbar-toggler-bar bar1"></span>
                            <span class="navbar-toggler-bar bar2"></span>
                            <span class="navbar-toggler-bar bar3"></span>
                        </button>
                    </div>
                    <a class="navbar-brand" href="javascript:;"></a>
                </div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-bar navbar-kebab"></span>
                    <span class="navbar-toggler-bar navbar-kebab"></span>
                    <span class="navbar-toggler-bar navbar-kebab"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navigation">
                    <form>
                        <div class="input-group no-border">
                            <input type="text" value="" class="form-control" placeholder="Search...">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <i class="nc-icon nc-zoom-split"></i>
                                </div>
                            </div>
                        </div>
                    </form>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link btn-rotate" href="edit_profile.jsp">
                                <i style="font-size:25px;" class="nc-icon nc-settings-gear-65"></i>
                                <p>
                                    <span class="d-lg-none d-md-block">Account</span>
                                </p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- End Navbar -->
