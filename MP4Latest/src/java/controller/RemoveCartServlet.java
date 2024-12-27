package controller;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;

/**
 *
 * @author Josephine Chen
 */
public class RemoveCartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         try ( PrintWriter out = response.getWriter()) {
             
            HttpSession session = request.getSession();
            ArrayList<Cart> prevList = (ArrayList<Cart>) session.getAttribute("cart-list"); //will get the cart list of current user
            
            String itemDelete = request.getParameter("delete");
            
            for(Cart x: prevList){
                if(x.getItemName().equals(itemDelete)){ //deletes if there is an equivalent item in list
                    prevList.remove(x);
                    break;
                }
            }
            
            session.setAttribute("cart-list", prevList); //updates the list
            response.sendRedirect("ShoppingCart.jsp");
         }
    }

}
