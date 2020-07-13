<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
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
    <asset:link rel="stylesheet" href="responsive.css"/>
    <asset:link rel="stylesheet" href="scripts.css"/>

</head>
<%
response.setHeader("Cache-Control","no-cache");  

response.setHeader("Cache-Control","no-store");     

response.setDateHeader("Expires", 0); 

response.setHeader("Pragma","no-cache");

%>
<body class="body-bg"> 
    <div id="header">
        <g:applyLayout name="adminHeader">
        </g:applyLayout>
              <!-- mobile_menu -->
        <div class="col-12 d-block d-lg-none">
            <div id="mobile_menu"></div>
        </div>
    </div>

 <!-- page title area end -->
    <div class="main-content-inner">
        <div class="row align-content-center">
            <div class="just-middle">
                <h2>Welcome to Dashboard</h2>
            </div>
            <div class="wizard-container">
                <div class="card wizard-card">
                    <div class="just-middle">
                        <h3> Number of Students Registered on DigiLocker</h3>
                    </div>
                    <div class="">
                        <div class="row ml-1 mr-3">
                            <div class="col-md-4 mt-4 mb-0">

                                <div class="seo-fact sbg1">
                                    <div class="p-4 d-flex justify-content-between align-items-center">
                                        <div class="seofct-icon"><h1>CSE</h1></div>
                                        <h5>${cse} Students</h5>
                                    </div>
                                    <g:img dir="images" class="section" file="graph.png"/>
                                </div>

                            </div>
                            <div class="col-md-4 mt-4 mb-0">

                                <div class="seo-fact sbg2">
                                    <div class="p-4 d-flex justify-content-between align-items-center">
                                        <div class="seofct-icon"><h1>IT</h1></div>
                                        <h5>${it} Students</h5>
                                    </div>
                                    <g:img dir="images"  class="section" file="graph.png"/>
                                </div>

                            </div>
                            <div class="col-md-4 mt-4 mb-0">

                                <div class="seo-fact sbg3">
                                    <div class="p-4 d-flex justify-content-between align-items-center">
                                        <div class="seofct-icon"><h1>ME</h1></div>
                                        <h5>${me} Students</h5>
                                    </div>
                                    <g:img dir="images" class="section" file="graph.png"/>
                                </div>
                            </div>
                        </div>
                        <div class="row ml-1 mr-3">
                            <div class="col-md-4 mt-4 mb-0">

                                <div class="seo-fact sbg4">
                                    <div class="p-4 d-flex justify-content-between align-items-center">
                                        <div class="seofct-icon"><h1>CE</h1></div>
                                        <h5>${ce} Students</h5>
                                    </div>
                                    <g:img dir="images" class="section" file="graph.png"/>
                                </div>

                            </div>
                            <div class="col-md-4 mt-4 mb-0">

                                <div class="seo-fact sbg5">
                                    <div class="p-4 d-flex justify-content-between align-items-center">
                                        <div class="seofct-icon"><h1>EE</h1></div>
                                        <h5>${ee} Students</h5>
                                    </div>
                                    <g:img dir="images" class="section" file="graph.png"/>
                                </div>

                            </div>
                            <div class="col-md-4 mt-4 mb-0">

                                <div class="seo-fact sbg6">
                                    <div class="p-4 d-flex justify-content-between align-items-center">
                                        <div class="seofct-icon"><h1>ECE</h1></div>
                                        <h5>${ece} students</h5>
                                    </div>
                                    <g:img dir="images" class="section" file="graph.png"/>
                                </div>

                            </div>
                        </div>   
                    </div>
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

</body>

</html>
