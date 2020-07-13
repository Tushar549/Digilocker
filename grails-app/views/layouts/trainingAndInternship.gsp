<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->


<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <asset:link rel="stylesheet" href="studentNavbar.css"/>

</head>
    <body>
    
        
<div class="modal fade" id="trainingInternshipModal">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">

  <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Upload Training & Internship Certificates</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

<!-- Modal body -->
                <div class="modal-body">
                    <div class="row">
                        <div class="col-12">
                            <g:form controller="Certificate" action="index" name="trainingAndInternshipForm" id="trainingAndInternshipForm" enctype="multipart/form-data">
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Roll Number </label>
                                            <input name="rollNo" id="rollNo" type="text" class="form-control" placeholder="Enter your roll no..." required="true">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Student Name </label>
                                            <input name="studentName" id="studentName" type="text" class="form-control" placeholder="Enter your name...." required="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Branch </label>
                                            <select class="form-control" name="branch" required="true">
                                                <option disabled="true" selected="selected">Select Branch</option>
                                                <option value="CSE">C.S.E. </option>
                                                <option value="IT">I.T.</option>
                                                <option value="CSE">C.E. </option>
                                                <option value="IT">E.E.</option>
                                                <option value="CSE">ME. </option>
                                                <option value="IT">E.C.</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Year of Study </label>
                                            <select class="form-control" name="year" required="true">
                                                <option disabled="true" selected="selected">Select Year</option>
                                                <option value="first">1<sup>st</sup> Year </option>
                                                <option value="second">2<sup>st</sup> Year </option>
                                                <option value="third">3<sup>rd</sup> Year </option>
                                                <option value="fourth">4<sup>th</sup> Year </option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Project Title </label>
                                            <input name="projectTitle" id="projectTitle" type="text" class="form-control" placeholder="Title of your project..." required="true">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Area of Project </label>
                                            <input name="areaOfProject" id="areaOfProject" type="text" class="form-control" placeholder="Ex- Machine Learning" required="true">
                                            </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Session </label>
                                            <input name="session" id="session" type="text" class="form-control" placeholder="Ex- 2019" required="true">
                                            </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Company Name </label>
                                            <input name="companyName" id="companyName" type="text" class="form-control" placeholder="Enter Company's name..." required="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Mentor Name </label>
                                            <input name="mentorName" id="mentorName" type="text" class="form-control" placeholder="Project Mentor's name..." required="true">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                        <label class="form-control-label">City </label>
                                            <input name="city" id="city" type="text" class="form-control" placeholder="Ex- Noida" required="true">
                                            </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="row justify-content-center">
                                <div class="col-sm-12">
                                        <h5 class="offset-sm-5">Upload Certificate</h5>
                                        <div class="picture-container">
                                            <div class="picture wide">
                                                <g:img src="default-icon.png" class="picture-src" id="trainingInternshipCertificatePreview" title=""/>
                                            </div>
                                        </div>
                                        <input type="file" id="trainingInternshipCertificate" class="offset-sm-5" name="trainingInternshipCertificate" required="true">
                                    </div>
                                </div>
                            <hr>
                            
                                <div class=row">
                                    <div class="col-10 offset-1">
                                        <input type="reset" class="btn btn-warning pull-left" value="Reset">
                                        <input type="submit" class="btn btn-success pull-right" value="Upload">
                                    </div>
                                </div>
                        </g:form>
                        </div>
                    </div>




                </div>


            </div>
        </div>
    </div>

    
    </body>
</html>
