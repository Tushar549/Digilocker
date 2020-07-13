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
                <h2>Send Message</h2>
            </div>
            <div class="wizard-container">
                <div class="card wizard-card" id="wizard">
                    <div class="row justify-content-center">
                        <div class="col-10 ml-1 mr-1">
                            	<div class="form">
				<div class="form-group">
				  <div class="row">
                                      
                                    <div class="col-sm-7 offset-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Student Roll No </label>
                                            <input name="messageRollNo" id="messageRollNo" type="text" class="form-control">
                                        </div>
                                    </div>
                                        <div class="row offset-1">
                                        <div class="form-group label-floating">
                                            <input type="button" class="btn btn-primary" id="showStudentMessage" value="Enter"/>
                                        </div>
                                        <div class="form-group label-floating">
                                            <button type="submit" class="btn btn-primary" id="refreshForm">Refresh</button>
                                        </div>
                                    </div>
                                </div>
                               </div>
				</div>
                                <div id="studentMessage">
                                <div class="form">
				<div class="form-group">
                                    <div class="row" id="gradientBox1">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Student Name</label>
                                        <div class="input-group">
						<span class="input-group-prepend">
						<i class="fa fa-user m-2"></i>
                                                </span>
                                            <input name="messageStudentContact" type="text" class="form-control" value="Kumar Shivay" disabled/>
                                        </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Student Contact No</label>
                                        <div class="input-group">
						<span class="input-group-prepend">
						<i class="fa fa-phone m-2"></i>
                                                </span>
                                            <input name="messageStudentContact" type="text" class="form-control" value="9706483271" disabled/>
                                        </div>
                                        </div>
                                    </div>
                                    </div>
                                    <div id="messageBox">
                                <div class="form-group label-floating">
                                  <label class="form-control-label" for="comment">Message:</label>
				  <div class="col-sm-12">
					<textarea class="form-control" id="messageStudent"></textarea>
				  </div>
                                  </div>
				<div class="form-group pull-right">        
				  	<button type="submit" class="btn btn-success" id="sendMessage">Submit</button>
				</div>
                                </div>
			</div>
                        </div>
                        </div>
                        </div>
</div>
                            <!-- Textual inputs end -->
    </div>
    </div>
  </div>
  </div>
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
                    <p>Message has been sent successfully</p>
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
        
<asset:javascript src="jquery-2.2.4.min.js"/>
<!-- bootstrap 4 js -->
<asset:javascript src="popper.min.js"/>
<asset:javascript src="bootstrap.min.js"/>
<asset:javascript src="jquery.slimscroll.min.js"/>
<asset:javascript src="jquery.slicknav.min.js"/>
<asset:javascript src="metisMenu.min.js"/>
<asset:javascript src="plugins.js"/>
<asset:javascript src="header.js"/>
<asset:javascript src="scripts.js"/>
</body>

</html>
