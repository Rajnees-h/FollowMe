<%-- 
    Document   : SearchPeople
    Created on : 27 Aug, 2020, 4:27:34 AM
    Author     : rowdy
--%>

<%@page import="com.FollowMe.JavaClasses.DatabaseConnection"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%     
      session = request.getSession(false);
      if( (session == null) || (session.getAttribute("userId") == null))
          request.getRequestDispatcher("Login.jsp").forward(request, response);
    
      else
      {  List<String> allUserId_sp = DatabaseConnection.getAllUserId();
        
       List<String[]> people_sp = new ArrayList<String[]>();
       for(String userId_sp : allUserId_sp){
           String[] user_sp = new String[2];
           user_sp[0] = userId_sp; // userId
           user_sp[1] = DatabaseConnection.getUserName(userId_sp); // get user name
      //   user[2] = DatabaseConnection.getProfilePic(userId); // get profile Image src
        //   user[3] = DatabaseConnection.getMutualFriends(userId);  // user and current users friends
        
        people_sp.add(user_sp);
       }
          
%>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        
    </head>
    <body>    
        <h3>Follow Me Users</h3>
        <%  
            for(String[] user_sp : people_sp){
        %>
        
    <div name="<%=user_sp[0]%>" class="card friendCard col-md-5 drill_cursor">
        <div  class="row">
             <div class="col-md-2">
                <img class="img-rounded center-block" src="images/iron.jpg" style="width:80px; height: 80px">
            </div>
            <div class="col-md-10">
                   <div class="card">
                        <div class="card-body">
                            <dl class="text-left" style="padding-left: 20px">
                                <dt><h4 style="padding-left: 30px; padding-top:5px"> <%= user_sp[1] %> </h4></dt>
                                 <dd style="padding-left: 30px">Mutual Friends</dd>
                            </dl>
                        </div>
                    </div>
            </div>
       </div>
    </div>
        
        
                <%
            }
        
        
        %>
        

        
    <script>
        
            
  $(document).ready(function(){
        $(".drill_cursor").click(function(){
           var userId = $(this).attr("name");
          $.post('ShowProfile.jsp',{UserId:userId},function(data){
                    $("#rightSideBar").html(data);
                });
           
      });
  });
   
    
        
    </script>
  
   
    </body>
    
    
  
    
</html>


<%
}
%>
