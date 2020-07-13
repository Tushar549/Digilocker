<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<%
response.setHeader("Cache-Control","no-cache");  

response.setHeader("Cache-Control","no-store");     

response.setDateHeader("Expires", 0); 

response.setHeader("Pragma","no-cache");

%>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
                <asset:link rel="icon" href="favicon.ico" type="image/icon type"/>

    <asset:link rel="stylesheet" href="bootstrap.min.css"/>
    <asset:link rel="stylesheet" href="font-awesome.min.css"/>
    <asset:link rel="stylesheet" href="slicknav.min.css"/>

<!-- others css -->
    <asset:link rel="stylesheet" href="typography.css"/>
    <asset:link rel="stylesheet" href="metisMenu.css"/>
    <asset:link rel="stylesheet" href="default-css.css"/>
    <asset:link rel="stylesheet" href="header.css"/>
    <asset:link rel="stylesheet" href="scripts.css"/>
    <asset:link rel="stylesheet" href="responsive.css"/>
    <asset:link rel="stylesheet" href="studentDetails.css"/>



</head>

<body class="body-bg">
    <div id="header">
        <g:applyLayout name="studentHeader">
        </g:applyLayout>
              <!-- mobile_menu -->
        <div class="col-12 d-block d-lg-none">
            <div id="mobile_menu"></div>
        </div>
    </div>

     <!-- page title area end -->
<div class="main-content-inner">
    <div class="gap">
        </div>
   <div class="col-12">
         
<div class="row justify-content-center">
                    <div class="col-4 pull-left">
            <header class="main-head">
                <nav class="headNav">
                    <ul class="menu">
                        <li id="basicInformationButton">
                            <a href="#basicInformationDiv">
                                <i class="fa fa-user-circle-o fa-2x m-1">
                                </i><span>Basic Information</span></a>
                        </li>
                        <li id="additionalInformationButton">
                            <a href="#additionalInformationDiv">
                                <i class="fa fa-vcard fa-2x m-1">
                                </i><span>Additional Information</span></a>
                        </li>
                        <li id="academicsInformationButton">
                            <a href="#academicsInformationDiv">
                                <i class="fa fa-book fa-2x m-1">
                                </i><span>Academic Information</span></a>
                        </li>
                    </ul>
                </nav>
            </header> <!-- //main-head -->
            </div>
            <div class="col-8 card wizard-card ">
            <form id="form">
                            <!-- progressbar -->
                            <!-- divs -->
                <div id="basicInformationDiv" class="page default">
                    <div class="col-auto">
                        <div id="gradientBox">
                            <h2 class="tracking-in-expand  text-center">Student Basic Information</h2>
                        </div>
                        <div class="displayFirst">
                        <div class="row">
                            <div class="col-sm-5 offset-sm-1">
                                <div class="form-group label-floating">
                                    <label class="form-control-label">First Name </label>
                                    <span class="form-control" disabled>${basicInfo?.firstName}</span>
                                </div>
                            </div>
                            <div class="col-sm-5">
                                <div class="form-group label-floating">
                                    <label class="form-control-label">Last Name </label>
                                    <span class="form-control" disabled>${basicInfo?.lastName}</span>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-5 offset-sm-1">
                                <div class="form-group label-floating">
                                    <label class="form-control-label">Roll No </label>
                                    <span class="form-control" disabled> ${basicInfo?.user?.username}</span>
                                </div>
                            </div>
                            <div class="col-sm-5">
                                <div class="form-group label-floating">
                                    <label class="form-control-label"> Course </label>
                                    <span class="form-control" disabled> B. Tech. </span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-5 offset-sm-1">
                                <div class="form-group label-floating">
                                    <label class="form-control-label"> Year </label>
                                    <span class="form-control" disabled> IV </span>
                                </div>
                            </div>
                            <div class="col-sm-5">
                                <div class="form-group label-floating">
                                    <label class="form-control-label"> Section </label>
                                    <span class="form-control" disabled> C </span>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-5 offset-sm-1">
                                <div class="form-group label-floating">
                                    <label class="form-control-label">  Email </label>
                                    <span class="form-control" disabled> ${basicInfo?.email}</span>
                                </div>
                            </div>
                            <div class="col-sm-5">
                                <div class="form-group label-floating">
                                    <label class="form-control-label">Contact Number </label>
                                    <span class="form-control" disabled>${basicInfo?.phoneNo} </span>
                                </div>
                            </div>


                        </div>
                        <div class="row">
                            <div class="col-sm-5 offset-sm-1">
                                <div class="form-group label-floating">
                                    <label class="form-control-label">Gender </label>
                                    <span class="form-control" disabled> ${extendedInformation?.gender}</span>
                                </div>
                            </div>
                            <div class="col-sm-5">
                                <div class="form-group label-floating">
                                    <label class="form-control-label">Date Of Birth </label>
                                    <span class="form-control" disabled> ${basicInfo?.dateOfBirth}  </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
                <div id="additionalInformationDiv" class="page">
                    <div class="col-auto">
                        <div id="gradientBox">

                            <h2 class="tracking-in-expand  text-center">Additional Information</h2>

                        </div>
                        <div class="displaySecond">
                        
                        <div class="row">
                            <div class="col-sm-5 offset-sm-1">
                                <div class="form-group label-floating">
                                    <label class="form-control-label">Father's Name </label>
                                    <span class="form-control" disabled><span class="prepend">Mr. </span>${extendedInformation?.fatherName}  </span>
                                </div>
                            </div>
                            <div class="col-sm-5">
                                <div class="form-group label-floating">
                                    <label class="form-control-label"> Mother's Name </label>
                                    <span class="form-control" disabled><span class="prepend">Mrs. </span>${extendedInformation?.motherName} </span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-5 offset-sm-1">
                                <div class="form-group label-floating">
                                    <label class="form-control-label"> Father's Contact Number </label>
                                    <span class="form-control" disabled>${extendedInformation?.contactNumber} </span>
                                </div>
                            </div>
                            <div class="col-sm-5">
                                <div class="form-group label-floating">
                                    <label class="form-control-label"> Mother's Contact Number </label>
                                    <span class="form-control" disabled> 1234567890 </span>
                                </div>
                            </div>
                        </div>    
                    </div>
                    </div>
                </div>
                <div id="academicsInformationDiv" class="page">
                    <div class="col-auto">

                        <div id="gradientBox">

                            <h2 class="tracking-in-expand text-center">Academics Information</h2>
                        </div>
                        <div class="displayThird">
                        
                        <div class="row">
                            <div class="col-sm-5 offset-sm-1">
                                <div class="form-group label-floating">
                                    <label class="form-control-label"> X<sup>th</sup> Percentage </label>
                                    <span class="form-control" disabled> 85 <span class="append"> %</span></span>
                                </div>
                            </div>
                            <div class="col-sm-5">
                                <div class="form-group label-floating">
                                    <label class="form-control-label"> XII<sup>th</sup> Percentage </label>
                                    <span class="form-control" disabled> 80 <span class="append"> %</span></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-5 offset-sm-1">
                                <div class="form-group label-floating">
                                    <label class="form-control-label"> B. Tech. Percentage </label>
                                    <span class="form-control" disabled> 75 <span class="append"> %</span></span>
                                </div>
                            </div>

                        </div>
                        </div>
                    </div>
                </div>
            </form>
            </div>
        </div>
        </div>
    </div>
  
<!-- jquery latest version -->
<asset:javascript src="jquery-2.2.4.min.js"/>
<!-- bootstrap 4 js -->
<asset:javascript src="bootstrap.min.js"/>
<asset:javascript src="jquery.slimscroll.min.js"/>
<asset:javascript src="jquery.slicknav.min.js"/>
<asset:javascript src="jquery.validate.min.js"/>
<asset:javascript src="metisMenu.min.js"/>
<asset:javascript src="plugins.js"/>
<asset:javascript src="header.js"/>
<asset:javascript src="studentDetails.js"/>
<asset:javascript src="studentNavbar.js"/>



</body>

</html>
