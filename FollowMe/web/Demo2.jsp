<%-- 
    Document   : Demo2.jsp
    Created on : 27 Aug, 2020, 5:17:16 PM
    Author     : rowdy
--%>

<%@page import="com.FollowMe.JavaClasses.DatabaseConnection"%>
<%

    String name = (String) request.getParameter("UserId");
    System.out.println("Gettin Parameter ======> " +name);

    String userName = DatabaseConnection.getUserName(name);

%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello <%= userName %> </h1>
        
    </body>
</html>
