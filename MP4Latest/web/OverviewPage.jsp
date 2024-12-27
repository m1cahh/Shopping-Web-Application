<%-- 
    Document   : OverviewPAge
    Created on : Nov 28, 2022, 4:26:32 PM
    Author     : Josephine Chen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Overview Page</title>
        <link rel="stylesheet" href="css/overviewcss.css"/>
    </head>
    <body>
        <div class="leftPart">
            <h1> Get your<br>Collectibles<br>Now! </h1>
            <div class="buttonPart">
                <form action="InventoryPage.jsp">
                    <input class="button guest" type="submit" value="Guest">
                </form>
                <form action="LoginPage.jsp">
                    <input class="button login" type="submit" value="Login as user">
                </form>
            </div>
        </div>
        <div class="rightPart">
            <div class="imagePart">
                <div class="images">
                    <img src="images/Funko_McDo.png">
                    <img src="images/Funko_Archer.png">
                    <img src="images/Funko_Eagles.png">
                </div>
                <div class="images">
                    <img src="images/Funko_Noodles.png">
                    <img src="images/Funko_Trese.png">
                    <img src="images/Funko_Ironman.png">
                </div>
            </div>
        </div>
    </body>
</html>
