<%-- 
    Document   : ShoppingCart
    Created on : 11 28, 22, 7:37:45 PM
    Author     : Yanah
--%>

<%@page import="model.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8 width=device-width, initial-scale=1" name="viewport">
        <title>Shopping Cart</title>
        <link rel="stylesheet" href="css/cartcss.css"/>
        <div class="header">
            <img src="images/Logo.png" alt="Pop o'Fun logo"/>
        </div>
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

            response.setHeader("Pragma", "no-cache"); //HTTP 1.0

            if(session.getAttribute("username")== null) //there are currently no logged in user
            {
                response.sendRedirect("LoginPage.jsp");
            }
            else
            {
                if(session.getAttribute("cart-list")== null) //there are currently no list in session: haven't added anything yet
                {
                    response.sendRedirect("EmptyCartError.jsp"); 
                }
            }
           
	%>
        
        <div class="cart">
            <div class="item-summary">
                <form action="InventoryPage.jsp">
                    <input type="submit" id="backButton" class="return" value="&#10229; back">
                </form>
                <div class="imagePart">
                    <img class="poster" src="images/christmasSalePoster.png" alt="Web App What's New?">
                </div>
            </div>
            <div class="order-summary">
                <div id="back-div">
                <form action="InventoryPage.jsp">
                    <input type="submit" id="backButton" class="return" value="&#10229; back">
                </form>
                </div>
                <h1 class="body-header">Order<br>Summary</h1>
                <div class="orders">
                    <%
                    int totalPrice = 0;
                    ArrayList<Cart> cartList = (ArrayList<Cart>)session.getAttribute("cart-list"); //set up cart list if it exist
                    
                    try
                    {
                        if(!cartList.isEmpty()) //check if the current list is empty or not
                        { 
                            out.print("<form method='get' action='RemoveCart'>"); //form used for remove buttons
                                for(Cart x : cartList)
                                { //run through the list
                                     out.print("<div class='item-order'>");
                                     out.print("<h3>"+ x.getItemName() + "</h3>"+ "<p>"+ x.getItemPrice() + "</p>"); //displaying cart items in shopping cart page
                                     out.print("<button id='deleteButton' name='delete' value='"+ x.getItemName()+"'>Remove</button>"); //gives each item corresponding remove button
                                    out.print("</div>");

                                    totalPrice = totalPrice + x.getItemPrice(); //get sum of total price of all item
                                } 
                            out.print("</form>");
                        }
                        else 
                        {
                            response.sendRedirect("EmptyCartError.jsp"); // redirect user to shopping cart error page.
                        }
                    }
                    catch(Exception ex) //catches null pointer exception when cart is empty.
                    {
                        // do nothing
                    }

                    %>
                </div>
                <div class="total-part">
                    <div class="cart-total">
                        <h2>Total</h2>
                        <% out.print("<p>" + totalPrice + "</p>"); %> <%--will display the total price --%>
                    </div>
                    <div class="checkout">
                        <form action="ConfirmationPage.jsp" method="post">
                            <input type="submit" id="submitButton" value="Checkout" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <center>
            <img class="socials" src="https://i.postimg.cc/9XYQRhhb/socials.png" alt="fb - instagram - twitter"/>
            </center>
        </div>
    </body>
</html>
