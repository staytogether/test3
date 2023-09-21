<%-- 
    Document   : Register
    Created on : Sep 19, 2023, 8:56:07 PM
    Author     : LuuTu
--%>

<html>
    <head>
        <title>Registration</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <form id="registerForm" action="${pageContext.request.contextPath}/RegisterController" method="post">
            <h2>Registration</h2>

            <label for="username">Username:</label>
            <input type="text" name="username" required><br><br>

            <label for="password">Password:</label>
            <input type="password" name="password" required><br><br>

            <label for="email">Email:</label>
            <input type="email" name="email" required><br><br>

            <label for="dob">Date of Birth:</label>
            <input type="date" name="dob" required><br><br>

            <label for="phone">Phone:</label>
            <input type="text" name="phone" required><br><br>

            <label for="address">Address:</label>
            <input type="text" name="address" required><br><br>

            <input type="submit" value="Register">

        </form>
        <div class="error" style="color:red"> ${error} </div>  
        <div class="success" style="color:green"> ${success} </div>                       

        <p>Registered already? <a href="${pageContext.request.contextPath}/navbar?go=login">Login</a></p>
        <p><a href="${pageContext.request.contextPath}/home">Home</a></p>
    </body>
</html>


