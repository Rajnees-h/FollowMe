/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.FollowMe.JavaClasses;

import com.FollowMe.DatabaseClasses.Profile;
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
@WebServlet(name = "UpdateProfileInformation", urlPatterns = {"/UpdateProfileInformation"})
public class UpdateProfileInformation extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(false);
         if( (session == null) || (session.getAttribute("userId") == null))
          request.getRequestDispatcher("Login.jsp").forward(request, response);
         else{
       
             String userId = (String) session.getAttribute("userId");
             
        Profile profile = new Profile();
        
             System.out.println("This is the update Value : "+request.getParameter("name"));
 
               profile.setUserId(Integer.parseInt(userId));
               profile.setName(request.getParameter("name"));
               profile.setNickName(request.getParameter("nickName"));
               profile.setFavouriteQuote(request.getParameter("favouriteQuote"));
               profile.setAboutMe(request.getParameter("aboutMe"));
               profile.setHighSchool(request.getParameter("highSchool"));
               profile.setUniversity(request.getParameter("university"));
               profile.setWork(request.getParameter("work"));
               profile.setContactNumber(request.getParameter("contactNumber"));
               profile.setEmailAddress(request.getParameter("emailAddress"));
               profile.setWebsiteAndSocialLinks(request.getParameter("websiteAndSocialLinks"));
               profile.setCity(request.getParameter("city"));
               profile.setState(request.getParameter("state"));
               profile.setCountry(request.getParameter("country"));
               profile.setRelationship(request.getParameter("relationship"));
               profile.setFamily(request.getParameter("family"));
               profile.setDateOfBirth(request.getParameter("dateOfBirth"));
               profile.setGender(request.getParameter("gender"));
               profile.setIntresteIn(request.getParameter("intrestedIn"));
               profile.setLanguages(request.getParameter("languages"));
               profile.setReligion(request.getParameter("religion"));
        
               DatabaseConnection.updateProfile(profile);
               
               request.getRequestDispatcher("MasterPage.jsp").forward(request, response);
             
         }
            
     
    }

}
