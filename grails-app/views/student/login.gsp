<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.

/* 
    Created on : 4 Oct, 2019, 10:54:22 PM
    Author     : Shivay
*/
-->
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<%
response.setHeader("Cache-Control","no-cache");  

response.setHeader("Cache-Control","no-store");     

response.setDateHeader("Expires", 0); 

response.setHeader("Pragma","no-cache");

%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>e-IPEC</title>
        <asset:link rel="icon" href="favicon.ico" type="image/icon type"/>
        <asset:link rel="stylesheet" href="bootstrap.min.css"/>
        <asset:link rel="stylesheet" href="font-awesome.min.css"/>
        <asset:link rel="stylesheet" href="scripts.css"/>
        <asset:link rel="stylesheet" href="login.css"/>
    
</head>
<body>

    <div class="main">

        <div class="container">
            <form method="POST" id="signup-form" class="signup-form" action="#">
                <div>
                    <h3></h3>
                    <fieldset>
                        <input type="text" name="studentContactNumber" id="studentContactNumber" />
                        <label for="studentContactNumber" class="form-label">01 . What's your Contact number ?</label>
                    </fieldset>

                    <h3></h3>
                    <fieldset>
                        <input type="text" name="otpStudent" id="otpStudent" />
                        <label for="otpStudent" class="form-label">02 . Enter OTP to verify your number !</label>
                    </fieldset>

                    <h3></h3>
                    <fieldset>
                        <input type="text" name="password" id="password" />
                        <label for="password" class="form-label">04 . Create your password</label>
                        <span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password"></span>
                    </fieldset>

                    <h3></h3>
                    <fieldset>
                        <input type="text" name="re_password" id="re_password" />
                        <label for="re_password" class="form-label">05 . Repeat your password </label>
                        <span toggle="#re_password" class="zmdi zmdi-eye field-icon toggle-password"></span>
                    </fieldset>
                </div>
            </form>
        </div>

    </div>

    <!-- JS -->
    <asset:javascript src="jquery.min.js"/>
    <asset:javascript src="jquery.validate.min.js"/>
    <asset:javascript src="additional-methods.min.js"/>
    <asset:javascript src="jquery.steps.min.js"/>
    <asset:javascript src="login.js"/>
</body>
</html>
    


