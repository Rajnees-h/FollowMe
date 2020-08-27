<%-- 
    Document   : HomePage
    Created on : 27 Aug, 2020, 12:10:24 PM
    Author     : rowdy
--%>


 
    <%@page import="com.FollowMe.DatabaseClasses.Profile"%>
<%
        Profile profile = null;
        
      session = request.getSession(false);
      if( (session == null) || (session.getAttribute("userId") == null))
          request.getRequestDispatcher("Login.jsp").forward(request, response);
    
      else
      {  
          String userId = (String) session.getAttribute("userId");
          profile = DatabaseConnection.getProfile(Integer.parseInt(userId));
          
    %>


<%@page import="com.FollowMe.DatabaseClasses.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example    </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  
  <style>
      
/*     For image galary */

  * {
  box-sizing: border-box;
}

body {
  margin: 0;
  font-family: Arial;
}

.header {
  text-align: center;
  padding: 32px;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  padding: 0 4px;
}

/* Create four equal columns that sits next to each other */
.column {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
  max-width: 25%;
  padding: 0 4px;
}

.column img {
  margin-top: 8px;
  vertical-align: middle;
  width: 100%;
}

/* Responsive layout - makes a two column-layout instead of four columns */
@media screen and (max-width: 800px) {
  .column {
    -ms-flex: 50%;
    flex: 50%;
    max-width: 50%;
  }
}

/* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column {
    -ms-flex: 100%;
    flex: 100%;
    max-width: 100%;
  }
}

  
/*     For image galary */
     
      
      
      
      
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 620px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #fff;
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

.friendCard{
   
    padding: 10px 10px 0px 10px;
    border-radius: 15px;
    background-color:white;  
    margin: 10px 10px;
    
}
.friendCard:hover{
    
     padding: 10px 10px 0px 10px;
    border-radius: 15px;
    background-color:white;
     box-shadow: 1px 1px 2px black, 0 0 10px blue, 0 0 3px lightblue;
}


.infoCard{
     border-radius: 15px;
     border: 2px solid buttonhighlight;
     background-color: white;
     
          
     padding: 10px 15px 0px 15px ;
       
     width: 40%;
     height: auto;
        
     align-items: center;
     margin: 2% 5%;  Added 
     float: none;  Added 
     margin-bottom: 30px;  Added    
        
       
}

.infoCard:hover{
     border-radius: 15px;
     border: 2px solid buttonhighlight;
     background-color: white;
     
          
     padding: 10px 15px 0px 15px ;
       
     width: 40%;
     height: auto;
     
    align-items: center;
    margin: 2% 5%;  Added 
    float: none;  Added 
    margin-bottom: 30px;  Added
    
  color: white;
  box-shadow: 1px 1px 2px black, 0 0 10px blue, 0 0 3px lightblue;
}

.menu-options{
    
    border-radius: 50px;
    background-color: #fff;
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
  
    box-shadow: 1px 1px 2px black, 0 0 10px blue, 0 0 3px lightblue;
}


.chat-header{
   position: relative;
   top: 0;
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
   
    text-shadow: 1px 1px green;
    padding-left: 20px;
    margin-bottom: 30px;
}

.center {
  margin: auto 3px;
  width: 60%;
  padding: 10px;
}

.left-msg{
    width: auto;
    height: auto;
    margin:10px;
    padding: 2px 10px;
    border-radius: 50px;
    background: pink;
}

.right-msg{
    width: auto;
    height: auto;
    margin:10px;
    padding: 2px 10px;
    border-radius: 50px;    
    background: white;
}


/* input in update Profile*/
.input{
    margin-top:10px;
    margin-bottom: 15px;
}
 
    
    /* On small screens, set height to 'auto' for sidenav and grid */
/*    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:100%;} 
    }*/
  </style>
</head>



<body>

<nav>
    <%@include file="Header.jsp" %>   
</nav>

<div class="container-fluid text-center">    
  <div class="row content">
      
      
    <div class="col-sm-3 sidenav">
        <div id="leftSideBar">
            <%@include file="LeftNav.jsp" %>
        </div>
    </div>
        

        
<!--    Center Page     
        -->
   
        
    <div id="CenterPage" class="col-sm-6 text-left topbar"> 
        <div>
            <%@include file="CenterPage.jsp" %>
        </div>
    </div>
      
<!--      Right Side Bar   
            -->
    <div class="col-sm-3 sidenav ">
        <div id="rightSideBar">
            <%@include file="RightNav.jsp" %>
        </div>
    </div>
            
            
  </div>
</div>
            
<script>
$(document).ready( function() {
    $("#SearchPeople").on("click", function() {
        $("#CenterPage").load("SearchPeople.jsp");
    });
    
     $("#Home").on("click", function() {
        $("#CenterPage").load("CenterPage.jsp");
    });
    
     $("#MyProfile").on("click", function() {
         $.post('ShowProfile.jsp',{UserId:<%= userId%>},function(data){
             $('#rightSideBar').html(data);
         });
        $("#CenterPage").load("CenterPage.jsp")
    });
    
     $("#Chat").on("click", function() {
        $("#rightSideBar").load("RightNav.jsp");
    });
    
     $("#Friends").on("click", function() {
        $("#CenterPage").load("Friends.jsp");
    });
    
     $("#EditProfile").on("click", function() {
        $("#rightSideBar").load("ShowProfile.jsp");
        $("#CenterPage").load("EditProfile.jsp")
    });
    
     $("#Photos").on("click", function() {
        $("#CenterPage").load("Photos.jsp");
    });
    
    $("#About").on("click", function() {
        $("#CenterPage").load("AboutProfile.jsp");
    });
 

    
});
</script>
          

<script>
     
    
$(".drill_cursor").click(function(){
//do something
});
    
    
$(document).ready(function(){
  $("button").click(function(){
    $.post("demo_test_post.asp",
    {
      name: "Donald Duck",
      city: "Duckburg"
    },
    function(data,status){
      alert("Data: " + data + "\nStatus: " + status);
    });
  });
});
</script>  
            

</body>
</html>



<%
  
}

%>




