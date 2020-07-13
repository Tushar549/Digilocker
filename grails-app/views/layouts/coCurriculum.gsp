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
    <div class="modal fade" id="coCurriculumModal">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">

  <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Upload Co-Curriculum Certificates</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

<!-- Modal body -->
                <div class="modal-body">
                    <div class="row">
                        <div class="col-12">
                            <g:form controller="Certificate" action="" method="POST" id="coCurriculumForm" name="coCurriculumForm" enctype="multipart/form-data">
                                <div class="form-group">
                                    <input name="rollNo" class="form-control" id="rollNo"  type="hidden">
                                </div>
                                <h5 id="statusLabel">Status</h5>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group">
                                            <input type="radio" id="interCollege" name="status" required="true">
                                            <a>Inter College</a>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group">
                                            <input type="radio" id="intraCollege" name="status" required="true">
                                            <a>Intra College</a>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <h5 id="categoryLabel">Category</h5>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group">
                                            <input type="radio" name="category" required="true">
                                            <a>Literary </a>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group">
                                            <input type="radio" name="category" required="true">
                                            <a>Cultural</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group">
                                            <input type="radio" name="category" required="true">
                                            <a>Technical</a>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group">
                                            <input type="radio" name="category" required="true">
                                            <a>Sports</a>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-5">
                                        <div class="form-group">
                                            <h5 id="eventOrganizerLabel">Event Organized By</h5>
                                            <input name="eventOrganizer" type="text" class="form-control offset-sm-2" placeholder="Enter organiser name...." required="true">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <h5 id="certificateLabel" class="offset-sm-3">Upload Certificate</h5>
                                        <div class="picture-container">
                                            <div class="picture">
                                                <g:img src="default-icon.png" class="picture-src" id="coCurriculumCertificatePreview" title=""/>
                                            </div>
                                        </div>
                                        <input type="file" id="coCurriculumCertificate" class="offset-sm-2" method="post" name="coCurriculumCertificate" required="true">
                                    </div>
                                </div>
                                <hr>
                                <h5 id="positionLabel">Position</h5>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group">
                                            <input type="radio" name="position" required="true">
                                            <a>1<sup>st</sup> Position</a>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group">
                                            <input type="radio" name="position" required="true">
                                            <a>2<sup>nd</sup> Position</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group">
                                            <input type="radio" name="position" required="true">
                                            <a>3<sup>rd</sup> Position</a>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group">
                                            <input type="radio" name="position" required="true">
                                            <a>Member</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group">
                                            <input type="radio" name="position" required="true">
                                            <a>Participant</a>
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
