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
        <div class="wizard-container">
            <div class="row justify-content-center">

                <div class="card wizard-card">
                    <div class="row justify-content-center">
                        <h3 class="wizard-header col-10" id="gradientBox">
                            <center>Upload Training & Placement Cell File</center>
                        </h3>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-11">
                            <div class="offset-2 pull-left">
                                <input type="file" class="btn btn-warning" id="fileUpload" accept=".csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel"/>
                                <input type="button" class="btn btn-success upload" id="upload" value="Upload" onclick="Upload()" />
                            </div>
                            <div class="pull-right mt-4 mr-3">
                                <a href="javascript:void(0);" onclick="exportTableToExcel('tblData')">
                                    <i class="fa fa-lg fa-cogs pull-right"> Download Sample .xls File</i>
                                </a>

                            </div>
                        </div>
                    </div>

                    <g:form contoller="Admin" action="tnPFile">
                        <div class="row justify-content-center">
                            <div class="col-auto">
                                <div id="dvExcel" class="table table-responsive table-striped form-group">                     
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div id="dvButton" class="col-10 offset-1">                     
                                <input type="submit" name="submit" value="submit" class="btn btn-success pull-right" data-toggle="modal" data-target="#messageModal"/>
                            </div>
                        </div>
                    </g:form>
                </div>    

            </div>

        </div>

    </div>
</div>

<!-- Textual inputs end -->
<table id="tblData">
    <tr>
        <th>tnPId</th>
        <th>firstName</th>
        <th>lastName</th>
        <th>contactNumber</th>
        <th>email</th>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
</table>

     <!-- main content area end -->
  <!-- Modal -->


    <div class="modal fade" id="messageModal" role="dialog">
        <div class="modal-dialog  modal-dialog-centered">

  <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Message</h4>
                </div>
                <div class="modal-body">
                    <p>Data is being saved...</p>
                </div>
                
                <div class="modal-footer">
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
<asset:javascript src="metisMenu.min.js"/>
<asset:javascript src="xlsx.full.min.js"/>
<asset:javascript src="jszip.js"/>
<asset:javascript src="plugins.js"/>
<asset:javascript src="header.js"/>
<asset:javascript src="uploadTnPFile.js"/>

</body>

</html>
