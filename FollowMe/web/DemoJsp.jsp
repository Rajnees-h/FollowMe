<%-- 
    Document   : DemoJsp
    Created on : 27 Aug, 2020, 5:13:40 PM
    Author     : rowdy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <div id="myDiv"></div>
        
        
        <script>
            $(document).ready(function(){
                var userId = "5";
                $.post('Demo2.jsp',{UserId:userId},function(data){
                    $("#myDiv").html(data);
                });
            });
        </script>
    </body>
</html>
