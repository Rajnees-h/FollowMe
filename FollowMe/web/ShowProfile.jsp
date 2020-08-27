<%-- 
    Document   : ShowProfile
    Created on : 6 Aug, 2020, 12:08:08 AM
    Author     : rowdy
--%>

<%@page import="com.FollowMe.JavaClasses.DatabaseConnection"%>
<%@page import="com.FollowMe.DatabaseClasses.Profile"%>
<%
        Profile profile = null;
        
      session = request.getSession(false);
      if( (session == null) || (session.getAttribute("userId") == null))
          request.getRequestDispatcher("Login.jsp").forward(request, response);
    
      else
      {  
        String UserId = (String) request.getParameter("UserId");
     
          
    %>



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
            <h2> <%= DatabaseConnection.getUserName(UserId) %> </h2>
            <hr/>
            
            <div class="list-group">
                <Button id="Home2" class=" menu-options list-group-item ">Timeline</Button>
                <Button id="About2" class=" menu-options list-group-item">About</Button>
                <Button id="EditProfile2" class=" menu-options list-group-item">Edit Profile</Button>
                <Button id="Friends2" class=" menu-options list-group-item">Friends</Button>
                <Button id="Photos2" class=" menu-options list-group-item ">Photos</Button>

            </div>
            
            
        </div>
        
          <script>
     
     $("#Home2").on("click", function() {
       $("#CenterPage").load("CenterPage.jsp",{UserId:<%= UserId%>});
    });
        
    $("#Friends2").on("click", function() {
       $("#CenterPage").load("Friends.jsp",{UserId:<%= UserId%>});
    });
    
    $("#EditProfile2").on("click", function() {
       $("#CenterPage").load("EditProfile.jsp",{UserId:<%= UserId%>});
    });
    
    $("#About2").on("click", function() {
       $("#CenterPage").load("AboutProfile.jsp",{UserId:<%= UserId%>});
    });
    
    $("#Photos2").on("click", function() {
       $("#CenterPage").load("Photos.jsp",{UserId:<%= UserId%>});
    });
    
    </script>
    
        
    </body>
    
  
</html>

<%
}
%>