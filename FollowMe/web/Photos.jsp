<%-- 
    Document   : Photos
    Created on : 7 Aug, 2020, 12:02:33 AM
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
          String userId = (String) request.getParameter("UserId");
          
    %>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h2>Photos of  <%= DatabaseConnection.getUserName(userId) %> </h2>
        
<!-- Photo Grid -->
<div class="row"> 
  <div class="column">
   
    <img src="images/img2.jpg" style="width:100%">
    <img src="images/img3.jpg" style="width:100%">
    <img src="images/img4.jpg" style="width:100%">
    <img src="images/img5.jpg" style="width:100%">
    <img src="images/img6.jpg" style="width:100%">
    <img src="images/img7.jpg" style="width:100%">

  </div>
  <div class="column">
    <img src="images/img1.jpg" style="width:100%">
  <img src="images/img1.jpg" style="width:100%">
    <img src="images/img4.jpg" style="width:100%">
   <img src="images/img3.jpg" style="width:100%">
    <img src="images/img6.jpg" style="width:100%">
    <img src="images/img7.jpg" style="width:100%">
  </div>  
  <div class="column">
    <img src="images/img1.jpg" style="width:100%">
    <img src="images/img2.jpg" style="width:100%">
    
    <img src="images/img4.jpg" style="width:100%">
      <img src="images/img2.jpg" style="width:100%">
    <img src="images/img3.jpg" style="width:100%">
    <img src="images/img6.jpg" style="width:100%">
    <img src="images/img7.jpg" style="width:100%">
  </div>
  <div class="column">
     <img src="images/img1.jpg" style="width:100%">
    <img src="images/img2.jpg" style="width:100%">
    <img src="images/img3.jpg" style="width:100%">
    <img src="images/img4.jpg" style="width:100%">
  <img src="images/img6.jpg" style="width:100%">
    <img src="images/img6.jpg" style="width:100%">
    <img src="images/img7.jpg" style="width:100%">
  </div>
</div>
        
        
<!--        
       
        <div class="row">
            <div class="col-md-4">
              <div class="thumbnail">
                <a href="/w3images/lights.jpg" target="_blank">
                  <img src="images/hmm.jpg" alt="Lights" style="width:100%">
                  <div class="caption">
                    <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-md-4">
              <div class="thumbnail">
                <a href="/w3images/nature.jpg" target="_blank">
                  <img src="images/img2.jpg" alt="Nature" style="width:100%">
                  <div class="caption">
                    <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-md-4">
              <div class="thumbnail">
                <a href="/w3images/fjords.jpg" target="_blank">
                  <img src="images/img4.jpg" alt="Fjords" style="width:100%">
                  <div class="caption">
                    <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-md-4">
              <div class="thumbnail">
                <a href="/w3images/fjords.jpg" target="_blank">
                  <img src="images/img5.jpg" alt="Fjords" style="width:100%">
                  <div class="caption">
                    <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-md-4">
              <div class="thumbnail">
                <a href="/w3images/fjords.jpg" target="_blank">
                  <img src="images/raj.jpg" alt="Fjords" style="width:100%">
                  <div class="caption">
                    <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-md-4">
              <div class="thumbnail">
                <a href="/w3images/fjords.jpg" target="_blank">
                  <img src="images/iron.jpg" alt="Fjords" style="width:100%">
                  <div class="caption">
                    <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
                  </div>
                </a>
              </div>
            </div>
            
        </div>-->

        
        
    </body>
</html>


<%
}
%>