package controller;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Josephine Chen
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            //doPost Method when sending data
                
            //declaration of variables
            String str;
            String tempString = "";
            int ctr = 0;
                    
            response.setContentType("text/html");
            
            String filename = "/WEB-INF/userList.properties";
            
            ServletContext context = getServletContext();

            // First get the file InputStream using ServletContext.getResourceAsStream()method.
            InputStream is = context.getResourceAsStream(filename);

            InputStreamReader isr = new InputStreamReader(is);
            BufferedReader br = new BufferedReader(isr);

            //Creating a HashMap 
            Map fileMap = new HashMap();

            //loop through each line from the file
            while((str = br.readLine())!= null)
            {
                    //will place even lines(username) as the key
                    if(ctr % 2 == 0)
                    {
                            fileMap.put(str, tempString);
                    }
                    //will place odd lines(password) as the value of the previous key
                    else
                    {
                            fileMap.put(tempString, str);
                    }
                    //temporarily holds the string
                    tempString = str;
                    ctr++;
            }

            String uname = request.getParameter("uname");
            String pass = request.getParameter("pass");
            
            if(pass.equals(fileMap.get(uname)))
             {
                    HttpSession session = request.getSession(); //create a session
                    session.setAttribute("username", uname);
                    response.sendRedirect("InventoryPage.jsp");
             }
             else
             {
                    response.sendRedirect("loginError.jsp"); //sends to login error page
                    
             }
            
            br.close();

        }


}
