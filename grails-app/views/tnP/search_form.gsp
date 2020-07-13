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
    <title>e-IPEC</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image" href="favicon.ico">
    <asset:link rel="stylesheet" href="bootstrap.min.css"/>
    <asset:link rel="stylesheet" href="font-awesome.min.css"/>
    <asset:link rel="stylesheet" href="slicknav.min.css"/>
    <!-- others css -->
    <asset:link rel="stylesheet" href="typography.css"/>
    <asset:link rel="stylesheet" href="default-css.css"/>
    <asset:link rel="stylesheet" href="styles.css"/>
    <asset:link rel="stylesheet" href="responsive.css"/>

</head>

<body class="body-bg">
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- main wrapper start -->
    <div class="horizontal-main-wrapper">
        <!-- main header area start -->
        <div class="mainheader-area">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-3">
                        <div class="logo">
                            <a href="#">
                                <g:img dir="images" class="sitelogo" file="logo.png" alt="logo"/></a>
                        </div>
                    </div>
                    <!-- profile info & task notification -->
                    <div class="col-md-9 clearfix text-right">
                        <div class="clearfix d-md-inline-block d-block">
                            <div class="user-profile m-0">
                                <g:img dir="images" class="avatar user-thumb" file="avatar.png" alt="avatar"/>
                                <h4 class="user-name dropdown-toggle" data-toggle="dropdown">Teacher's_Name <i class="fa fa-angle-down"></i></h4>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#">Change View</a>
                                    <a class="dropdown-item" href="#">Log Out</a>
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
                                    <li>
                                        <a href="tnpDashboard"><i class="fa fa-dashboard"></i><span>dashboard</span></a>
                                    </li>
                                    <li class="active">
                                        <a href="javascript:void(0)"><i class="fa fa-list-alt"/></i><span>generate report</span></a>
                                        <ul class="submenu">
                                            <li class="active"><a href="branch_wise">Branch wise</a></li>
                                            <li><a href="#">Section wise</a></li>
                                            <li><a href="#">B.Tech. Percentile wise</a></li>
                                            <li><a href="#">Placement wise</a></li>
                                            <li><a href="#">Year wise</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><i class="fa fa-comment"></i><span>send messages</span></a>
                                        <ul class="submenu">
                                            <li><a href="message">Message Student</a></li>
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
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <!-- mobile_menu -->
                    <div class="col-12 d-block d-lg-none">
                        <div id="mobile_menu"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- header area end -->
         <!-- page title area end -->
        <div class="main-content-inner">
            <div class="container">
                 <!-- content area start -->
                                <div class="row gap">
                       <div class="stdtxt">          
                        <h2>Generate Report</h2>
                    </div>
                        
                    </div>
                    <!-- seo fact area start -->
                    <div class="row">
<div class="col-lg-6 cntbox">
                          <div class="col-ml-6 mt-3">
<div id="form">
<form class="p-3">
  <div class="form-group">
    <label for="Branch">Select Branch</label>
    <select class="form-control" id="Branch">
          <option select="selected">Branch</option>
          <option value="yes">CSE</option>
          <option value="yes">IT</option>
          <option value="yes">ME</option>
          <option value="yes">CE</option>
          <option value="yes">EE</option>
          <option value="yes">ECE</option>
          <option value="yes">All Branches</option>
    </select>
  </div>
  <div class="form-group" id="YearDiv">
    <label for="Year">Select Year</label>
    <select class="form-control" id="Year">
      <option select="selected">Select Year</option>
          <option value="yes">1</option>
          <option value="yes">2</option>
          <option value="yes">3</option>
          <option value="yes">4</option>
          <option value="yes">All Years</option>
          </select>
  </div>
  <div class="form-group" id="SectionDiv">
    <label for="Section">Select Section</label>
    <select class="form-control" id="Section">
      <option select="selected">Select Section</option>
          <option value="yes">A</option>
          <option value="yes">B</option>
          <option value="yes">C</option>
          <option value="yes">D</option>
          <option value="yes">All Sections</option>
          </select>
  </div>
  
  <!--Optional-->
  
    <div class="form-group gap" id="OptionalDiv">
            <label for="Optional">Additional Sort Criteria</label>
  <!--Marks X-->
  
  <div class="form-group DashBorder" id="MarksXDiv">
      <div class="text-middle">
          <a>X<sup>th</sup> Marks</a>  
      </div>
          <div class="input-group-prepend form-select criteria" id="MarksX">
         <button class="btn btn-primary dropdown-toggle" id="CriteriaX" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >Criteria</button>
            <div class="dropdown-menu">
                <button class="btn btn-outline-success dropdown-item" id="CriteriaValue" type="button" onclick="showX('CriteriaValue')" aria-expanded="false">
                        Greater than </button>
                 <div role="separator" class="dropdown-divider"></div>
                 <button class="btn btn-outline-success dropdown-item" id="CriteriaValue1" type="button" onclick="showX('CriteriaValue1')" aria-expanded="false">
                        Less than </button>
                </div>
      <input type="text" id="X" class="form-control  inp" value="Enter Marks" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
            <div class="input-group-append">
                <span class="input-group-text">%</span>
            </div>
        </div>
        </div>
  
<!--Marks XII-->
  
  <div class="form-group DashBorder" id="MarksXiiDiv">
      <div class="text-middle">
      <a>XII<sup>th</sup> Marks</a>
      </div>
    <div class="input-group-prepend form-select criteria" id="MarksXii">
        <button class="btn btn-primary dropdown-toggle" id="CriteriaXii" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >Criteria</button>
            <div class="dropdown-menu">
                <button class="btn btn-outline-success dropdown-item" id="CriteriaValue" type="button" onclick="showXii('CriteriaValue')" aria-expanded="false">
                        Greater than </button>
                 <div role="separator" class="dropdown-divider"></div>
                 <button class="btn btn-outline-success dropdown-item" id="CriteriaValue1" type="button" onclick="showXii('CriteriaValue1')" aria-expanded="false">
                        Less than </button>
                </div>
            <input type="text" class="form-control  inp" value="Enter Marks" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
            <div class="input-group-append">
                <span class="input-group-text">%</span>
            </div>
        </div>  
     
  </div>        
<!--Button for English-->
<div class="form-group" id="XiiEngBtnDiv">
    <button type="button" class="btn btn-outline-primary" id="showXiiEngBtn">Select English Marks</button>
    <button type="button" class="btn btn-outline-secondary" id="hideXiiEngBtn">Hide field</button>
</div>  
<!--XII English Marks-->  
  <div class="form-group DashBorder1" id="MarksXiiEngDiv">
      <div class="text-middle">
      <a>XII<sup>th</sup> English Marks</a>
      </div>
    <div class="input-group-prepend form-select criteria" id="MarksXiiEng">
        <button class="btn btn-primary dropdown-toggle" id="CriteriaXiiEng" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >Criteria</button>
            <div class="dropdown-menu">
                <button class="btn btn-outline-success dropdown-item" id="CriteriaValue" type="button" onclick="showXiiEng('CriteriaValue')" aria-expanded="false">
                        Greater than </button>
                 <div role="separator" class="dropdown-divider"></div>
                 <button class="btn btn-outline-success dropdown-item" id="CriteriaValue1" type="button" onclick="showXiiEng('CriteriaValue1')" aria-expanded="false">
                        Less than </button>
                </div>
            <input type="text" class="form-control inp" value="Enter Marks" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
            <div class="input-group-append">
                <span class="input-group-text">%</span>
            </div>
        </div>

        </div>  


<!--Btech Marks-->
  
  <div class="form-group DashBorder" id="BtechMarksDiv">
       <div class="text-middle">
      <a>B. Tech. Marks</a>
      </div>
        <div class="input-group-prepend form-select criteria" id="BtechMarks">
        <button class="btn btn-primary dropdown-toggle" id="CriteriaBtech" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >Criteria</button>
            <div class="dropdown-menu">
                <button class="btn btn-outline-success dropdown-item" id="CriteriaValue" type="button" onclick="showBtech('CriteriaValue')" aria-expanded="false">
                        Greater than </button>
                 <div role="separator" class="dropdown-divider"></div>
                 <button class="btn btn-outline-success dropdown-item" id="CriteriaValue1" type="button" onclick="showBtech('CriteriaValue1')" aria-expanded="false">
                        Less than </button>
                </div>
            <input type="text" class="form-control  inp" value="Enter Marks" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
            <div class="input-group-append">
                <span class="input-group-text">%</span>
            </div>
        </div>  
  </div>  
<!--Button for English-->
<div class="form-group" id="MarksDiplomaBtnDiv">
    <button type="button" class="btn btn-outline-primary" id="showMarksDiplomaBtn">Select Diploma Marks</button>
    <button type="button" class="btn btn-outline-secondary" id="hideMarksDiplomaBtn">Hide field</button>
</div>  
<!--XII English Marks-->  
  <div class="form-group DashBorder1" id="MarksDiplomaDiv">
      <div class="text-middle">
      <a>Diploma Marks</a>
      </div>
    <div class="input-group-prepend form-select criteria" id="MarksDiploma">
        <button class="btn btn-primary dropdown-toggle" id="CriteriaXiiEng" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >Criteria</button>
            <div class="dropdown-menu">
                <button class="btn btn-outline-success dropdown-item" id="CriteriaValue" type="button" onclick="showMarksDiploma('CriteriaValue')" aria-expanded="false">
                        Greater than </button>
                 <div role="separator" class="dropdown-divider"></div>
                 <button class="btn btn-outline-success dropdown-item" id="CriteriaValue1" type="button" onclick="showMarksDiploma('CriteriaValue1')" aria-expanded="false">
                        Less than </button>
                </div>
            <input type="text" class="form-control inp" value="Enter Marks" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
            <div class="input-group-append">
                <span class="input-group-text">%</span>
            </div>
        </div>

        </div>  
        


  </div>
  <!--Optional Features end-->
  
  <!--Form Buttons-->
  
  
    <div class="form-group col-lg-12 mt-5" >
    <button type="Submit" class="btn btn-primary pull-left" id="SbmtBtnDiv">Submit</button>
    
    <button type="Submit" class="btn btn-secondary pull-right" id="resetButton">Reset Form</button>
</div>
    
  <!--Optional div end -->
</form>
</div>
 
                          </div>
  
                          </div>

                          </div>
                            </div>
              </div>
<!-- Textual inputs end -->
    </div>
    
    
        <!-- main content area end -->
       <!-- footer area start-->
        <footer>
            <div class="footer-area">
          e-IPEC
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
    <asset:javascript src="plugins.js"/>
    <asset:javascript src="scripts.js"/>
    <script>
       
        </script>
                                </body>

</html>
