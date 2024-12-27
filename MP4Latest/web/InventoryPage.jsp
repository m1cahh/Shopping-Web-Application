<%-- 
    Document   : GuestInventoryPage
    Created on : 11 28, 22, 11:10:10 PM
    Author     : Yanah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8, width=device-width, initial-scale=1" name="viewport">
        <link rel="stylesheet" href="css/inventorycss.css"/>
        <% //Ensure Security of page
	
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0%>
        <div class="header">
            <div class="logo">
                <img src="images/Logo.png" id="logo-img"></div>   
                <%
                    if(session.getAttribute("username")!= null){ //if user is logged in
                %>
                <form action = "Logout" method = "get">
                <div class="btn-container">           
                    <input type="submit" value="Logout" id="logout-btn">
                </div>
                </form>
                <form action="ShoppingCart.jsp">
                <div class="btn-container">
                    <input type="submit" value="Cart" id="cart-btn"/>
                </div>
                </form> 
                <% }            
                else {%>
                <form action = "LoginPage.jsp" method = "get">
                <div class="btn-container">           
                    <input type="submit" value="Login" id="login-btn">
                </div>
                </form><% } %>
                
                
                
        </div>
    </head>
    <body>
        <div class="user-controls">
        <%
                    if(session.getAttribute("username")!= null){ //if user is logged in
                %>
        <form action="Logout" method="get">
            <input type=submit value="Logout" id="logout">
        </form>
        <form action="ShoppingCart.jsp" method="post">
            <input type=submit value="Cart" id="cart">
        </form>
        <% }            
        else {%>
        <form action = "LoginPage.jsp" method = "get">          
        <input type="submit" value="Login" id="login">
        </form>
        </div><% } %>
        <form method="get" action="AddCart">
        <div class="container" id="container1">
                <div class="rectangle">
                    <div id="archer-img" class="item-img"></div>
                    <h1>Pop! College: Green Archers</h1>
                    <p>800</p>
                    <% if(session.getAttribute("username")!= null){ %>
                        <br><center><button type="submit" name="items" value ="item_archer"> Add to Cart </button></center>
                    <% }%>
                </div>
                <div class="rectangle">
                    <div id="eagles-img" class="item-img"></div>
                    <h1>Pop! College: Blue Eagles</h1>
                    <p>800</p>
                    <% if(session.getAttribute("username")!= null){ %>
                        <br><center><button type="submit" name="items" value ="item_eagle"> Add to Cart </button></center>
                    <% }%>
                </div>
                <div class="rectangle">
                    <div id="ironman-img" class="item-img"></div>
                    <h1>Pop! The Avengers: Iron Man </h1>
                    <p>900</p>
                    <% if(session.getAttribute("username")!= null){ %>
                        <br><center><button type="submit" name="items" value ="item_iron"> Add to Cart </button></center>
                    <% }%>
                </div>
                <div class="rectangle">
                    <div id="mcdo-img" class="item-img"></div>
                    <h1>Pop! Ad Icon: Ronald McDonald</h1>
                    <p>650</p>
                    <% if(session.getAttribute("username")!= null){ %>
                        <br><center><button type="submit" name="items" value ="item_mcdo"> Add to Cart </button></center>
                    <% }%>
                </div>
            </div>
            <div class="container">
                <div class="rectangle">
                    <div id="noodles-img" class="item-img"></div>
                    <h1>Pop! Fantastik: Spicy Noodles</h1>
                    <p>900</p>
                    <% if(session.getAttribute("username")!= null){ %>
                        <br><center><button type="submit" name="items" value ="item_noodles"> Add to Cart </button></center>
                    <% }%>
                </div>
                <div class="rectangle">
                    <div id="trese-img" class="item-img"></div>
                    <h1>Pop! Comics: Alexandra Trese</h1>
                    <p>800</p>
                    <% if(session.getAttribute("username")!= null){ %>
                        <br><center><button type="submit" name="items" value ="item_trese"> Add to Cart </button></center>
                    <% }%>
                </div>
                <div class="rectangle">
                    <div id="queen-img" class="item-img"></div>
                    <h1>Pop! Royals: Queen Elizabeth II</h1>
                    <p>900</p>
                    <% if(session.getAttribute("username")!= null){ %>
                        <br><center><button type="submit" name="items" value ="item_queen"> Add to Cart </button></center>
                    <% }%>
                </div>
                <div class="rectangle">
                    <div id="batman-img" class="item-img"></div>
                    <h1>Pop! Heroes: Batman (HUSH)</h1>
                    <p>900</p>
                    <% if(session.getAttribute("username")!= null){ %>
                        <br><center><button type="submit" name="items" value ="item_batman"> Add to Cart </button></center>
                    <% }%>
                </div>
            </div>
        </form>
        <div class="footer">
            <center>
            <img class="socials" src="https://i.postimg.cc/9XYQRhhb/socials.png" alt="fb - instagram - twitter"/>
            </center>
        </div>
    </body>
</html>
