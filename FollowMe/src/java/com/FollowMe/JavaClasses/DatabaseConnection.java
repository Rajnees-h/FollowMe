/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.FollowMe.JavaClasses;

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
    
    
}
