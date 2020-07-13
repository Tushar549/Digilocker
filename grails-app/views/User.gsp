<!doctype HTML>
<%
response.setHeader("Cache-Control","no-cache");  

response.setHeader("Cache-Control","no-store");     

response.setDateHeader("Expires", 0); 

response.setHeader("Pragma","no-cache");

%>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
                <asset:link rel="icon" href="favicon.ico" type="image/icon type"/>

        <title>e-IPEC</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
    <asset:link rel="stylesheet" href="bootstrap.min.css" />
    <asset:link rel="stylesheet" href="application.css" />
    

</head>
<body>
    <div class="row">
        <div class="container-fluid">
        <div class="display">
          <!--  Card ~ #01 -->
            <div class="card">
                <g:link controller="Student" action="index">
                    <div class="banner">
                        <div class="avatar"><g:img dir="images" class="avatar user-thumb" file="student.png" alt="avatar"/>
                        </div>
                    </div>

                    <h3>Student</h3>
                </g:link>
            </div>

<!-- Card ~ #02  -->
            <div class="card1">
                <g:link controller="tnP" action="index">
                    <div class="banner1">
                        <div class="avatar"><g:img dir="images" class="avatar user-thumb" file="tnp.png" alt="avatar"/>
                        </div>
                    </div>

                    <h3>T&P</h3>

                </g:link>
            </div>
             <!--  Card ~ #03 -->
            <div class="card2">
                <g:link controller="Admin" action="index">
                    <div class="banner2">
                        <div class="avatar"><g:img dir="images" class="avatar user-thumb" file="admin.png" alt="avatar"/>
                        </div>
                    </div>

                    <h3>Admin</h3>
                </g:link>
                </div>
            </div>
            </div>
        </div>
            </body>
            </html>
