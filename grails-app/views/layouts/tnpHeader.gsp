<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta charset="utf-8">
                
    <title>e-IPEC</title>

    </head>

    <body class="body-bg">
        <div class="horizontal-main-wrapper">
            <!-- main header area start -->
            <div class="mainheader-area">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-md-3">
                            <div class="logo">
                                <a href="index.html"><g:img src="logo.png" alt="logo"/></a>
                            </div>
                        </div>
                        <!-- profile info -->
                        <div class="col-md-9 clearfix text-right">
                            <div class="clearfix d-md-inline-block d-block">
                                <div class="user-profile m-0">
                                    <g:img class="avatar user-thumb" src="avatar.png" alt="avatar"/>
                                    <h4 class="user-name dropdown-toggle" data-toggle="dropdown">${tnPInforamtion?.firstName} ${tnPInforamtion?.lastName}<i class="fa fa-angle-down"></i></h4>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#">Change Password</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- main header area end -->
                <!-- header area start -->
        <div class="header-area header-bottom">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-9  d-none d-lg-block">
                        <div class="horizontal-menu">
                            <nav>
                                <ul id="nav_menu">
                                    <li class="nav">
                                        <a href="Dashboard"><i class="fa fa-dashboard"></i><span>dashboard</span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><i class="fa fa-list-alt"/></i><span>generate report</span></a>
                                        <ul class="submenu">
                                            <li><a href="branchSearch">Branch wise</a></li>
                                            <li><a href="sectionSearch">Section wise</a></li>
                                            <li><a href="#">B.Tech. Percentile wise</a></li>
                                            <li><a href="#">Placement wise</a></li>
                                            <li><a href="#">Year wise</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><i class="fa fa-comment"></i><span>send messages</span></a>
                                        <ul class="submenu">
                                            <li><a href="messageStudent">Message Student</a></li>
                                            <li><a href="#">Message Branch</a></li>
                                            <li><a href="#">Message Year</a></li>
                                            <li><a href="#">Untitled</a></li>
                                            <li><a href="#">Untitled</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><i class="fa fa-search"></i><span>Search</span></a>
                                        <ul class="submenu">
                                            <li><a href="#">User Search</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="draftNotice"><i class="fa fa-envelope"></i><span>Draft Notice</span></a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="col-lg-3 clearfix">
                        <div class="pull-right">
                            <g:form method="post" controller="logout" useToken="true"><button type="submit" class="btn btn-sm btn-link"><i class="fa fa-sign-out fa-lg"></i> Logout</button></g:form>
                    </div>
                    </div>
                    
                </div>
            </div>
        <!-- header area end -->                                
    </div>
</div>
</body>
</html>
