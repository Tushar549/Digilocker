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
    <asset:link rel="icon" href="favicon.ico" type="image/icon type"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
                <div class="row justify-content-center">
                    <div class="card wizard-card">
                        <div class="row justify-content-center">
                            <div class="col-11">
                                <h2 class="text-center border-bottom border-primary m-3 p-2">INDERPRASTHA ENGINEERING COLLEGE, GHAZIABAD</h2>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-11 border border-dark">
                                <h4 class="text-center m-1 p-1">Notice for <strong class="text-primary">B TECH - CSE, IT, ME, CE, EN &amp; ECE (2020 Batch)</strong></h4>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-11 border border-dark">
                                <h4 class="text-center m-1 p-1">(Campus Recruitment - <strong class="text-primary">Toluna India Pvt Ltd</strong>)</h4>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-5 border border-dark">
                                <h4 class="text-center">From: <strong>HEAD- T&amp;P</strong></h4>
                            </div>
                            <div class="col-6 border border-dark">
                                <a>To: <strong>B TECH – CSE, IT, ECE, CE, EN &amp; ME (2020 Batch)</strong></a>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-5 border border-dark">
                                <h4 class="text-center">Date of Drive, Time &amp; Venue</h4>
                            </div>
                            <div class="col-6 border border-dark">
                                <a>30 th November 2019 at 9:30 AM at Auditorium IPEC Campus</a>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-11 border border-dark">
                                <h4 class="text-center m-3 p-2">We are pleased to inform you that <strong class="text-primary">Toluna India Pvt Ltd</strong> is conducting a Campus
                                    recruitment drive for<strong class="text-primary"> B. Tech- CSE, IT, ECE, EN &amp; ME 2020</strong> passing out batch. The
                                    details are as follows:</h4>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-5 border border-dark">
                                <h4 class="text-center">Eligibility Criteria</h4>
                            </div>
                            <div class="col-6 border border-dark">
                                <a>B. Tech – CSE, IT, ECE, CE, EN &amp; ME – (60% in B. Tech)</a>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-5 border border-dark">
                                <h4 class="text-center">Position</h4>
                            </div>
                            <div class="col-6 border border-dark">
                                <a>Associate Technical Consultant</a>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-5 border border-dark">
                                <h4 class="text-center text-danger">Package Details</h4>
                            </div>
                            <div class="col-6 border border-dark">
                                <a class="text-danger">INR 3.5 LPA</a>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-5 border border-dark">
                                <h4 class="text-center">Last Date to Apply</h4>
                            </div>
                            <div class="col-6 border border-dark">
                                <a>28th Nov 2019 (Thursday) by 1:00 PM</a>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-5 border border-dark">
                                <h4 class="text-center">How to Apply</h4>
                            </div>
                            <div class="col-6 border border-dark">
                                <a>Interested students are advised to register themselves at below mentioned link</a>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-5 border border-dark">
                                <h4 class="text-center text-primary">Application Link</h4>
                            </div>
                            <div class="col-6 border border-dark">
                                <a class="text-primary">https://forms.gle/rvi39HX5VuByUAbs5</a>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-5 border border-dark">
                                <h4 class="text-center">Interview Location</h4>
                            </div>
                            <div class="col-6 border border-dark">
                                <a>Noida</a>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-5 border border-dark">
                                <h4 class="text-center text-danger">Bond Details</h4>
                            </div>
                            <div class="col-6 border border-dark">
                                <a class="text-danger">Bond of 24 Months. Rs. 1.5 Lacs on breaking this bond, but will not have to deposit any document in this regard.</a>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-5 border border-dark">
                                <h4 class="text-center">Job Location</h4>
                            </div>
                            <div class="col-6 border border-dark">
                                <a>Pan India</a>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-5 border border-dark">
                                <h4 class="text-center">Other Benefits</h4>
                            </div>
                            <div class="col-6 border border-dark">
                                <a>Health Insurance, Medical Leaves, Work form Home</a>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-5 border border-dark">
                                <h4 class="text-center">Training Duration</h4>
                            </div>
                            <div class="col-6 border border-dark">
                                <a>9 Months</a>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-5 border border-dark">
                                <h4 class="text-center text-danger">Stipend Details</h4>
                            </div>
                            <div class="col-6 border border-dark">
                                <a class="text-danger">Initially stipend of 1.66 LPA From March 2020 to December 2020</a>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-5 border border-dark">
                                <h4 class="text-center">Joining Period</h4>
                            </div>
                            <div class="col-6 border border-dark">
                                <a>March 2020</a>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-5 border border-dark">
                                <h4 class="text-center">Job Description</h4>
                            </div>
                            <div class="col-6 border border-dark">
                                <a>Candidates will be dealing with  are from U.S. / UK / APAC region. Involved
                                    in project management. Coordination with clients and internal team. End to end
                                    ownership of the project/assigned task.</a>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-5 border border-dark">
                                <h4 class="text-center">About Company</h4>
                            </div>
                            <div class="col-6 border border-dark">
                                <a>Toluna is a leading digital market research and technology company. The
                                        company is regarded as a pioneer in the dynamic world of marketing research,
                                        data collection, reporting and visualization, and brings together people and
                                        brands in the world’s largest social voting community. We enable hundreds of
                                        organizations worldwide to create online and mobile surveys, manage panels
                                        and build their own online communities. Toluna products include PanelPortal™
                                        Online Communities, SampleXpress™ Toluna QuickSurveys™ and Toluna
                                        Analytics.</a>
                            </div>
                        </div>
                         <div class="row justify-content-center">
                            <div class="col-5 border border-dark">
                                <h4 class="text-center text-danger">Selection Process</h4>
                            </div>
                            <div class="col-6 border border-dark">
                                <a>     <ol>
                                            <li>Shortlisting on the basis of registration</li>
                                            <li>Aptitude Test (30 question)</li>
                                            <li>Group Discussion</li>
                                            <li>Personal Interview</li>
                                        </ol>
                                </a>
                            </div>
                        </div>
                        <div class="row justify-content-center m-3 p-3">
                            <button class="btn btn-round btn-lg btn-success"> Generate Notice</button>
                        </div>
                        <div class="gap">
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