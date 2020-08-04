<%-- 
    Document   : MasterPage
    Created on : 5 Aug, 2020, 12:24:37 AM
    Author     : rowdy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 620px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    .topbar{
    display:block;
    height:620px;
    overflow: auto;
    }
    
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:100%;} 
    }
  </style>
</head>
<body>

<nav>
    <%@include file="Header.jsp" %>   
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav topbar">
        <div>
            <%@include file="LeftNav.jsp" %>
        </div>
    </div>
        <div class="col-sm-7 text-left topbar"> 
        <div>
            <%@include file="CenterPage.jsp" %>
        </div>
    </div>
    <div class="col-sm-3 sidenav topbar">
        <div>
            <%@include file="RightNav.jsp" %>
        </div>
    </div>
  </div>
</div>



</body>
</html>
