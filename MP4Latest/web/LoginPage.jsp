<%-- 
    Document   : index
    Created on : Nov 25, 2022, 7:31:15 PM
    Author     : Josephine Chen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8 width=device-width, initial-scale=1" name="viewport">
        <title>Login Page</title>
        <link rel="stylesheet" href="css/logincss.css"/>
    </head>
    <body>
        <div class="outer">
            <body>  
                <form action ="Login" method="post">
                    <input type="button" class="return" value="&#10229; back" onclick="history.back()">
                </form>
                         
                <img src="https://i.postimg.cc/6qRKB7gS/SAMPLE-LOGO-MP4-1-removebg-preview.png" alt="Pop o'Fun logo"/>
            <center><h1>Login your account</h1></center>

            <div class="input-group">
                <form action ="Login" method="post">
                    <label class="label">Username:</label>
                    <input name="uname" class="input" type="type" placeholder="Enter your username" required>
                    </div>
                    <div class="input-group">
                        <label class="label">Password:</label>
                        <input name="pass" class="input" type="password" placeholder="Enter your password" required>
                    </div>
                    <div>
                        <input type="submit" value="Login" />
                    </div>
                    </body>
            </div>
</body>
</html>





