/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.FollowMe.JavaClasses;

import com.FollowMe.DatabaseClasses.Profile;
import com.FollowMe.DatabaseClasses.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;




public class DatabaseConnection {
    
    public static Connection connection;
    public static PreparedStatement preparedStatement;
    
    public static Connection getConnection()
    {
        String myDriver = "com.mysql.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/FollowMe";
        String userName = "raj";
        String password = "raj";
        
        try{
            
            Class.forName(myDriver);
            connection = DriverManager.getConnection(connectionUrl,userName,password);
        
        
        }catch(Exception e){System.out.println("Error in getConnection :"+e.getMessage());}
        
        return connection;
    
    }
    
    public static void insertUser(User user)
    {
        String query = "INSERT INTO User (userEmailAddress,userPassword)VALUES (?,?)";
        
        try{
        
            connection = getConnection();
            preparedStatement = connection.prepareStatement(query);
            
            preparedStatement.setString(1,user.getUserEmailAddress());
            preparedStatement.setString(2,user.getUserPassword());
            
            preparedStatement.execute();
            
            connection.close();
        
        }catch(Exception e ){System.out.println("Error in insertUser :"+e.getMessage());}

        
        
    }
    
    public static boolean validateUser(User user)
    {
        String query = "Select userPassword from User where userEmailAddress = ?";
        
        try{
            connection = getConnection();
            preparedStatement = connection.prepareStatement(query);

            preparedStatement.setString(1,user.getUserEmailAddress());
            
            ResultSet resultSet = preparedStatement.executeQuery();
            
            while(resultSet.next())
            {
                System.out.println(resultSet.getString(1));
                System.out.println(user.getUserPassword());
                if(user.getUserPassword().equals(resultSet.getString(1)))
                    return true;
            }
            
            
        
        }catch(Exception e){System.out.println("Error in validate User : "+e.getMessage() );}
        
        return false;
    }
    
    //// get user Id
    
     public static int getUserId(String userEmailAddress)
    {
        int userId = 0;
        String query = "Select * from User where userEmailAddress = ?";
        
        try{
            connection = getConnection();
            preparedStatement = connection.prepareStatement(query);

            preparedStatement.setString(1,userEmailAddress);
            
            ResultSet resultSet = preparedStatement.executeQuery();
            
            while(resultSet.next())
            {
                    userId = Integer.parseInt(resultSet.getString(1));
         
            }
            
            
        
        }catch(Exception e){System.out.println("Error in get User Id : "+e.getMessage() );}
        
        return userId;
    }
    
    
    //// get User Id
    
    // to get User from database
    public static User getUser(User user)
    {
        String query = "Select * from User where userEmailAddress = ?";
        
        try{
            connection = getConnection();
            preparedStatement = connection.prepareStatement(query);

            preparedStatement.setString(1,user.getUserEmailAddress());
            
            ResultSet resultSet = preparedStatement.executeQuery();
            
            while(resultSet.next())
            {
                System.out.println(resultSet.getString(1));
                System.out.println(user.getUserPassword());
                if(user.getUserPassword().equals(resultSet.getString(3)))
                {
                    User u = new User(resultSet.getString(1),resultSet.getString(2),resultSet.getString(3));
                    return u;
                }
            }
            
            
        
        }catch(Exception e){System.out.println("Error in validate User : "+e.getMessage() );}
        
        return null;
    }
    
    /// to get UserName from the Database
    
     
    
    /// Insert User Profile
    
     public static void insertProfile(Profile profile)
    {
        String query = "INSERT INTO Profile (UserId,EmailAddress)VALUES (?,?)";
        
        try{
        
            connection = getConnection();
            preparedStatement = connection.prepareStatement(query);
            
            preparedStatement.setInt(1,profile.getUserId());
            preparedStatement.setString(2,profile.getEmailAddress());
            
            preparedStatement.execute();
            
            connection.close();
        
        }catch(Exception e ){System.out.println("Error in insertProfile :"+e.getMessage());}

        
        
    }
     
     public static void updateProfile(Profile profile){
         
     
         
          String query = "UPDATE Profile "
                  + "SET "
                  + "Name = ? , NickName = ? , FavouriteQuote = ? , AboutMe = ? ,"
                  + "HighSchool = ? ,University = ? ,Work = ? ,ContactNumber = ? ,"
                  + "EmailAddress = ? ,WebsiteAndSocialLinks = ? ,City = ? ,State = ? ,"
                  + "Country = ? ,Relationship = ? ,Family = ? ,DateOfBirth = ?, "
                  + "Gender = ? ,IntrestedIn = ? ,Languages = ? ,Religion = ? "
                  + "WHERE UserId = ?";
                  
                  
        
        try{
        
            connection = getConnection();
            preparedStatement = connection.prepareStatement(query);
            
            preparedStatement.setString(1,profile.getName());
            preparedStatement.setString(2,profile.getNickName());
            preparedStatement.setString(3,profile.getFavouriteQuote());
            preparedStatement.setString(4,profile.getAboutMe());
            
            preparedStatement.setString(5,profile.getHighSchool());
            preparedStatement.setString(6,profile.getUniversity());
            preparedStatement.setString(7,profile.getWork());
            preparedStatement.setString(8,profile.getContactNumber());
            
            preparedStatement.setString(9,profile.getEmailAddress());
            preparedStatement.setString(10,profile.getWebsiteAndSocialLinks());
            preparedStatement.setString(11,profile.getCity());
            preparedStatement.setString(12,profile.getState());
            
            preparedStatement.setString(13,profile.getCountry());
            preparedStatement.setString(14,profile.getRelationship());
            preparedStatement.setString(15,profile.getFamily());
            preparedStatement.setString(16,profile.getDateOfBirth());
            
            preparedStatement.setString(17,profile.getGender());
            preparedStatement.setString(18,profile.getIntresteIn());
            preparedStatement.setString(19,profile.getLanguages());
            preparedStatement.setString(20,profile.getReligion());
            
            preparedStatement.setInt(21, profile.getUserId());
            
            
            
            
            
            preparedStatement.execute();
            
            connection.close();
        
        }catch(Exception e ){System.out.println("Error in insertProfile :"+e.getMessage());}

       
         
     }
    
    
    
    
    // To get User Progile
    
    
    public static Profile getProfile(int UserId)
    {
        String query = "Select * from Profile where UserId = ?";
        Profile profile = null;
        
           
        try{
            connection = getConnection();
            preparedStatement = connection.prepareStatement(query);

            preparedStatement.setString(1,UserId+"");
            
            ResultSet resultSet = preparedStatement.executeQuery();
             
            
            while(resultSet.next())
            {
               profile = new Profile();
                
               profile.setUserId(resultSet.getInt("UserId"));
               profile.setName(resultSet.getString("Name"));
               profile.setNickName(resultSet.getString("NickName"));
               profile.setFavouriteQuote(resultSet.getString("FavouriteQuote"));
               profile.setAboutMe(resultSet.getString("AboutMe"));
               profile.setHighSchool(resultSet.getString("HighSchool"));
               profile.setUniversity(resultSet.getString("University"));
               profile.setWork(resultSet.getString("Work"));
               profile.setContactNumber(resultSet.getString("ContactNumber"));
               profile.setEmailAddress(resultSet.getString("EmailAddress"));
               profile.setWebsiteAndSocialLinks(resultSet.getString("WebsiteAndSocialLinks"));
               profile.setCity(resultSet.getString("City"));
               profile.setState(resultSet.getString("State"));
               profile.setCountry(resultSet.getString("Country"));
               profile.setRelationship(resultSet.getString("Relationship"));
               profile.setFamily("Family");
               profile.setDateOfBirth(resultSet.getString("DateOfBirth"));
               profile.setGender(resultSet.getString("Gender"));
               profile.setIntresteIn(resultSet.getString("IntrestedIn"));
               profile.setLanguages(resultSet.getString("Languages"));
               profile.setReligion(resultSet.getString("Religion"));
               
               
               
            }
            
            
        
        }catch(Exception e){System.out.println("Error in validate User : "+e.getMessage() );}
        
        return profile;
    }
    
    
}
