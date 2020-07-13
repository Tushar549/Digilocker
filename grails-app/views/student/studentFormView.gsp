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

    <div class="row justify-content-center m-4">
        <div class="col-12 justify-content-around" id="displayNavbar">
            <span id="titleTag">User Profile Form</span>
            <a href="#intro">About</a>
            <a href="#education">Education</a>
            <a href="#certificate">Certificates</a>
            <a href="#address">Address</a>
        </div>
    </div>

    <div class="content mt-5">
        <div class="section" id="intro">
            <div class="container">
                <div class="card bg-success">
                    <div class="row justify-content-center">
                        <div class="col-md-12">
                            <div class="card-body">
                                <div class="h1 text-center title">${basicInfo?.firstName} ${basicInfo?.lastName}</div>
                                <h5 class="text-center"><strong> Bachelor of Technology</strong></h5>
                                <h5 class="text-center"><strong> Inderprastha Engineering College</strong></h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="content">
            <div class="section">
                <div class="container">
                    <div class="h3 text-center m-2 p-2 title">About</div>
                    <div class="card">
                        <div class="row">
                            <div class="col-lg-6 col-md-12">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-sm-4"><strong class="text-uppercase">Roll No:</strong></div>
                                        <div class="col-sm-7">${basicInfo?.user?.username}</div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-sm-4"><strong class="text-uppercase">Branch:</strong></div>
                                        <div class="col-sm-8">${basicInfo?.branch}</div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-sm-4"><strong class="text-uppercase">Joining Year:</strong></div>
                                        <div class="col-sm-8">${basicInfo?.joiningYear}</div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-sm-4"><strong class="text-uppercase">Date of Birth:</strong></div>
                                        <div class="col-sm-8">${basicInfo?.dateOfBirth}</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-12">
                                <div class="card-body">
                                    <div class="row mt-3">
                                        <div class="col-sm-4"><strong class="text-uppercase">Gender:</strong></div>
                                        <div class="col-sm-8">${extendedInformation?.gender}</div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-sm-4"><strong class="text-uppercase">Contact No:</strong></div>
                                        <div class="col-sm-8">${basicInfo?.phoneNo}</div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-sm-4"><strong class="text-uppercase">Email:</strong></div>
                                        <div class="col-sm-8">${basicInfo?.email}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="section">
                <div class="container">
                    <div class="h3 text-center m-2 p-2 title">Additional Information</div>
                    <div class="card">
                        <div class="row">
                            <div class="col-lg-6 col-md-12">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-sm-4"><strong class="text-uppercase">Father's Name:</strong></div>
                                        <div class="col-sm-8">${extendedInformation?.fatherName}</div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-sm-4"><strong class="text-uppercase">Mother's Name:</strong></div>
                                        <div class="col-sm-8">${extendedInformation?.motherName}</div>
                                    </div>

                                </div>
                            </div>
                            <div class="col-lg-6 col-md-12">
                                <div class="card-body">
                                    <div class="row mt-3">
                                        <div class="col-sm-4"><strong class="text-uppercase">Parent's Contact No:</strong></div>
                                        <div class="col-sm-8">${extendedInformation?.contactNumber}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="section" id="education">
                <div class="container cc-education">
                    <div class="h3 text-center m-2 p-2 title">Education</div>
                    <div class="card mt-3">
                        <div class="row">
                            <div class="col-md-4 bg-success">
                                <a href="javascript:void();" data-toggle="modal" data-target="#btechDisplayModal">
                                    <div class="card-body cc-education-header">
                                        <p>${basicInfo?.joiningYear} - ${Integer.parseInt(basicInfo?.joiningYear)+4}</p>
                                        <div class="h5">Bachelor's Degree</div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-8">
                                <div class="card-body offset-1">
                                    <div class="h4"><strong>
                                            <a href="javascript:void();" data-toggle="modal" data-target="#btechDisplayModal">
                                                Bachelor of Computer Science
                                            </a>
                                        </strong></div>
                                    <p class="category">Inderprastha Engineering College</p>
                                    <a class="h6">70%</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <g:if test="${ diplomaScore }">
                        <div class="card mt-3">
                            <div class="row">
                                <div class="col-md-4 bg-success">
                                    <a href="javascript:void();" data-toggle="modal" data-target="#diplomaDisplayModal">
                                        <div class="card-body cc-education-header">
                                            <p>${Integer.parseInt(diplomaScore?.diplomaPassYear)-2} - ${diplomaScore?.diplomaPassYear}</p>
                                            <div class="h5">Diploma</div>
                                        </div></a>
                                </div>
                                <div class="col-md-8">
                                    <a href="javascript:void();" data-toggle="modal" data-target="#diplomaDisplayModal">
                                        <div class="card-body offset-1">
                                            <div class="h4"><strong>Diploma</strong></div>
                                            <p class="category">${diplomaScore?.diplomaUniversity}</p>
                                            <a class="h6">${diplomaScore?.diplomaPercent}%</a>
                                        </div></a>
                                </div>
                            </div>
                        </div>
                    </g:if>
                    <g:if test="${ twelvthScore }">
                        <div class="card mt-3">
                            <div class="row">
                                <div class="col-md-4 bg-success">
                                    <a href="javascript:void();" data-toggle="modal" data-target="#xiiDisplayModal">
                                        <div class="card-body cc-education-header">
                                            <p>${Integer.parseInt(twelvthScore?.xiiPassYear)-2} - ${twelvthScore?.xiiPassYear}</p>
                                            <div class="h5">Intermediate</div>
                                        </div></a>
                                </div>
                                <div class="col-md-8">
                                    <a href="javascript:void();" data-toggle="modal" data-target="#xiiDisplayModal">
                                        <div class="card-body offset-1">
                                            <div class="h4"><strong>Intermediate</strong></div>
                                            <p class="category">${twelvthScore?.xiiSchool}</p>
                                            <a class="h6">${twelvthScore?.xiiPercentage}%</a>
                                        </div></a>
                                </div>
                            </div>
                        </div>
                    </g:if>
                    <g:if test="${ tenthScore }">                      
                        <div class="card mt-3">
                            <div class="row">
                                <div class="col-md-4 bg-success">
                                    <a href="javascript:void();" data-toggle="modal" data-target="#xDisplayModal">
                                        <div class="card-body cc-education-header">
                                            <p>${Integer.parseInt(tenthScore?.xPassYear)-2} - ${tenthScore?.xPassYear}</p>
                                            <div class="h5">High School</div>
                                        </div></a>
                                </div>
                                <div class="col-md-8">
                                    <a href="javascript:void();" data-toggle="modal" data-target="#xiiDisplayModal">
                                        <div class="card-body offset-1">
                                            <div class="h4"><strong>High School</strong></div>
                                            <p class="category">${tenthScore?.xSchool}</p>
                                            <a class="h6">${tenthScore?.xPercent}%</a>
                                        </div></a>
                                </div>
                            </div>
                        </div>
                    </g:if>
                </div>
            </div>
            <div class="section" id="certificate">
                <div class="container cc-experience">
                    <div class="h3 text-center m-2 p-2 title">Certificates</div>
                    <div class="card mt-3">
                        <div class="row">
                            <div class="col-md-4 bg-success">
                                <div class="card-body cc-experience-header">
                                    <div class="h5">Co Curriculum</div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="card-body offset-1">
                                    <div class="h5"><strong>Co Curriculum Certificates</strong></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card mt-3">
                        <div class="row">
                            <div class="col-md-4 bg-success">
                                <div class="card-body cc-experience-header">
                                    <div class="h5">Training & Internship</div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="card-body offset-1">
                                    <div class="h5"><strong>Training and Internship Certificates</strong></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section" id="address">
                    <div class="container cc-experience">
                        <div class="h3 text-center m-2 p-2 title">Address</div>
                        <div class="card mt-3">
                            <div class="row">
                                <div class="col-md-4 bg-success">
                                    <a href="javascript:void();" data-toggle="modal" data-target="#permanentAddressModal">
                                        <div class="card-body cc-experience-header">
                                            <div class="h5">Permanent Address</div>
                                        </div></a>
                                </div>
                                <div class="col-md-8">
                                    <a href="javascript:void();" data-toggle="modal" data-target="#permanentAddressModal">
                                        <div class="card-body offset-1">
                                            <div class="h5"><strong>Student Permanent Address</strong></div>
                                        </div></a>
                                </div>
                            </div>
                        </div>
                        <div class="card mt-3">
                            <div class="row">
                                <div class="col-md-4 bg-success">
                                    <a href="javascript:void();" data-toggle="modal" data-target="#correspondenceAddressModal">
                                        <div class="card-body cc-experience-header">
                                            <div class="h5">Correspondence Address</div>
                                        </div></a>
                                </div>
                                <div class="col-md-8">
                                    <a href="javascript:void();" data-toggle="modal" data-target="#correspondenceAddressModal">
                                        <div class="card-body offset-1">
                                            <div class="h5"><strong>Student Correspondence Address</strong></div>
                                        </div></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        <g:applyLayout name="modelLayout">
        </g:applyLayout>
    </div>

<!-- footer area start-->
            <footer class="mt-5">

                <div class="row justify-content-center bg-primary">
                    <div class="col-sm-4 d-flex justify-content-center" id="bottomNavbar">
                        <a href="dashboard">e-IPEC DigiLocker</a>
                        <a href="dashboard"><i class="fa fa-dashboard"></i> Dashboard</a>
                    </div>
                </div>
            


        </footer>
    <!-- footer area end-->
  
<!-- jquery latest version -->
        <asset:javascript src="jquery-2.2.4.min.js"/>
        <!-- bootstrap 4 js -->
        <asset:javascript src="popper.min.js"/>
        <asset:javascript src="bootstrap.min.js"/>
        <asset:javascript src="jquery.slimscroll.min.js"/>
        <asset:javascript src="jquery.slicknav.min.js"/>
        <asset:javascript src="metisMenu.min.js"/>
        <asset:javascript src="plugins.js"/>
        <asset:javascript src="header.js"/>
        <asset:javascript src="scripts.js"/>
        <asset:javascript src="jquery.validate.min.js"/>
        <asset:javascript src="studentNavbar.js"/>
        <asset:javascript src="studentFormView.js"/>

</body>

</html>
