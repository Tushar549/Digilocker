<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div class="modal fade" id="btechDisplayModal">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

  <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">B. Tech. Mark Sheet</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

<!-- Modal body -->
                    <div class="modal-body">

                        <div class="row justify-content-center">
                            <div class="col-sm-11" id="borderboxFinal" >
                                <div class="form-group label-floating text-center">
                                    <h6>B.Tech. Percentage <sub id="error">(Overall)</sub></h6>
                                    <span name="bTechPercentage" id="bTechPercentage" type="text" class="form-control">71.5<span> %</span></span>
                                </div>
                            </div>

                        </div>
                        <div class="row justify-content-center">
                            <div class="col-12">
                                <g:each var="number" in="${(1..6)}">
                                    <div>
                                        <div class="row justify-content-center">
                                            <div class="col-8" id="borderbox">
                                                <div class="row">
                                                    <div class="col-sm-5 offset-sm-1">
                                                        <div class="form-group label-floating text-center">
                                                            <h6>Semester</h6>
                                                            <span class="form-control">${number}</span>
                                                        </div>
                                                        <div class="form-group label-floating text-center">
                                                            <h6>Semester Percentage</h6>
                                                            <span class="form-control">71.5<span> %</span></span>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-5">
                                                        <h6 class="form-control-label offset-sm-3">Semester Mark Sheet</h6>
                                                        <div class="picture-container">
                                                            <div class="picture">
                                                                <g:img src="default-icon.png" class="picture-src" id="semesterMarksheetPreview" title=""/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </g:each>
                            </div>
                        </div>
                    </div>    
                </div>
            </div>    
        </div>
    <!--BTECH ENDS-->    
        <div class="modal fade" id="diplomaDisplayModal">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

  <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Diploma Mark Sheet</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

<!-- Modal body -->
                    <div class="modal-body">
                        <div class="row justify-content-center">
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-sm-4 offset-sm-1">
                                        <div class="picture-container">
                                            <div class="picture wide">
                                                <g:img src="default-icon.png" class="picture-src" id="diplomaMarksheetPreview" title="Marksheet"/>
                                            </div>

                                        </div>

                                    </div>
                                    <div class="col-sm-5 offset-sm-1 mt-5 p-2">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Diploma Percentage</label>
                                            <span class="form-control">${diplomaScore?.diplomaPercent} %</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Diploma University</label>
                                            <span class="form-control">${diplomaScore?.diplomaUniversity}</span>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Diploma Specialization/Branch</label>
                                            <span class="form-control">${diplomaScore?.diplomaBranch}</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Diploma Graduating Year </label>
                                            <span class="form-control" >${diplomaScore?.diplomaPassYear}</span>
                                        </div>
                                    </div>

                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Diploma Passing State </label>
                                            <span class="form-control">${diplomaScore?.diplomaState}</span>
                                        </div>
                                    </div>        	
                                </div>
                            </div>        	
                        </div> 
                    </div>
                </div>        	
            </div>
        </div> 
    <!--DIPLOMA ENDS-->    
        <div class="modal fade" id="xiiDisplayModal">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

  <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Intermediate Mark Sheet</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

<!-- Modal body -->
                    <div class="modal-body">
                        <div class="row justify-content-center">
                            <div class="col-12">
                                <div class="row">

                                    <div class="col-sm-4 offset-sm-1">
                                        <div class="picture-container" id="picture-container" name="picture-container">
                                            <div class="picture wide">
                                                <g:img src="default-icon.png" class="picture-src" id="xiiMarksheetPreview" title="Twelvth Marksheet"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">XII<sup>th</sup> Percentage </label>
                                            <span class="form-control">${twelvthScore?.xiiPercentage} %</span>
                                        </div>
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">XII<sup>th</sup> English Marks </label>
                                            <span class="form-control">${twelvthScore?.xiiEnglish}</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">XII<sup>th</sup> School Name </label>
                                            <span class="form-control">${twelvthScore?.xiiSchool}</span>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">XII<sup>th</sup> Board </label>
                                            <span class="form-control">${twelvthScore?.xiiBoard}</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">XII<sup>th</sup> Passing State </label>
                                            <span class="form-control">${twelvthScore?.xiiState}</span>
                                        </div>
                                    </div>
                                    <div class="col-sm-5 ">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">XII<sup>th</sup> Passing Year </label>
                                            <span class="form-control">${twelvthScore?.xiiPassYear}</span>
                                        </div>
                                    </div>
                                </div>        	
                            </div>
                        </div>
                    </div>        	
                </div>
            </div>        	
        </div>
<!--TWELTH ENDS-->    
        <div class="modal fade" id="xDisplayModal">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

  <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">High School Mark Sheet</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

<!-- Modal body -->
                    <div class="modal-body">
                        <div class="row justify-content-center">
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-sm-4 offset-sm-1">
                                        <div class="picture-container">
                                            <div class="picture wide">
                                                <g:img src="default-icon.png" class="picture-src" id="xMarksheetPreview" title="High School Mark Sheet"/>
                                            </div>
                                        </div>                                    </div>
                                    <div class="col-sm-5 offset-sm-1 mt-5 p-2">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">X<sup>th</sup> Percentage </label>
                                            <span class="form-control">${tenthScore?.xPercent} %</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">X<sup>th</sup> Board </label>
                                            <span class="form-control">${tenthScore?.xBoard}</span>
                                        </div>
                                    </div>

                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">X <sup>th</sup>School Name </label>
                                            <span class="form-control">${tenthScore?.xSchool}</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">X<sup>th</sup> Passing Year </label>
                                            <span class="form-control">${tenthScore?.xPassYear}</span>
                                        </div>
                                    </div>

                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">X<sup>th</sup> Passing State </label>
                                            <span class="form-control">${tenthScore?.xState}</span>
                                        </div>
                                    </div>        	
                                </div>
                            </div>
                        </div>        	
                    </div>
                </div>
            </div>        	
        </div>
<!--TENTH ENDS-->    
        <div class="modal fade" id="permanentAddressModal">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

  <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Permanent Address</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

<!-- Modal body -->
                    <div class="modal-body">
                        <div class="row justify-content-center">
                            <div class="col-12">
                                <div class="row">

                                    <div class="col-sm-10 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Address </label>
                                            <span class="form-control">${extendedInformation?.studentPermanentAddress?.flatNo}</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">City </label>
                                            <span class="form-control">${extendedInformation?.studentPermanentAddress?.city}</span>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">District </label>
                                            <span class="form-control">${extendedInformation?.studentPermanentAddress?.district}</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">State </label>
                                            <span class="form-control">${extendedInformation?.studentPermanentAddress?.state}</span>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Pin Code </label>
                                            <span class="form-control">${extendedInformation?.studentPermanentAddress?.pincode}</span>
                                        </div>
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<!--TENTH ENDS-->    
            <div class="modal fade" id="correspondenceAddressModal">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">

  <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">Correspondence Address</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

<!-- Modal body -->
                        <div class="modal-body">
                            <div class="row justify-content-center">
                                <div class="col-12">
                                    <div class="row">

                                        <div class="col-sm-10 offset-sm-1">
                                            <div class="form-group label-floating">
                                                <label class="form-control-label">Address </label>
                                                <span class="form-control">${extendedInformation?.studentCorrespondenceAddress?.flatNo}</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-5 offset-sm-1">
                                            <div class="form-group label-floating">
                                                <label class="form-control-label">City </label>
                                                <span class="form-control">${extendedInformation?.studentCorrespondenceAddress?.city}</span>
                                            </div>
                                        </div>
                                        <div class="col-sm-5">
                                            <div class="form-group label-floating">
                                                <label class="form-control-label">District </label>
                                                <span class="form-control">${extendedInformation?.studentCorrespondenceAddress?.district}</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-5 offset-sm-1">
                                            <div class="form-group label-floating">
                                                <label class="form-control-label">State </label>
                                                <span class="form-control">${extendedInformation?.studentCorrespondenceAddress?.state}</span>
                                            </div>
                                        </div>
                                        <div class="col-sm-5">
                                            <div class="form-group label-floating">
                                                <label class="form-control-label">Pin Code </label>
                                                <span class="form-control">${extendedInformation?.studentCorrespondenceAddress?.pincode}</span>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



    </body>
</html>
