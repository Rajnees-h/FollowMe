<%-- 
    Document   : LeftNav
    Created on : 5 Aug, 2020, 12:49:04 AM
    Author     : rowdy
--%>

<%
String userName = "Unknown User";

if(request.getSession(false).getAttribute("userId") != null)
{
    int UserId = Integer.parseInt((String)request.getSession(false).getAttribute("userId"));
    userName = DatabaseConnection.getProfile(UserId).getName();
} 

%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.FollowMe.JavaClasses.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   
    <body>
        <div class="list-group">
            <div class="userName card center-block" >
            <a href="#" class=" list-group-item">
               
                <div class="row" style="padding:0px">
                    <div class="col-md-2">
                        <img class="img-circle center-block" src="images/iron.jpg" style="width:50px; height: 50px">
                    </div>
                    <div class="col-md-10">
                        <h4 class="text-left" style="padding:10px;"> <%= userName %> </h4>
                    </div>
                </div>
   
            </a>
            </div>
   
                    <Button id="Home" class=" menu-options list-group-item ">Home</Button>
                    <Button id="Chat" class=" menu-options list-group-item">Chat</Button>
                    <Button id="Notification" class=" menu-options list-group-item">Notifications</Button>

                    <Button id="Friends" class=" menu-options list-group-item ">Friends</Button>
                    <Button id="SearchPeople"  class=" menu-options list-group-item">Search People</Button>

                    <Button id="Groups" class=" menu-options list-group-item">Groups</Button>
                     <Button id="MakeNewGroup" class=" menu-options list-group-item menu-options">Make New Group</Button>

                     <Button id="MyProfile" class=" menu-options list-group-item ">My Profile </Button>
                     <Button id="EditProfile" class=" menu-options list-group-item">Edit Profile</Button>

<!--                     <a href="#" class=" menu-options list-group-item menu-options">Login Account</a>-->
                    <Button id="Logout" class=" menu-options list-group-item ">Logout</Button>
    
    
   
    
    </div>
    </body>
    
    

    
    
</html>
