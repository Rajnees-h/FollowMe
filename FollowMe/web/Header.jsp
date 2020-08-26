<%-- 
    Document   : Header
    Created on : 5 Aug, 2020, 12:48:51 AM
    Author     : rowdy
--%>

<%
String loginOrLogout = " Login";
if(request.getSession(false).getAttribute("userId") != null)
{
    loginOrLogout = " Log Out"; 
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
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">FollowMe</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Notification</a></li>
      <li><a href="#">Chat</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="CreateNewAccount.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Logout"><span class="glyphicon glyphicon-log-in"></span>  <%= loginOrLogout %></a></li>
    </ul>
  </div>
</nav>
    </body>
</html>
