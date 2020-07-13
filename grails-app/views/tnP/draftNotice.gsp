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
    <asset:link rel="stylesheet" href="bootstrap-select.min.css"/>

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
        <g:applyLayout name="tnpHeader">
        </g:applyLayout>
              <!-- mobile_menu -->
        <div class="col-12 d-block d-lg-none">
            <div id="mobile_menu"></div>
        </div>
    </div>

 <!-- page title area end -->
    <div class="main-content-inner">
        <div class="row align-content-center">
            <div class="gap">
            </div>
            <div class="wizard-container col-12">
                <div class="card wizard-card" id="wizard">
                    <div class="wizard-header">
                            <h3 class="wizard-title text-primary gap">
                                Draft a new Placement Notice
                            </h3>
                            <h5>Fill in the followings to begin drafting</h5>
                        </div>
                        
                    <div class="row justify-content-center gap">
                        <div class="col-md-3">
                                    <div class="form-group label-floating">
                                        <label class="form-control-label">Company Name</label>
                                        <input name="companyName" type="text" class="form-control mt-3">
                                    </div>
                                </div>
                        <div class="col-md-3 col-lg-3 form-group label-floating">
                            <label class="form-control-label">Select Branch</label>
                            <!-- Multiselect dropdown -->
                            <select multiple data-style="bg-white text-info rounded-pill px-4 py-3" class="border-success border-1 selectpicker w-100">
                                <option value="CSE">C.S.E.</option>
                                <option value="IT">I.T.</option>
                                <option value="ME">M.E.</option>
                                <option value="CE">C.E.</option>
                                <option value="EN">E.N.</option>
                                <option value="ECE">E.C.E.</option>
                            </select><!-- End -->
                        </div>
                        <div class="col-md-3 col-lg-3 form-group label-floating">
                            <label  class="form-control-label">Select Candidate List</label>
                            <!-- Multiselect dropdown -->
                            <select multiple data-style="bg-white text-info rounded-pill px-4 py-3" class="border-success selectpicker w-100">
                                <option value="all">All Students</option>
                                <option value="male">Only Male Students</option>
                                <option value="female">Only Female Students</option>
                            </select><!-- End -->
                        </div>
                        <div class="col-md-3 col-lg-3 form-group label-floating">
                            <label class="form-control-label">Select Batch</label>
                            <!-- Multiselect dropdown -->
                            <select multiple data-style="bg-white text-info rounded-pill px-4 py-3" class="border-success border-1 selectpicker w-100">
                                <option value="2019">2019</option>
                                <option value="2020">2020</option>
                                <option value="2021">2021</option>
                            </select><!-- End -->
                        </div>
                        <div class="mt-5 pl--50 form-group label-floating">
                            <a type="submit" href="noticeDrafter" class="btn btn-round btn-info"><i class="fa fa-send"></i> Begin Draft</a>
                        </div>
                    </div>

                </div>  
            </div>
        </div>

    </div>
<asset:javascript src="jquery-2.2.4.min.js"/>
<asset:javascript src="bootstrap.bundle.min.js"/>
<asset:javascript src="bootstrap-select.min.js"/>
<asset:javascript src="popper.min.js"/>
<asset:javascript src="bootstrap.min.js"/>
<asset:javascript src="jquery.slimscroll.min.js"/>
<asset:javascript src="jquery.slicknav.min.js"/>
<asset:javascript src="jquery.bootstrap.js"/>
<asset:javascript src="metisMenu.min.js"/>
<asset:javascript src="jquery.validate.min.js"/>
<asset:javascript src="header.js"/>
<asset:javascript src="plugins.js"/>
<asset:javascript src="draftNotice.js"/>
<asset:javascript src="studentNavbar.js"/>

</body>
</html>
