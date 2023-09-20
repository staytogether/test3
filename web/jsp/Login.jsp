<%-- 
    Document   : Login
    Created on : Sep 19, 2023, 6:32:57 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body>
        <form action="${pageContext.request.contextPath}/login" method="post" id="loginForm">
            <div>
                <div class="panel shadow1">

                    <form class="login-form">
                        <p><label for="username">UserName</label> <input type="text" name="username" id="username" required></p>
                        <p><label for="password">Password</label> <input type="password" name="password" id="password" required></p>
                        </p>
                        <div class="error" style="color:red"> ${error} </div>                       
                        <div class="panel-switch animated fadeIn">
                            <p><input type="submit" value="Login" name="submit"></p>
                            <p>You don't have any account? <a href="${pageContext.request.contextPath}/navbar?go=register" class="register">Click here</a></p>
                        </div>
                    
                </div>
            </div>
        </form>
    </body>
</html>
