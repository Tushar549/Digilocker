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
    <asset:link rel="stylesheet" href="dataTables.bootstrap4.min.css"/>
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
        <g:applyLayout name="adminHeader">
        </g:applyLayout>
              <!-- mobile_menu -->
        <div class="col-12 d-block d-lg-none">
            <div id="mobile_menu"></div>
        </div>
    </div>

 <!-- page title area end -->
    <div class="main-content-inner">

        <div class="col-12">
            <div class="wizard-container">
                <div class="card wizard-card">
                    <div class="row justify-content-center">
                        <div class="col-11">
                            <g:form controller="tnP" action="formvalue" id="searchDataForm">
                        <!--        You can switch " data-color="rose" "  with one of the next bright colors: "blue", "green", "orange", "purple"        -->

                                <div class="wizard-header" id="gradientBox">
                                    <h3 >
                                        Modify Student Details
                                    </h3>
                                </div>

                                <div class="container">
                                    <div class="row">
                                        <div class="col-sm-9 offset-sm-1">
                                            <div class="form-group label-floating">
                                                <label class="form-control-label">Branch </label>
                                                <select class="form-control"id="branch">
                                                    <option value="no" selected disable>Select Branch</option>
                                                    <option value="All Branches"> All Branches</option>
                                                    <option value="CSE">CSE</option>
                                                    <option value="IT">IT</option>
                                                    <option value="ME">ME</option>
                                                    <option value="CE">CE</option>
                                                    <option value="EE">EE</option>
                                                    <option value="ECE">ECE</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-9 offset-1">
                                            <div class="form-group label-floating">
                                                <label class="form-control-label">Year </label>
                                                <select class="form-control"id="year"value="Select Year">
                                                    <option value="no" selected disable>Select Year</option>
                                                    <option value="All Years"> All Years</option>
                                                    <option value="First">First Year</option>
                                                    <option value="Second">Second Year</option>
                                                    <option value="Third">Third Year</option>
                                                    <option value="Fourth">Fourth Year</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div> 
                                    <div class="row">
                                        <div class="col-sm-7 offset-sm-2">
                                            <div class="form-group label-floating">
                                                <label class="form-control-label">Student Roll No </label>
                                                <div class="input-group">
                                                    <span class="input-group-prepend">
                                                        <i class="fa fa-id-badge mr-1"></i>
                                                    </span>
                                                    <input name="studentRollNo" id="studentRollNo" type="text" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-7 offset-sm-2">
                                            <div class="form-group label-floating">
                                                <label class="form-control-label">Student Name </label>
                                                <div class="input-group">
                                                    <span class="input-group-prepend">
                                                        <i class="fa fa-user mr-1"></i>
                                                    </span>
                                                    <input name="studentName" id="studentName" type="text" class="form-control">

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <input type='button' id="modifyTableSearch" class="btn btn-success pull-right" value="Search Record(s)">
                                </g:form>
                            </div>
                        </div>
                    </div>
                    <div id="modifyTableDiv">
                        <div class="row justify-content-center">
                            <div class="wizard-header" id="gradientBox">
                                <h3>Student Basic Information Table</h3>
                                <hr/>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                                 <h4 class="error">Click Table Cell to Edit Data</h4>
                           
                            <div class="col-12">
                                <g:form  controller="student" action="formvalue" id="modifyDataForm">

                                    <div class="col-12">
                                        <table class="table table-bordered table-striped table-hover" id="modifyDyanmicTable">
                                        </table>
                                    </div>
                                </g:form>
                            </div>


                        </div>

                        <button type="button" class="btn btn-success pull-right mr-5" data-toggle="modal" data-target="#myModal">Save Change(s)</button>

                    </div>
                </div>
            </div>
        </div>    
    </div>
<!-- Textual inputs end -->

<!-- Modal -->


    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">

  <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Confirmation</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <p>Record has been saved successfully</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>
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
<asset:javascript src="jquery.bootstrap.js"/>
<asset:javascript src="metisMenu.min.js"/>
<asset:javascript src="jquery.validate.min.js"/>

<asset:javascript src="plugins.js"/>
<asset:javascript src="header.js"/>
<asset:javascript src="modifyStudentDetails.js"/>

</body>

</html>
