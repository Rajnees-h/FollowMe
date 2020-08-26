<%-- 
    Document   : ShowProfile
    Created on : 6 Aug, 2020, 12:08:08 AM
    Author     : rowdy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="card">
  
            <img src="images/iron.jpg" class="img-circle" alt="Cinque Terre" width="250" height="250">
            <h2>User Name</h2>
            <hr/>
            
            <div class="list-group">
                <a href="MasterPage.jsp?centerPage=Home&rightPage=ShowProfile" class=" menu-options list-group-item ">Timeline</a>
                <a href="MasterPage.jsp?centerPage=AboutProfile&rightPage=ShowProfile" class=" menu-options list-group-item">About</a>
                <a href="MasterPage.jsp?centerPage=EditProfile&rightPage=ShowProfile" class=" menu-options list-group-item">Edit Profile</a>
                <a href="MasterPage.jsp?centerPage=Friends&rightPage=ShowProfile" class=" menu-options list-group-item">Friends</a>
                <a href="MasterPage.jsp?centerPage=Photos&rightPage=ShowProfile" class=" menu-options list-group-item ">Photos</a>

            </div>
            
            
        </div>
    </body>
</html>
