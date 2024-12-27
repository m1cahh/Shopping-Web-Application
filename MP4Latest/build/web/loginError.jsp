<%-- 
    Document   : loginError
    Created on : 12 5, 22, 7:24:15 PM
    Author     : arian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Error</title>
        <link rel="stylesheet" href="css/loginerrorcss.css" />
    </head>
    <body>
    <center>
        <div class="error">
            <h1>Oops! <img src="https://i.postimg.cc/fRLyFb9H/error1.png" alt="funkopop character"></h1>          
            <p>looks like your username or password is not registered in our system. Please try again.</p>

            <form action="LoginPage.jsp" method="post">
                <input type="submit" value="return to login page"/>              
            </form>  
        </div>
    </center>       
</body>
</html>
