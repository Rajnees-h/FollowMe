<%-- 
    Document   : CenterPage
    Created on : 5 Aug, 2020, 12:49:46 AM
    Author     : rowdy
--%>

<%@page import="com.FollowMe.JavaClasses.DatabaseConnection"%>
<%@page import="com.FollowMe.DatabaseClasses.Profile"%>
<%
       
        
      session = request.getSession(false);
      if( (session == null) || (session.getAttribute("userId") == null))
          request.getRequestDispatcher("Login.jsp").forward(request, response);
    
      else
      {  
          String userId_cp = (String) request.getParameter("UserId");
          
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
            <div class="row">
                <div class="col-md-2">
                    <img class="img-circle center-block" src="images/iron.jpg" style="width:70px; height: 70px">
                </div>
                <div class="col-md-10">
                    <div class="form-group">
                      
                      <textarea class="form-control" rows="2" id="comment" placeholder="Express your thoughts here..."></textarea>
                    </div>
                    
                </div>
                
            </div>
           
        </div>
    
        <hr/>
        <h3>Today's Post</h3>
        
        
        
     <hr/>   
        <div class="card">
            <div class="row">
                <div class="col-md-2">
                    <img class="img-circle center-block " src="images/iron.jpg" style="width:70px; height: 70px">
                </div>
                 <div class="col-md-9">
                    <dl>
                        <dt> <%= DatabaseConnection.getUserName(userId_cp) %> </dt>
                        <dd>-Feeling happy wiht raj,rahul and 5 others</dd>
                        <dd>-Post timing</dd>
                    </dl>  
                 </div>
                <div class="col-md-1">
                   <a href="#" > <span class="glyphicon glyphicon-option-vertical"></span></a>
                </div>
         
            </div>
            <div class="row">
                <p style="padding-left: 20px ; ">
                    Write your cation here...
                </p>
            </div>  
            <div class="row" style=" width:auto ">
                    <img src="images/iron.jpg" style="width:100%">
            </div>
            <div class="row">
                <div class="col-md-4">
                    <p class="text-left">0 Likes</p>
                </div>
                
                <div class="col-md-4">
                    <p class="text-center">0 Comment</p>
                </div>
                
                <div class="col-md-4">
                    <p class="text-right">0 Share</p>                         
                </div>
            </div>
            <hr/>
            <div class="row">
                <div class="col-md-4">
                    <p class="lead text-left"><span class="glyphicon glyphicon-heart"></span> Like</p>
                    
                </div>
                
                <div class="col-md-4">
                    <p class="lead text-center"><span class="glyphicon glyphicon-comment"></span> Comment</p>
                </div>
                
                <div class="col-md-4">
                    <p class="lead text-right"><span class="glyphicon glyphicon-share-alt"></span> Share</p>                        
                </div>
            </div>
           
        </div>
 <hr/>       
        <div class="card">
            <div class="row">
                <div class="col-md-2">
                    <img class="img-circle center-block " src="images/iron.jpg" style="width:70px; height: 70px">
                </div>
                 <div class="col-md-9">
                    <dl>
                        <dt>User Name</dt>
                        <dd>-Feeling happy wiht raj,rahul and 5 others</dd>
                        <dd>-Post timing</dd>
                    </dl>  
                 </div>
                <div class="col-md-1">
                   <a href="#" > <span class="glyphicon glyphicon-option-vertical"></span></a>
                </div>
         
            </div>
            <div class="row">
                <p style="padding-left: 20px ; ">
                    Write your cation here...
                </p>
            </div>  
            <div class="row" style=" width:auto ">
                    <img src="images/iron.jpg" style="width:100%">
            </div>
            <div class="row">
                <div class="col-md-4">
                    <p class="text-left">0 Likes</p>
                </div>
                
                <div class="col-md-4">
                    <p class="text-center">0 Comment</p>
                </div>
                
                <div class="col-md-4">
                    <p class="text-right">0 Share</p>                         
                </div>
            </div>
            <hr/>
            <div class="row">
                <div class="col-md-4">
                    <p class="lead text-left"><span class="glyphicon glyphicon-heart"></span> Like</p>
                    
                </div>
                
                <div class="col-md-4">
                    <p class="lead text-center"><span class="glyphicon glyphicon-comment"></span> Comment</p>
                </div>
                
                <div class="col-md-4">
                    <p class="lead text-right"><span class="glyphicon glyphicon-share-alt"></span> Share</p>                        
                </div>
            </div>
           
        </div>
<hr/>
        <div class="card">
            <div class="row">
                <div class="col-md-2">
                    <img class="img-circle center-block " src="images/iron.jpg" style="width:70px; height: 70px">
                </div>
                 <div class="col-md-9">
                    <dl>
                        <dt>User Name</dt>
                        <dd>-Feeling happy wiht raj,rahul and 5 others</dd>
                        <dd>-Post timing</dd>
                    </dl>  
                 </div>
                <div class="col-md-1">
                   <a href="#" > <span class="glyphicon glyphicon-option-vertical"></span></a>
                </div>
         
            </div>
            <div class="row">
                <p style="padding-left: 20px ; ">
                    Write your cation here...
                </p>
            </div>  
            <div class="row" style=" width:auto ">
                    <img src="images/iron.jpg" style="width:100%">
            </div>
            <div class="row">
                <div class="col-md-4">
                    <p class="text-left">0 Likes</p>
                </div>
                
                <div class="col-md-4">
                    <p class="text-center">0 Comment</p>
                </div>
                
                <div class="col-md-4">
                    <p class="text-right">0 Share</p>                         
                </div>
            </div>
            <hr/>
            <div class="row">
                <div class="col-md-4">
                    <p class="lead text-left"><span class="glyphicon glyphicon-heart"></span> Like</p>
                    
                </div>
                
                <div class="col-md-4">
                    <p class="lead text-center"><span class="glyphicon glyphicon-comment"></span> Comment</p>
                </div>
                
                <div class="col-md-4">
                    <p class="lead text-right"><span class="glyphicon glyphicon-share-alt"></span> Share</p>                        
                </div>
            </div>
           
        </div>
        
        <hr/>
        
        <h3>Yesterday's Post</h3>

 <hr/>
        <div class="card">
            <div class="row">
                <div class="col-md-2">
                    <img class="img-circle center-block " src="images/iron.jpg" style="width:70px; height: 70px">
                </div>
                 <div class="col-md-9">
                    <dl>
                        <dt>User Name</dt>
                        <dd>-Feeling happy wiht raj,rahul and 5 others</dd>
                        <dd>-Post timing</dd>
                    </dl>  
                 </div>
                <div class="col-md-1">
                   <a href="#" > <span class="glyphicon glyphicon-option-vertical"></span></a>
                </div>
         
            </div>
            <div class="row">
                <p style="padding-left: 20px ; ">
                    Write your cation here...
                </p>
            </div>  
            <div class="row" style=" width:auto ">
                    <img src="images/iron.jpg" style="width:100%">
            </div>
            <div class="row">
                <div class="col-md-4">
                    <p class="text-left">0 Likes</p>
                </div>
                
                <div class="col-md-4">
                    <p class="text-center">0 Comment</p>
                </div>
                
                <div class="col-md-4">
                    <p class="text-right">0 Share</p>                         
                </div>
            </div>
            <hr/>
            <div class="row">
                <div class="col-md-4">
                    <p class="lead text-left"><span class="glyphicon glyphicon-heart"></span> Like</p>
                    
                </div>
                
                <div class="col-md-4">
                    <p class="lead text-center"><span class="glyphicon glyphicon-comment"></span> Comment</p>
                </div>
                
                <div class="col-md-4">
                    <p class="lead text-right"><span class="glyphicon glyphicon-share-alt"></span> Share</p>                        
                </div>
            </div>
           
        </div>
<hr/>
        <div class="card">
            <div class="row">
                <div class="col-md-2">
                    <img class="img-circle center-block " src="images/iron.jpg" style="width:70px; height: 70px">
                </div>
                 <div class="col-md-9">
                    <dl>
                        <dt>User Name</dt>
                        <dd>-Feeling happy wiht raj,rahul and 5 others</dd>
                        <dd>-Post timing</dd>
                    </dl>  
                 </div>
                <div class="col-md-1">
                   <a href="#" > <span class="glyphicon glyphicon-option-vertical"></span></a>
                </div>
         
            </div>
            <div class="row">
                <p style="padding-left: 20px ; ">
                    Write your cation here...
                </p>
            </div>  
            <div class="row" style=" width:auto ">
                    <img src="images/iron.jpg" style="width:100%">
            </div>
            <div class="row">
                <div class="col-md-4">
                    <p class="text-left">0 Likes</p>
                </div>
                
                <div class="col-md-4">
                    <p class="text-center">0 Comment</p>
                </div>
                
                <div class="col-md-4">
                    <p class="text-right">0 Share</p>                         
                </div>
            </div>
            <hr/>
            <div class="row">
                <div class="col-md-4">
                    <p class="lead text-left"><span class="glyphicon glyphicon-heart"></span> Like</p>
                    
                </div>
                
                <div class="col-md-4">
                    <p class="lead text-center"><span class="glyphicon glyphicon-comment"></span> Comment</p>
                </div>
                
                <div class="col-md-4">
                    <p class="lead text-right"><span class="glyphicon glyphicon-share-alt"></span> Share</p>                        
                </div>
            </div>
           
        </div>        
        
  
  
 
      
    </body>
</html>


<%
}
%>