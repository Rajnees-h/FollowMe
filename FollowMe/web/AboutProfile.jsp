<%-- 
    Document   : AboutProfile
    Created on : 6 Aug, 2020, 1:23:28 PM
    Author     : rowdy
--%>

<%@page import="com.FollowMe.JavaClasses.DatabaseConnection"%>
<%@page import="com.FollowMe.DatabaseClasses.Profile"%>
<%

   
  session = request.getSession(false);
      if( (session == null) || (session.getAttribute("userId") == null))
          request.getRequestDispatcher("Login.jsp").forward(request, response);
      else{

      %>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h3>Personal Information</h3>
 
        <div class="row">
            
        <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Name</h4>
                       <p id='userName' class="card-text"> <%= profile.getName() %> </p>
                  </div>
<!--                   <div class="col-md-2">
                      <button type="button" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-pencil"></span> 
                      </button>
                  </div>
      -->
              </div>
          
          </div>
        </div>
        
        <div id="nickName" class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Nick Name</h4>
                       <p class="card-text"> <%= profile.getNickName() %> </p>
                  </div>
<!--                  <div class="col-md-2">
                      <button type="button" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-pencil"></span> 
                      </button>
                  </div>
                  -->
              </div>
          
          </div>
        </div>
        
                 
         <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Favourite Quote</h4>
                       <p class="card-text"> <%= profile.getFavouriteQuote() %> </p>
                  </div>
<!--                  <div class="col-md-2">
                      <button type="button" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-pencil"></span> 
                      </button>
                  </div>
                  -->
              </div>
          
          </div>
        </div>
        
        
         <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">About me</h4>
                       <p class="card-text"> <%= profile.getAboutMe() %> </p>
                  </div>
<!--                  <div class="col-md-2">
                      <button type="button" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-pencil"></span> 
                      </button>
                  </div>
                  -->
              </div>
          
          </div>
        </div>
  
     
        </div><br>
        
        <hr/>
        <h3>Work & Education</h3>

        <div class="row">
            
            
             <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">High School</h4>
                       <p class="card-text"> <%= profile.getHighSchool() %> </p>
                  </div>
<!--                  <div class="col-md-2">
                      <button type="button" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-pencil"></span> 
                      </button>
                  </div>
                  -->
              </div>
          
          </div>
        </div>
             <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">University</h4>
                       <p class="card-text"> <%= profile.getUniversity() %> </p>
                  </div>
<!--                  <div class="col-md-2">
                      <button type="button" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-pencil"></span> 
                      </button>
                  </div>
                  -->
              </div>
          
          </div>
        </div>
        
             <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Work</h4>
                       <p class="card-text"> <%= profile.getWork() %> </p>
                  </div>
<!--                  <div class="col-md-2">
                      <button type="button" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-pencil"></span> 
                      </button>
                  </div>
                  -->
              </div>
          
          </div>
        </div>
        
            
        </div>
        
        <br>
        <hr/>
        <h3>Contact Information</h3>
            
        <div class="row">
            
                       <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Contact No.</h4>
                       <p class="card-text"> <%= profile.getContactNumber() %> </p>
                  </div>
<!--                  <div class="col-md-2">
                      <button type="button" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-pencil"></span> 
                      </button>
                  </div>
                  -->
              </div>
          
          </div>
        </div>
        
             <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Email Address</h4>
                       <p class="card-text"> <%= profile.getEmailAddress() %> </p>
                  </div>
<!--                  <div class="col-md-2">
                      <button type="button" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-pencil"></span> 
                      </button>
                  </div>
                  -->
              </div>
          
          </div>
        </div>
        
             <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">RelationShip</h4>
                       <p class="card-text"> <%= profile.getRelationship() %> </p>
                  </div>
<!--                  <div class="col-md-2">
                      <button type="button" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-pencil"></span> 
                      </button>
                  </div>
                  -->
              </div>
          
          </div>
        </div>
        
             <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Website & Social Links</h4>
                       <p class="card-text"> <%= profile.getWebsiteAndSocialLinks() %> </p>
                  </div>
<!--                  <div class="col-md-2">
                      <button type="button" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-pencil"></span> 
                      </button>
                  </div>
                  -->
              </div>
          
          </div>
        </div>    
        <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">city</h4>
                       <p class="card-text"> <%= profile.getCity() %> </p>
                  </div>
<!--                  <div class="col-md-2">
                      <button type="button" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-pencil"></span> 
                      </button>
                  </div>
                  -->
              </div>
          
          </div>
        </div>
        
             <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">State</h4>
                       <p class="card-text"> <%= profile.getState() %> </p>
                  </div>
<!--                  <div class="col-md-2">
                      <button type="button" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-pencil"></span> 
                      </button>
                  </div>
                  -->
              </div>
          
          </div>
        </div>   
        
        <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Country</h4>
                       <p class="card-text"> <%= profile.getCountry() %> </p>
                  </div>
<!--                  <div class="col-md-2">
                      <button type="button" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-pencil"></span> 
                      </button>
                  </div>
                  -->
              </div>
          
          </div>
        </div>
        
            
        </div>
  
        <br/>
        <hr/>
        <h3>Family & Relations</h3>
            
        <div class="row">
            
                   <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Relationship</h4>
                       <p class="card-text"> <%= profile.getRelationship() %> </p>
                  </div>
<!--                  <div class="col-md-2">
                      <button type="button" class="btn btn-default btn-sm">
                        <span  class="glyphicon glyphicon-pencil"></span> 
                      </button>
                  </div>
                  -->
              </div>
          
          </div>
        </div>
        
             <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Family</h4>
                       <p class="card-text"> <%= profile.getFamily() %> </p>
                  </div>
<!--                  <div class="col-md-2">
                      <button type="button" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-pencil"></span> 
                      </button>
                  </div>
                  -->
              </div>
          
          </div>
        </div>
            
        </div>
        
      
        <br/>
        <hr/>
        <h3>Basic Information</h3>
 
        <div class="row">
            
                
             <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Date Of Birth</h4>
                       <p class="card-text"> <%= profile.getDateOfBirth() %> </p>
                  </div>
<!--                  <div class="col-md-2">
                      <button type="button" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-pencil"></span> 
                      </button>
                  </div>
                  -->
              </div>
          
          </div>
        </div>
        
             <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Gender</h4>
                       <p class="card-text"> <%= profile.getGender() %> </p>
                  </div>
<!--                  <div class="col-md-2">
                      <button type="button" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-pencil"></span> 
                      </button>
                  </div>
                  -->
              </div>
          
          </div>
        </div>
        
             <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Intrested In</h4>
                       <p class="card-text"> <%= profile.getIntresteIn() %> </p>
                  </div>
<!--                  <div class="col-md-2">
                      <button type="button" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-pencil"></span> 
                      </button>
                  </div>
                  -->
              </div>
          
          </div>
        </div>
        
             <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Languages</h4>
                       <p class="card-text"> <%= profile.getLanguages() %> </p>
                  </div>
<!--                  <div class="col-md-2">
                      <button type="button" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-pencil"></span> 
                      </button>
                  </div>
                  -->
              </div>
          
          </div>
        </div>
        
             <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Religon</h4>
                       <p class="card-text"> <%= profile.getReligion() %> </p>
                  </div>
<!--                  <div class="col-md-2">
                      <button type="button" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-pencil"></span> 
                      </button>
                  </div>
                  -->
              </div>
          
          </div>
        </div>
        
            
        </div>
    
       <hr/>
       
    </body>
</html>



<%
      }


%>
