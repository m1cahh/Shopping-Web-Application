<%-- 
    Document   : ConfirmationPage
    Created on : 12 4, 22, 12:34:37 PM
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
        <title>Confirmation Page</title>
        <link rel="stylesheet" href="css/confirmationcss.css"/>
        <div class="header">
            <img src="images/Logo.png" alt="Pop o'Fun logo"/>
        </div>
    </head>
    <body>
        <%  //Ensuring Security of Page
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

            response.setHeader("Pragma", "no-cache"); //HTTP 1.0

            if(session.getAttribute("username")==null) //there is a user logged in
            {
                 response.sendRedirect("LoginPage.jsp"); //prompt user to login

            }
            else 
            {
                if(session.getAttribute("cart-list") == null) //there are currently no list in session: haven't added anything yet
                { 
                    response.sendRedirect("EmptyCartError.jsp"); // redirect user to shopping cart error page.
                }   
            }
	%>
        <div id="order-summary">
        <h1>Order Confirmation</h1>
        <div id="container">
        <%
            int totalPrice = 0;
            ArrayList<Cart> cartList = (ArrayList<Cart>)session.getAttribute("cart-list"); //there are currently no list in session: haven't added anything yet
            try
            {
                if(!cartList.isEmpty()){ //will checks if the list is empty or not
                    for(Cart x : cartList){
                    out.print("<div class='item-order'>");
                         out.print("<h3>"+ x.getItemName() + "</h3>"+ "<p>"+ x.getItemPrice() + "</p>");
                    out.print("</div>");

                    totalPrice = totalPrice + x.getItemPrice();
                    } 
                }
                else
                {
                    response.sendRedirect("EmptyCartError.jsp"); // redirect user to shopping cart error page.
                }
            }
            catch(Exception ex) //catching null pointer exceptions: when cart is empty
            {
                //do nothing
            }
        %>
        </div>
        <div class="cart-total">
                        <h2>Total</h2>
                        <% out.print("<p>" + totalPrice + "</p>"); %>
                    </div>
                    
        <div id="user-controls">
            <form action="Confirm" method="post">
                <input type=submit value="Place Order" id="order">
            </form>
            <form action="ShoppingCart.jsp" method="post">
                <input type=submit value="Go Back" id="back">
            </form>
        </div>
        </div>
        <div class="footer"></div>  
    </body>
</html>
