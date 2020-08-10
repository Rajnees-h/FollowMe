/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.FollowMe.JavaClasses;

import com.FollowMe.DatabaseClasses.User;

/**
 *
 * @author rowdy
 */
public class demo {
    
    public static void main(String[] args) {
        
        System.out.println(DatabaseConnection.validateUser(new User("Rajneesh","Rajneesh")));
        
    }
    
}
