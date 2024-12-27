package controller;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import model.Cart;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Josephine Chen
 */
public class AddCartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try ( PrintWriter out = response.getWriter()) {

            ArrayList<Cart> cartList = new ArrayList<>(); //create a list
            
            String items = request.getParameter("items"); //gets the item from buttons
            Cart cart = new Cart();
           
            switch(items){ //setting up items to be placed into the list
                case "item_archer":
                    cart.setItemName("Pop! College: Green Archers");
                    cart.setItemPrice(800);
                    break;
                case "item_eagle":
                    cart.setItemName("Pop! College: Blue Eagles");
                    cart.setItemPrice(800);
                    break;
                case "item_iron":
                    cart.setItemName("Pop! The Avengers: Iron Man");
                    cart.setItemPrice(900);
                    break;
                case "item_mcdo":
                    cart.setItemName("Pop! Ad Icon: Ronald McDonald");
                    cart.setItemPrice(650);
                    break;
                case "item_noodles":
                    cart.setItemName("Pop! Fantastik: Spicy Noodles");
                    cart.setItemPrice(900);
                    break;
                case "item_trese":
                    cart.setItemName("Pop! Comics: Alexandra Trese");
                    cart.setItemPrice(800);
                    break;
                case "item_queen":
                    cart.setItemName("Pop! Royals: Queen Elizabeth II");
                    cart.setItemPrice(900);
                    break;
                case "item_batman":
                    cart.setItemName("Pop! Heroes: Batman (HUSH)");
                    cart.setItemPrice(900);
                    break;
                default:
                    break;
            }
            
            HttpSession session = request.getSession();
            ArrayList<Cart> prevList = (ArrayList<Cart>) session.getAttribute("cart-list"); //will get the cart list of current user
            
            if(prevList == null){ // check if there is an existing list
                cartList.add(cart);
            }
            else{
                cartList = prevList; //overwrite previous list to current list
                cartList.add(cart);
            }
            
            session.setAttribute("cart-list", cartList); //updating current list of user
            response.sendRedirect("InventoryPage.jsp");
        }
    }

    
}
