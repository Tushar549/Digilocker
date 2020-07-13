<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
 Created on : 4 Oct, 2019, 10:54:22 PM
    Author     :   Shivay
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
            <h2>Welcome to Dashboard ${name}</h2>
        </div>

        <div class="wizard-container col-9">
            <div class="card wizard-card">
                <div class="wizard-header">
                    <center>Upload Documents to display</center>
                </div>
            </div>    
        </div>
    </div>    
<!-- Textual inputs end -->

<!-- main content area end -->
<!-- footer area start-->

    <div class="footer">
        <div class="container text-center">
            e-IPEC DigiLocker
        </div>
    </div>
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

</body>

</html>
