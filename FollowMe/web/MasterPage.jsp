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
      background-color: #f1f1f1;
      height: 100%;
      padding-top: 20px;
      display:block;
      overflow: auto;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    .topbar{
    background-color: aliceblue;
    padding-top: 20px;
    display:block;
    height:620px;
    overflow: auto;
    }
    
/*    .myCard {
        
        border-radius: 15px;
        border: 2px solid buttonhighlight;
     
          
        padding: 10px 15px 0px 15px ;
       
        width: 90%;
        height: auto;
        
        
        
        align-items: center;
        margin: 0 auto;  Added 
        float: none;  Added 
        margin-bottom: 30px;  Added 
}*/

.menu-options{
    
    border-radius: 50px;
    background-color: #f1f1f1;
    font-size: 20px;
    
    
}
.menu-options:hover{
    
   
     border: none;
    background-color: #f1f1f1;
    font-size: 30px;
    
}

.userName{
 padding-bottom: 10px;
}


.chatCard:hover{
    padding: 10px 10px 0px 10px;
    border-radius: 15px;
    background-color:white;
}

img{
        padding: 0px;
        border: 1px solid black;
        margin-bottom: 5px;
}
.center-block {
 
  display: block;
  margin-right: auto;
  margin-left: auto;
}

.row{
   
    margin-bottom: 0px;
}
hr {
    margin-top: 0px;
     border: 0;
    border-top: 1px solid rgba(0, 0, 0, 0.1);
}
.glyphicon {
    font-size: 20px;
}

h3{
    padding-left: 20px;
    margin-bottom: 30px;
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
    <div class="col-sm-3 sidenav">
        <div>
            <%@include file="LeftNav.jsp" %>
        </div>
    </div>
        <div class="col-sm-6 text-left topbar"> 
        <div>
            <%@include file="CenterPage.jsp" %>
        </div>
    </div>
    <div class="col-sm-3 sidenav ">
        <div>
            <%@include file="RightNav.jsp" %>
        </div>
    </div>
  </div>
</div>



</body>
</html>
