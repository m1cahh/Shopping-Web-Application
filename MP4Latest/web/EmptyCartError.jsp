<%-- 
    Document   : EmptyCartError
    Created on : 12 5, 22, 8:32:54 PM
    Author     : arian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empty Cart Error</title>
        <link rel="stylesheet" href="css/emptycarterrorcss.css"/>
    </head>
    <body> 
        <center>
        <div class="error">    
          <img src="https://i.postimg.cc/25DJy17G/error3.png" alt="funkopop character">
          <h1>Uh Oh...</h1>          
          <p>looks like your shopping cart is empty, feel free to browse our site!</p>
          
          <form action="InventoryPage.jsp" method="post">
            <input type="submit" value="return to home page" /> 
           </form>
        </div>
        </center>       
    </body>
</html>