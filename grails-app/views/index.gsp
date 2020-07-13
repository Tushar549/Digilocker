<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sample title</title>
    </head>
    <body>
        <sec:ifNotLoggedIn>
    <script>
        window.location="${createLink(controller: 'login', action: 'auth' )}";
    </script>
</sec:ifNotLoggedIn>
<sec:ifLoggedIn>
    <sec:ifAnyGranted  roles="ROLE_ADMIN">
        <script>
            window.location="${createLink(controller: 'Admin', action: 'index' )}";
        </script>
    </sec:ifAnyGranted>
    <sec:ifAnyGranted roles="ROLE_STUDENT">
        <script>
            window.location="${createLink(controller: 'Student', action: 'index' )}";
        </script>
    </sec:ifAnyGranted>
    <sec:ifAnyGranted roles="ROLE_TNP">
        <script>
            window.location="${createLink(controller: 'TnP', action: 'index' )}";
        </script>
    </sec:ifAnyGranted>
</sec:ifLoggedIn>
        
    </body>
</html>
