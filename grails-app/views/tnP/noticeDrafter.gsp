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
                    <div class="card wizard-card" data-color="green" id="wizard">
    <!--        You can switch " data-color="rose" "  with one of the next bright colors: "blue", "green", "orange", "purple"        -->
                        <g:form controller="student" action="index" id="form">
                            <div class="wizard-header">
                                <h3 class="wizard-title text-primary gap">
                                    Notice for B.Tech. - CSE, IT, ME, CE, EN, ECE (2020-Batch)<br/>
                                    (Campus Recruitment - Comapany Name)
                                </h3>
                                <h5><%=new Date().format("EEE, dd MMM. yyyy") %></h5>
                            </div>
                            <div class="p-1">
                            <div class="wizard-navigation">
                                <ul>
                                    <li><a href="#schedule" data-toggle="tab">Schedule</a></li>
                                    <li><a href="#jobDetails" data-toggle="tab">Job Details</a></li>
                                    <li><a href="#training" data-toggle="tab">Training Details</a></li>
                                    <li><a href="#company" data-toggle="tab">Other Details</a></li>
                                </ul>
                            </div>
                            </div>
                            <div class="tab-content">

                                <div class="tab-pane p-3" id="schedule">
                                    <h3 class="info-text">Schedule of Drive</h3>

                                    <div class="row justify-content-center" id="borderbox">
                                        <div class="col-sm-3 p-3">
                                            <div class="form-group label-floating">
                                                <label class="form-control-label">Date of Drive</label>
                                                <input name="driveDate" type="date" class="form-control selectpicker" data-provide="datepicker">
                                            </div>
                                        </div>
                                        <div class="col-sm-3 p-3">
                                            <div class="form-group label-floating">
                                                <label class="form-control-label">Time of Drive</label>
                                                <input name="driveTime" type="time" class="form-control" data-format="HH:mm PP" data-provide="timepicker">
                                            </div>
                                        </div>

                                        <div class="col-sm-3 p-3">
                                            <div class="form-group label-floating">
                                                <label class="form-control-label">Venue Of Drive</label>
                                                <input name="driveVenue" type="text" class="form-control" placeholder="Enter Drive Venue">
                                            </div>
                                        </div>
                                    </div> 
                                    <div class="row gap">
                                    </div>
                                </div>
                                <div class="tab-pane p-3" id="jobDetails">
                                    <h3 class="info-text">Job Details</h3>

                                    <div id="borderbox">
                                        <div class="row justify-content-center">
                                            <div class="col-sm-3 p-3 mt-3">
                                                <div class="form-group label-floating">
                                                    <label class="form-control-label">Position</label>
                                                    <select class="form-control selectpicker" data-style="bg-white text-info">
                                                        <option value="" selected="true" disabled="true">Click to Select</option>
                                                        <option value="1">Trainee Software Engineer</option>
                                                        <option value="2">Associate Technical Consultant</option>
                                                        <option value="3">Front-End Developer</option>
                                                        <option value="4">Business Development Associate</option>
                                                    </select>

                                                </div>
                                            </div>
                                            <div class="col-sm-5 p-3">
                                                <div class="form-group label-floating">
                                                    <label class="form-control-label mt-1">Eligibility Criteria</label>
                                                    <textarea rows="3" name="eligibilityCriteria" type="text" class="form-control mt-3" placeholder="Job Eligibility Criteria..."></textarea>
                                                </div>
                                            </div>
                                            <div class="col-sm-3 p-3">
                                                <div class="form-group label-floating">
                                                    <label class="form-control-label label-warning">Package Details</label>
                                                    <textarea rows="3" name="packageDetails" type="text" class="form-control mt-3" placeholder="Package Details..."></textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row justify-content-center">
                                            <div class="col-sm-3 p-3 mt-3">
                                                <div class="form-group label-floating">
                                                    <label class="form-control-label">Last Date to Apply</label>
                                                    <input name="lastDateToApply" type="date" class="form-control  mt-3 datepicker">
                                                </div>
                                            </div>
                                            <div class="col-sm-5 p-3">
                                                <div class="form-group label-floating">
                                                    <label class="form-control-label">How To Apply</label>
                                                    <textarea rows="3" name="howToApply" type="text" class="form-control" placeholder="How To Apply..."></textarea>
                                                </div>
                                            </div>
                                            <div class="col-sm-3 p-3 mt-3">
                                                <div class="form-group label-floating">
                                                    <label class="form-control-label">Job Application Link</label>
                                                    <input name="jobLink" type="url" class="form-control mt-3" placeholder="Enter url here...">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row justify-content-center">
                                            <div class="col-sm-3 p-3 mt-3">
                                                <div class="form-group label-floating">
                                                    <label class="form-control-label">Interview Location</label>
                                                    <input name="interviewLocation" type="text" class="form-control mt-3" placeholder="Interview Location...">
                                                </div>
                                            </div>
                                            <div class="col-sm-5 p-3">
                                                <div class="form-group label-floating">
                                                    <label class="form-control-label">Bond Details</label>
                                                    <textarea rows="3" name="bondDetails" type="text" class="form-control" placeholder="Bond Details..."></textarea>
                                                </div>
                                            </div>
                                            <div class="col-sm-3 p-3 mt-3">
                                                <div class="form-group label-floating">
                                                    <label class="form-control-label">Job Location</label>
                                                    <input name="jobLocation" type="text" class="form-control mt-3" placeholder="Job Location...">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row justify-content-center" id="borderbox">
                                        <div class="col-sm-7 p-3">
                                            <div class="form-group label-floating">
                                                <label class="form-control-label">Other Benefits</label>
                                                <textarea rows="3" name="otherBenefits" type="text" class="form-control mt-3" placeholder="Additional Benefits of Job..."></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row gap">
                                    </div>
                                </div>
                                <div class="tab-pane p-3" id="training">
                                    <h3 class="info-text">Training Details</h3>

                                    <div class="row justify-content-center" id="borderbox">
                                        <div class="col-sm-3 mt-3 p-3">
                                            <div class="form-group label-floating">
                                                <label class="form-control-label">Training Duration</label>
                                                <input name="trainingDuration" type="text" class="form-control" placeholder="Training Period...">
                                            </div>
                                        </div>
                                        <div class="col-sm-5 p-3">
                                            <div class="form-group label-floating">
                                                <label class="form-control-label">Stipend Details</label>
                                                <textarea rows="3" name="stipendDetails" type="text" class="form-control" placeholder="Stipend Details..."></textarea>
                                            </div>
                                        </div>

                                        <div class="col-sm-3 mt-3 p-3">
                                            <div class="form-group label-floating">
                                                <label class="form-control-label">Joining Period</label>
                                                <input name="joiningPeriod" type="text" class="form-control" placeholder="Joining Period...">
                                            </div>
                                        </div>
                                    </div> 
                                    <div class="row gap">
                                    </div>
                                </div>
                                <div class="tab-pane p-3" id=company>
                                    <h3 class="info-text">Other Details</h3>

                                    <div class="row justify-content-center" id="borderbox">
                                        <div class="col-sm-4 p-3">
                                            <div class="form-group label-floating">
                                                <label class="form-control-label">Job Description</label>
                                                <textarea rows="3" name="jobDescription" type="text" class="form-control" placeholder="Job Description..."></textarea>
                                            </div>
                                        </div>
                                        <div class="col-sm-4 p-3">
                                            <div class="form-group label-floating">
                                                <label class="form-control-label">About Company</label>
                                                <textarea rows="3" name="aboutCompany" type="text" class="form-control" placeholder="About Company..."></textarea>
                                            </div>
                                        </div>

                                        <div class="col-sm-4 p-3">
                                            <div class="form-group label-floating">
                                                <label class="form-control-label">Selection Process</label>
                                                <textarea rows="3" name="selectionDetails" type="text" class="form-control" placeholder="Selection Details..."></textarea>
                                            </div>
                                        </div>
                                    </div> 
                                    <div class="row gap">
                                    </div>
                                </div>

<!--tab content-->
                            </div>
                            <div class="wizard-footer">
                                <div class="float-right">
                                    <input type='button' class="btn btn-next btn-fill btn-success btn-wd" name='next' value='Next' />
                                    <a href="noticePreview"><input type='button' class="btn btn-finish btn-fill btn-success btn-wd" name='finish' id="Finish" value='Finish'></a>
                                </div>
                                <div class="float-left">
                                    <input type='button' class="btn btn-previous btn-fill btn-secondary btn-wd" name='previous' value='Previous' />
                                </div>
                                <div class="clearfix"></div>
                            </div>


                        </g:form>
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