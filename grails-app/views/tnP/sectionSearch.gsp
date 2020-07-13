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
        <div class="container">
            <div class="just-middle">
                <h2>Generate Student Basic Information Report</h2>
            </div>
            <div class="wizard-container">
                <div class="card wizard-card" id="wizard">
                    <div class="row justify-content-center">
                        <div class="col-10 ml-1 mr-1">
                            <div id="form">
                                <form class="p-3">
                                    <div class="form-group">
                                        <label for="Branch">Select Branch</label>
                                        <select class="form-control" id="alpha">
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
                                    <div class="form-group" id="betaDiv">
                                        <label for="Year">Select Year</label>
                                        <select class="form-control" id="beta">
                                            <option select="selected">Select Year</option>
                                            <option value="yes">1</option>
                                            <option value="yes">2</option>
                                            <option value="yes">3</option>
                                            <option value="yes">4</option>
                                            <option value="yes">All Years</option>
                                        </select>
                                    </div>
                                    <div class="form-group" id="gammaDiv">
                                        <label for="Section">Select Section</label>
                                        <select class="form-control" id="gamma">
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
                                        <div class="optional">Additional Fields (Not Mandatory)</div>

<!--Marks X-->

                                        <div class="form-group DashBorder" id="MarksXDiv">
                                            <div class="text-middle">
                                                <a>Enter X<sup>th</sup> Percentage</a>  
                                            </div>
                                            <div class="input-group-prepend form-select criteria" id="MarksX">
                                                <button class="btn btn-primary dropdown-toggle" id="CriteriaX" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >Criteria</button>
                                                <div class="dropdown-menu">
                                                    <button class="btn btn-outline-success dropdown-item" id="CriteriaValue" type="button" onclick="showX('CriteriaValue')" aria-expanded="false">
                                                        Equal to </button>
                                                    <div role="separator" class="dropdown-divider"></div>
                                                    <button class="btn btn-outline-success dropdown-item" id="CriteriaValue1" type="button" onclick="showX('CriteriaValue1')" aria-expanded="false">
                                                        Greater than </button>
                                                    <div role="separator" class="dropdown-divider"></div>
                                                    <button class="btn btn-outline-success dropdown-item" id="CriteriaValue2" type="button" onclick="showX('CriteriaValue2')" aria-expanded="false">
                                                        Less than </button>
                                                </div>
                                                <input type="text" class="form-control inp" value="Click to Enter Value" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                                <div class="input-group-append">
                                                    <span class="input-group-text" id="colorX">%</span>
                                                </div>
                                            </div>
                                        </div>

<!--Marks XII-->

                                        <div class="form-group DashBorder" id="MarksXiiDiv">
                                            <div class="text-middle">
                                                <a> Enter XII<sup>th</sup> Percentage</a>
                                            </div>
                                            <div class="input-group-prepend form-select criteria" id="MarksXii">
                                                <button class="btn btn-primary dropdown-toggle" id="CriteriaXii" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >Criteria</button>
                                                <div class="dropdown-menu">
                                                    <button class="btn btn-outline-success dropdown-item" id="CriteriaValue" type="button" onclick="showXii('CriteriaValue')" aria-expanded="false">
                                                        Equal to </button>
                                                    <div role="separator" class="dropdown-divider"></div>
                                                    <button class="btn btn-outline-success dropdown-item" id="CriteriaValue1" type="button" onclick="showXii('CriteriaValue1')" aria-expanded="false">
                                                        Greater than </button>
                                                    <div role="separator" class="dropdown-divider"></div>
                                                    <button class="btn btn-outline-success dropdown-item" id="CriteriaValue2" type="button" onclick="showXii('CriteriaValue2')" aria-expanded="false">
                                                        Less than </button>
                                                </div>
                                                <input type="text" class="form-control inp" value="Click to Enter Value" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                                <div class="input-group-append">
                                                    <span class="input-group-text" id="colorXii">%</span>
                                                </div>
                                            </div>  

                                        </div>        

<!--Btech Marks-->

                                        <div class="form-group DashBorder" id="BtechMarksDiv">
                                            <div class="text-middle">
                                                <a>Enter B. Tech. Percentage</a>
                                            </div>
                                            <div class="input-group-prepend form-select criteria" id="BtechMarks">
                                                <button class="btn btn-primary dropdown-toggle" id="CriteriaBtech" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >Criteria</button>
                                                <div class="dropdown-menu">
                                                    <button class="btn btn-outline-success dropdown-item" id="CriteriaValue" type="button" onclick="showBtech('CriteriaValue')" aria-expanded="false">
                                                        Equal to </button>
                                                    <div role="separator" class="dropdown-divider"></div>
                                                    <button class="btn btn-outline-success dropdown-item" id="CriteriaValue1" type="button" onclick="showBtech('CriteriaValue1')" aria-expanded="false">
                                                        Greater than </button>
                                                    <div role="separator" class="dropdown-divider"></div>
                                                    <button class="btn btn-outline-success dropdown-item" id="CriteriaValue2" type="button" onclick="showBtech('CriteriaValue2')" aria-expanded="false">
                                                        Less than </button>
                                                </div>
                                                    <input type="text" class="form-control inp" value="Click to Enter Value" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                                    <div class="input-group-append">
                                                        <span class="input-group-text" id="colorBtech">%</span>
                                                    </div>
                                                </div>
                                             
                                        </div>  

                                    </div>  
                              <!--Optional Features end-->

<!--Form Buttons-->


                                    <div class="form-group col-lg-12 mt-5" >
                                        <button type="Submit" class="btn btn-dark pull-left" id="resetButton">Reset Form</button>
                                        <button type="Button" href="#" class="btn btn-success pull-right" id="SbmtBtnDiv">Submit</button>

                                        
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
    <div class="footer">
        <div class="container text-center">
            e-IPEC
        </div>
    </div>
    <!-- footer area end-->

<asset:javascript src="jquery-2.2.4.min.js"/>
<!-- bootstrap 4 js -->
<asset:javascript src="popper.min.js"/>
<asset:javascript src="bootstrap.min.js"/>
<asset:javascript src="jquery.slimscroll.min.js"/>
<asset:javascript src="jquery.slicknav.min.js"/>
<asset:javascript src="metisMenu.min.js"/>
<asset:javascript src="plugins.js"/>
<asset:javascript src="header.js"/>
<asset:javascript src="branchSearch.js"/>
</body>

</html>
