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
        <div class="container">
            <div class="just-middle">
                <h2>Welcome to Dashboard</h2>
            </div>

                        <!--      Wizard container        -->
            <div class="wizard-container">
                <div class="card wizard-card" data-color="blue" id="wizard">
                    <g:form controller="student" action="formvalue" id="form">
                    <!--        You can switch " data-color="rose" "  with one of the next bright colors: "blue", "green", "orange", "purple"        -->

                        <div class="wizard-header">
                            <h3 class="wizard-title">
                                Upload Your Details
                            </h3>
                            <h5>This information will let us know more about you.</h5>
                        </div>
                        <div class="wizard-navigation">
                            <ul>
                                <li><a href="#personal" data-toggle="tab">Personal</a></li>
                                <li><a href="#address" data-toggle="tab">Address</a></li>
                                <li><a href="#academics" data-toggle="tab">Academics</a></li>
                                <li><a href="#other" data-toggle="tab">Other Fields</a></li>
                            </ul>
                        </div>

                        <div class="tab-content">
                            <div class="tab-pane" id="personal">
                                <h3 class="info-text"> Let's start with the basic details</h3>
                                <div class="form-group">
                                    <input name="rollNumber" class="form-control" id="rollNumber"  type="hidden">
                                </div>

                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">First Name </label>
                                            <input name="firstName" type="text" class="form-control" value="${basicInfo?.firstName}"disabled="true">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Last Name </label>
                                            <input name="lastName" type="text" class="form-control" value="${basicInfo?.lastName}"  disabled="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Email </label>
                                            <input name="studentEmail" type="email" class="form-control" value="${basicInfo?.email}" disabled/>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Contact Number </label>
                                            <input name="studentContact" type="text" class="form-control" value="${basicInfo?.phoneNo}" disabled/>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">

                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Date Of Birth </label>
                                            <input type="text" name="dateOfBirth" class="form-control" value="${basicInfo?.dateOfBirth}" id="dateOfBirth" disabled="true"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating" >
                                            <label class="form-control-label">Gender </label>
                                            <select class="form-control" name="studentGender" style="height: 36px;">
                                                <option  selected="Male"></option>
                                                <option value="Male" name="male">Male </option>
                                                <option value="Female" name="female">Female </option>
                                            </select>
                                        </div>
                                    </div>

                                </div>
                                <h3 class="info-text">Additional Information</h3>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Father's Name </label>
                                            <input name="fatherName" type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Mother's Name </label>
                                            <input name="motherName" type="text" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Parent's Contact Number </label>
                                            <input name="parentsContact" type="text" class="form-control" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </div>
                                    </div>

                                </div>


                            </div>

                            <div class="tab-pane" id="address">
                                <h3 class="info-text">Help us be in Touch with You </h3>
                                <h4 class="info-text">Permanent Address </h4>
                                <div class="row">

                                    <div class="col-sm-10 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Address </label>
                                            <input type="text" name="permanentAddress" id="permanentAddress" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">City </label>
                                            <input name="permanentCity" id="permanentCity" type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">District </label>
                                            <input name="permanentDistrict" id="permanentDistrict" type="text" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">State </label>
                                            <input name="permanentState" id="permanentState" type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Pin Code </label>
                                            <input name="permanentPinCode" id="permanentPinCode" type="text" class="form-control" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </div>
                                    </div>
                                </div>
                                <h4 class="info-text">Correspondence Address </h4>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="checkbox offset-1">
                                            <label>
                                                <input type="checkbox" id="addressCheckbox" name="addressCheckbox">
                                            </label>
                                            Same as Permanent Address
                                        </div>
                                    </div>    
                                </div>

                                <div class="row">
                                    <div class="col-sm-10 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Address </label>
                                            <input type="text" name="correspondenceAddress" id="correspondenceAddress" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">City </label>
                                            <input name="correspondenceCity" id="correspondenceCity" type="text" class="form-control">
                                        </div>
                                    </div>

                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">District </label>
                                            <input name="correspondenceDistrict" id="correspondenceDistrict" type="text" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">State </label>
                                            <input name="correspondenceState" id="correspondenceState" type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Pin Code </label>
                                            <input name="correspondencePinCode" id="correspondencePinCode" type="text" class="form-control" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="tab-pane" id="academics">
                                <h3 class="info-text">Here goes your Academic Information </h3>

                                <h4 class="info-text">X<sup>th</sup> Details </h4>
                                <div class="row">
                                    <div class="col-sm-4 offset-sm-1">
                                        <div class="picture-container">
                                            <h6>Upload Marksheet</h6>
                                            <div class="picture">
                                                <g:img src="default-icon.png" class="picture-src" id="xMarksheetPreview" title=""/>
                                            </div>
                                        </div>
                                        <input type="file" id="xMarksheet" name="xMarksheet"/>
                                    </div>
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">X<sup>th</sup> Percentage </label>
                                            <input name="xPercent" type="text" class="form-control" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">X<sup>th</sup> Board </label>
                                            <input name="xBoard" type="text" class="form-control">
                                        </div>
                                    </div>

                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">X <sup>th</sup>School Name </label>
                                            <input name="xSchool" type="text" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">X<sup>th</sup> Passing Year </label>
                                            <input name="xPassYear" type="text" class="form-control" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </div>
                                    </div>

                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">X<sup>th</sup> Passing State </label>
                                            <input name="xState" type="text" class="form-control">
                                        </div>
                                    </div>        	
                                </div>
                                <h4 class="info-text">XII<sup>th</sup> Details <small> (Optional)</small> </h4>
                                <div class="row">

                                    <div class="col-sm-4 offset-sm-1">
                                        <div class="picture-container" id="picture-container" name="picture-container">
                                            <h6>Upload Marksheet</h6>
                                            <div class="picture" id="picture" name="picture">
                                                <g:img src="default-icon.png" class="picture-src" id="xiiMarksheetPreview" title=""/>
                                            </div>
                                        </div>
                                        <input type="file" id="xiiMarksheet" name="xiiMarksheet"/>

                                    </div>
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">XII<sup>th</sup> Percentage </label>
                                            <input name="xiiPercent" name="xiiPercent" type="text" class="form-control" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">XII<sup>th</sup> English Marks </label>
                                            <input name="xiiEnglish" type="text" class="form-control" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">XII<sup>th</sup> Board </label>
                                            <input name="xiiBoard" type="text" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">XII<sup>th</sup> Passing State </label>
                                            <input name="xiiState" type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-sm-5 ">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">XII<sup>th</sup> Passing Year </label>
                                            <input name="xiiPassYear" type="text" class="form-control" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-10 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">XII<sup>th</sup> School Name </label>
                                            <input name="xiiSchool" type="text" class="form-control">
                                        </div>
                                    </div>        	
                                </div>

                            </div>
                            <div class="tab-pane" id="other">
                                <h3 class="info-text">Academics Details </h3>

                                <h4 class="info-text">Diploma Details<small>(optional)</small> </h4>
                                <div class="row">
                                    <div class="col-sm-4 offset-sm-1">
                                        <div class="picture-container">
                                            <h6>Upload Marksheet</h6>
                                            <div class="picture">
                                                <g:img src="default-icon.png" class="picture-src" id="diplomaMarksheetPreview" title=""/>
                                            </div>

                                        </div>
                                        <input type="file" id="diplomaMarksheet" name="diplomaMarksheet"/>

                                    </div>
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Diploma Percentage</label>
                                            <input name="diplomaPercent" type="text" class="form-control" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Diploma University</label>
                                            <input name="diplomaUniversity" type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Diploma Specialization/Branch</label>
                                            <input name="diplomaBranch" type="text" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Diploma Graduating Year </label>
                                            <input name="diplomaPassYear" type="text" class="form-control" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </div>
                                    </div>

                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Diploma Passing State </label>
                                            <input name="diplomaState" type="text" class="form-control">
                                        </div>
                                    </div>        	
                                </div>
                            </div>
                        </div>
                        <div class="wizard-footer">
                            <div class="float-right">
                                <input type='button' class="btn btn-next btn-fill btn-success btn-wd" name='next' value='Next' />
                                <a><input type='submit' class="btn btn-finish btn-fill btn-success btn-wd" name='finish' id="Finish" value='Finish'></a>
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
    </div> <!--  big container -->

    <div class="footer">
        <div class="container text-center">
            e-IPEC DigiLocker
        </div>
    </div>

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

        <!--  Plugin for the Wizard -->
<asset:javascript src="header.js"/>
<asset:javascript src="plugins.js"/>
<asset:javascript src="studentDetailsForm.js"/>

<asset:javascript src="studentNavbar.js"/>

</body>

</html>
