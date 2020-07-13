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

 <!-- page title area end -->
    <div class="main-content-inner">
        <div class="just-middle">
        </div>

        <div class="wizard-container col-8">
            <div class="card wizard-card">
                <g:form controller="Student" action="updatePassword" type="POST" id="changePasswordForm" name="changePasswordForm">
                    <div class="wizard-header">

                        <h3 class="wizard-title text-center">Change Password</h3>

                    </div>
                    <div class="row justify-content-center">
                        
                        <div class="col-8" id="borderbox">
                            <g:message  code="${flash.message}"/>
                
                            <div class="row">
                                <div class="col-sm-10 offset-sm-1">
                                    <div class="form-group label-floating">
                                        <label class="form-control-label">Current Password</label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                            <input id="currentPassword" type="password" class="form-control" name="currentPassword" placeholder="Enter Current Password">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-10 offset-sm-1">
                                    <div class="form-group label-floating">
                                        <label class="form-control-label">Enter New Password</label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-eye"></i></span>
                                            <input id="newPassword" type="password" class="form-control" name="newPassword" placeholder="Enter New Password">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-10 offset-sm-1">
                                    <div class="form-group label-floating">
                                        <label class="form-control-label">Current Password</label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-eye"></i></span>
                                            <input id="reNewPassword" type="password" class="form-control" name="reNewPassword" placeholder="Re Enter New Password">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="row justify-content-center">
                        <div class="col-9">
                            <input type="submit" class="btn btn-success pull-right" value="Change Password"/>
                        </div>
                    </div>

                </g:form>                    
            </div>
        </div>
    </div>


 
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

</body>

</html>

