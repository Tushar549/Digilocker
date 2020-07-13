<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta charset="utf-8">

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
                    <!-- profile info & task notification -->
                    <div class="col-md-9 clearfix text-right">
                        <div class="d-md-inline-block d-block mr-md-4">
                            <ul class="notification-area pull-right mt-2">
                                <li class="dropdown">
                                    <i class="fa fa-envelope dropdown-toggle" data-toggle="dropdown">
                                        <span>3</span>
                                    </i>
                                    <div class="dropdown-menu bell-notify-box notify-box">
                                        <span class="notify-title">You have 3 new notifications </span>
                                        <div class="nofity-list">
                                            <a href="#" class="notify-item">
                                                <div class="notify-bell"><i class="fa fa-bell btn-info"></i></div>
                                                <div class="notify-text">
                                                    <p>Upload your Profile Information</p>
                                                    <span>Just Now</span>
                                                </div>
                                            </a>
                                            <a href="#" class="notify-item">
                                                <div class="notify-bell"><i class="fa fa-bell btn-info"></i></div>
                                                <div class="notify-text">
                                                    <p>You have Changed Your Password</p>
                                                    <span>Just Now</span>
                                                </div>
                                            </a>
                                            <a href="#" class="notify-item">
                                                <div class="notify-bell"><i class="fa fa-bell btn-info"></i></div>
                                                <div class="notify-text">
                                                    <p>Welcome to e-IPEC</p>
                                                    <span>Just Now</span>
                                                </div>
                                            </a>
                                            <a href="#" class="notify-item">
                                                <div class="notify-bell"><i class="fa fa-bell btn-info"></i></div>
                                                <div class="notify-text">
                                                    <p>Another Notification</p>
                                                    <span>5 Mins Ago</span>
                                                </div>
                                            </a>
                                            <a href="#" class="notify-item">
                                                <div class="notify-bell"><i class="fa fa-bell btn-info"></i></div>
                                                <div class="notify-text">
                                                    <p>Another Notification</p>
                                                    <span>5 Mins Ago</span>
                                                </div>
                                            </a>
                                            <a href="#" class="notify-item">
                                                <div class="notify-bell"><i class="fa fa-bell btn-info"></i></div>
                                                <div class="notify-text">
                                                    <p>Last Notification</p>
                                                    <span>10 mins ago</span>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="clearfix d-md-inline-block d-block">
                            <div class="user-profile m-0">
                                <g:img class="avatar user-thumb" src="avatar.png" alt="avatar"/>
                                <h4 class="user-name dropdown-toggle" data-toggle="dropdown">${basicInfo?.firstName} <i class="fa fa-angle-down"></i></h4>
                                <div class="dropdown-menu">
                                    <g:link controller="student" action="changePassword"  class="dropdown-item" > Change Password
                                    </g:link>
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
                                    <li class="nav">
                                        <a href="javascript:void(0)"><i class="fa fa-folder"/></i><span>upload information</span></a>
                                        <ul class="submenu">
                                            <li class="nav"><a href="javascript:void();"data-toggle="modal" data-target="#btechModal">b. tech. mark sheet</a></li>
                                            <li class="nav"><a href="javascript:void();" data-toggle="modal" data-target="#coCurriculumModal">co curriculum certificates</a></li>
                                            <li class="nav"><a href="javascript:void();" data-toggle="modal" data-target="#trainingInternshipModal">training & internship certificate</a></li>
                                            <li class="nav"><a href="javascript:void();">placement details</a></li>
                                        </ul>
                                    </li>

                                    <g:if test="${basicInfo?.status.equals("false")}">
                                        <li class="nav">
                                            <a href="studentDetailsForm"><i class="fa fa-user"></i><span>user profile form</span></a>
                                        </li>
                                    </g:if>
                                    <g:else>
                                        <li class="nav">
                                            <a href="studentFormView"><i class="fa fa-vcard"></i><span>view user profile</span></a>
                                        </li>
                                    </g:else>

                                </ul>
                            </nav>
                        </div>
                    </div>
<!-- mobile_menu -->
                    <div class="col-lg-3 clearfix">
                        <div class="pull-right">
                            <g:form method="post" controller="logout" useToken="true"><button type="submit" class="btn btn-sm btn-link"><i class="fa fa-sign-out fa-lg"></i> Logout</button></g:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                                                            <!-- header area end -->                                
    </div>   

    <div>
        <g:applyLayout name="coCurriculum">
        </g:applyLayout>
        <g:applyLayout name="bTechMarksheet">
        </g:applyLayout>
        <g:applyLayout name="trainingAndInternship">
        </g:applyLayout>
    </div>




</body>
</html>