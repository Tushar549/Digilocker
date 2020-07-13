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

    <div class="modal fade" id="btechModal">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">

  <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Upload B. Tech Marksheet</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

<!-- Modal body -->
                <div class="modal-body">
                    <div class="row">
                        <div class="col-12">
                            <g:form controller="Certificate" action="index" id="bTechMarkSheetForm" name="bTechMarkSheetForm" enctype="multipart/form-data">
                                <div class="form-group">
                                    <input name="rollNo" class="form-control" id="rollNo"  type="hidden">
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Select Semester</label>
                                            <select name="semester" id="semester" class="form-control" required="true">
                                                <option selected disabled="true">Select a Semester</option>
                                                <option value="1">1st Semester</option>
                                                <option value="2">2nd Semester</option>
                                                <option value="3">3rd Semester</option>
                                                <option value="4">4th Semester</option>
                                                <option value="5">5th Semester</option>
                                                <option value="6">6th Semester</option>
                                                <option value="7">7th Semester</option>
                                                <option value="8">8th Semester</option>
                                            </select>
                                        </div>
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Semester Percentage</label>
                                            <input name="semesterPercentage" id="semesterPercentage" type="text" class="form-control" placeholder="Enter Semester Percentage..." required="true">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <h5 class="form-control-label offset-sm-3">Semester Mark Sheet</h5>
                                        <div class="picture-container">
                                            <div class="picture">
                                                <g:img src="default-icon.png" class="picture-src" id="semesterMarksheetPreview" title=""/>
                                            </div>
                                        </div>
                                        <input type="file" id="semesterMarksheet" class="offset-sm-3" name="semesterMarksheet" required="true">
                                    </div>

                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-8 offset-sm-2">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">B.Tech Percentage <sub id="error">( Not Mandatory)</sub></label>
                                            <input name="bTechPercentage" id="bTechPercentage" type="text" class="form-control" placeholder="Overall B. Tech. Percentage...">
                                        </div>
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
