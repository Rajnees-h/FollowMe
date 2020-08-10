/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.FollowMe.JavaClasses;

import com.FollowMe.DatabaseClasses.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author rowdy
 */
@WebServlet(name = "LoginAccount", urlPatterns = {"/LoginAccount"})
public class LoginAccount extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        String userEmailAddress = request.getParameter("userEmailAddress");
        String userPassword = request.getParameter("userPassword");
        
        if(DatabaseConnection.validateUser(new User(userEmailAddress,userPassword)))
        {
            User user = DatabaseConnection.getUser(new User(userEmailAddress,userPassword));
            HttpSession session = request.getSession();
            session.setAttribute("UserId", user.getUserId());
           
            
            request.getRequestDispatcher("MasterPage.jsp").forward(request, response);
        }
        else
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        
    }

  
}
