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
    <asset:link rel="stylesheet" href="testView.css"/>
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
                <h2>User Search</h2>
            </div>

                        <!--      Wizard container        -->
    <div class="row justify-content-center">
            <div class="col-10">
            <div class="wizard-container">
                <div class="card wizard-card" data-color="blue" id="wizard">
                    <g:form controller="tnP" action="" id="form">
                    <!--        You can switch " data-color="rose" "  with one of the next bright colors: "blue", "green", "orange", "purple"        -->

                        <div class="wizard-header">
                            <h3 class="wizard-title">
                                Student Information Display
                            </h3>
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
                                <h3 class="info-text"> Student Basic Information</h3>
                                <div class="form-group">
                                    <input name="rollNumber" class="form-control" id="rollNumber"  type="hidden">
                                </div>

                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">First Name </label>
                                            <input name="firstName"  class="form-control" value="Kumar" disabled="true">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Last Name </label>
                                            <input name="lastName"  class="form-control" value="Shivay"  disabled="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Email </label>
                                            <input name="studentEmail"  class="form-control" value="abc@gmail.com" disabled/>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Contact Number </label>
                                            <input name="studentContact"  class="form-control" value="1234567890" disabled/>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">

                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Date Of Birth </label>
                                            <input name="dateOfBirth" class="form-control" value="01/01/1998" id="dateOfBirth" disabled="true"/>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating" >
                                            <label class="form-control-label">Gender </label>
                                            <input id="studentGender" class="form-control" value="Male" disabled="true">
                                        </div>
                                    </div>

                                </div>
                                <h3 class="info-text"> Student Additional Information</h3>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Father's Name </label>
                                            <input name="fatherName" class="form-control" value="Om Prakash Yadav" disabled="true">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Mother's Name </label>
                                            <input name="motherName"  class="form-control" value="Poonam Yadav" disabled="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Parent's Contact Number </label>
                                            <input name="parentsContact"  class="form-control" value="1234567890" disabled="true">
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
                                            <input  name="permanentAddress" id="permanentAddress" class="form-control" value="43/49 Jankipuram" disabled="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">City </label>
                                            <input name="permanentCity" id="permanentCity"  class="form-control" value="Lucknow" disabled="true">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">District </label>
                                            <input name="permanentDistrict" id="permanentDistrict"  class="form-control" value="Lucknow" disabled="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">State </label>
                                            <input name="permanentState" id="permanentState"  class="form-control" value="U.P." disabled="true">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Pin Code </label>
                                            <input name="permanentPinCode" id="permanentPinCode"  class="form-control" value="226024" disabled="true">
                                        </div>
                                    </div>
                                </div>
                                <h4 class="info-text">Correspondence Address </h4>
                                <div class="row">
                                    <div class="col-sm-10 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Address </label>
                                            <input  name="correspondenceAddress" id="correspondenceAddress" class="form-control" value="Flat No. 32, Sector 4, Vaishali" disabled="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">City </label>
                                            <input name="correspondenceCity" id="correspondenceCity"  class="form-control" value="Ghaziabad" disabled="true">
                                        </div>
                                    </div>

                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">District </label>
                                            <input name="correspondenceDistrict" id="correspondenceDistrict"  class="form-control" value="Ghaziabad" disabled="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">State </label>
                                            <input name="correspondenceState" id="correspondenceState" value="U.P." class="form-control" disabled="true">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Pin Code </label>
                                            <input name="correspondencePinCode" id="correspondencePinCode" value="201010"  class="form-control" disabled="true">
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="tab-pane" id="academics">
                                <h3 class="info-text">Student Academic Information </h3>

                                <h4 class="info-text">X<sup>th</sup> Details </h4>
                                <div class="row">
                                    <div class="col-sm-4 offset-sm-1">
                                        <div class="picture-container">
                                            <h6>X Marksheet</h6>
                                            <div class="picture">
                                                <g:img src="default-icon.png" class="picture-src" id="XMarksheet" name="xMarksheet" title=""/>
                                            </div>
                                        </div>
                                   </div>
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">X<sup>th</sup> Percentage </label>
                                            <input name="xPercent" value="86" class="form-control" disabled="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">X<sup>th</sup> Board </label>
                                            <input name="xBoard" value="C.B.S.E." class="form-control" disabled="true">
                                        </div>
                                    </div>

                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">X <sup>th</sup>School Name </label>
                                            <input name="xSchool" value="Maharishi Vidya Mandir, Lucknow" class="form-control" disabled="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">X<sup>th</sup> Passing Year </label>
                                            <input name="xPassYear" value="2014" class="form-control" disabled="true">
                                        </div>
                                    </div>

                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">X<sup>th</sup> Passing State </label>
                                            <input name="xState" value="U.P." class="form-control" disabled="true">
                                        </div>
                                    </div>        	
                                </div>
                                <h4 class="info-text">XII<sup>th</sup> Details</h4>
                                <div class="row">

                                    <div class="col-sm-4 offset-sm-1">
                                        <div class="picture-container" id="picture-container" name="picture-container">
                                            <h6>XII Marksheet</h6>
                                            <div class="picture" id="picture" name="picture">
                                                <g:img src="default-icon.png" class="picture-src" id="xiiMarksheet" name="xiiMarksheet" title=""/>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">XII<sup>th</sup> Percentage </label>
                                            <input name="xiiPercent" name="xiiPercent" value="84" class="form-control" disabled="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">XII<sup>th</sup> English Marks </label>
                                            <input name="xiiEnglish"  class="form-control" value="92" disabled="true">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">XII<sup>th</sup> Board </label>
                                            <input name="xiiBoard"  class="form-control" value="I.S.C." disabled="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">XII<sup>th</sup> Passing State </label>
                                            <input name="xiiState"  class="form-control" value="U.P." disabled="true">
                                        </div>
                                    </div>
                                    <div class="col-sm-5 ">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">XII<sup>th</sup> Passing Year </label>
                                            <input name="xiiPassYear"  class="form-control" value="2016" disabled="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-10 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">XII<sup>th</sup> School Name </label>
                                            <input name="xiiSchool" value="Modern Academy, Lucknow" class="form-control" disabled="true">
                                        </div>
                                    </div>        	
                                </div>

                            </div>
                            <div class="tab-pane" id="other">
                                <h3 class="info-text">Academics Details </h3>

                                <h4 class="info-text">Diploma Details</h4>
                                <div class="row">
                                    <div class="col-sm-4 offset-sm-1">
                                        <div class="picture-container">
                                            <h6>Diploma Marksheet</h6>
                                            <div class="picture">
                                                <g:img src="default-icon.png" class="picture-src" id="diplomaMarksheet" name="diplomaMarksheet" title=""/>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Diploma Percentage</label>
                                            <input name="diplomaPercent"  class="form-control"  disabled="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Diploma University</label>
                                            <input name="diplomaUniversity"  class="form-control" disabled="true">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Diploma Specialization/Branch</label>
                                            <input name="diplomaBranch"  class="form-control" disabled="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Diploma Graduating Year </label>
                                            <input name="diplomaPassYear"  class="form-control" disabled="true">
                                        </div>
                                    </div>

                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Diploma Passing State </label>
                                            <input name="diplomaState"  class="form-control" disabled="true">
                                        </div>
                                    </div>        	
                                </div>
                            </div>
                        </div>
                        <div class="wizard-footer">
                            <div class="float-right">
                                <input type="button" class="btn btn-next btn-fill btn-success btn-wd" name='next' value="Next"/>
                            </div>
                            <div class="float-left">
                                <input type="button" class="btn btn-previous btn-fill btn-secondary btn-wd" name='previous' value="Previous"/>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </g:form>
                </div>
            </div>
        </div>
        </div>

        </div>     
    </div> <!--  big container -->
<div id="xMarksheetModal" class="modal">
  <span class="close">&times;</span>
  <img class="modal-content" id="XMarksheetImage">
  <div id="caption"></div>
</div>
<!--footer-->
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
<asset:javascript src="testView.js"/>

<asset:javascript src="studentNavbar.js"/>

</body>

</html>
