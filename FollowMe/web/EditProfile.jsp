<%-- 
    Document   : EditProfile
    Created on : 27 Aug, 2020, 12:04:05 AM
    Author     : rowdy
--%>

<%@page import="com.FollowMe.JavaClasses.DatabaseConnection"%>
<%@page import="com.FollowMe.DatabaseClasses.Profile"%>
<%

  
if(request.getSession(false) == null)
{
    request.getRequestDispatcher("Login.jsp").forward(request, response);
}
else{
         String userId = (String) session.getAttribute("userId");
         Profile profile = DatabaseConnection.getProfile(Integer.parseInt(userId));

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
 
        <form method="POST" action="UpdateProfileInformation">
            
        
        
        <div class="row">
            
        <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Name</h4>
                       <input class="input form-control" id="name" name="name" value="<%= profile.getName() %>" type="text">          
                  </div>
              </div>
          
          </div>
        </div>
        
        <div id="nickName" class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Nick Name</h4>
                       <input class="input form-control" id="nickName" value="<%= profile.getNickName() %>" name="nickName" type="text">
                  </div>
              </div>
          
          </div>
        </div>
        
                 
         <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Favourite Quote</h4>
                       <input class="input form-control" id="favouriteQuote" name="favouriteQuote" value="<%= profile.getFavouriteQuote() %>" type="text">
                  </div>
       
              </div>
          
          </div>
        </div>
        
        
         <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">About me</h4>
                       <input class="input form-control" id="aboutMe" name="aboutMe" value="<%= profile.getAboutMe() %>" type="text">          
                  </div>
                
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
                       <input class="input form-control" id="highSchool" name="highSchool" value="<%= profile.getHighSchool() %>" type="text">          

                  </div>
              </div>
          
          </div>
        </div>
             <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">University</h4>
                       <input class="input form-control" id="university" name="university" value="<%= profile.getUniversity() %>" type="text">          
                  </div>
              </div>
          
          </div>
        </div>
        
             <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Work</h4>
                       <input class="input form-control" id="work" name="work" value="<%= profile.getWork() %>" type="text">          
                  </div>
                  
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
                       <input class="input form-control" id="contactNumber" name="contactNumber" value="<%= profile.getContactNumber() %>" type="text">
                  </div>
                     
              </div>
          
          </div>
        </div>
        
        <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Email Address</h4>
                       <input class="input form-control" id="emailAddress" name="emailAddress" value="<%= profile.getEmailAddress() %>" type="text">
                  </div>
              </div>
          
          </div>
                  
        </div>
             <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Website & Social Links</h4>
                       <input class="input form-control" id="websiteAndSocialLink" name="websiteAndSocialLink" value="<%= profile.getWebsiteAndSocialLinks() %>" type="text">
                  </div>
                  
              </div>
          
          </div>
        </div>    
        <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">city</h4>
                       <input class="input form-control" id="city" name="city" value="<%= profile.getCity() %>" type="text">
                  </div>
                  
              </div>
          </div>
        </div>
        
             <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">State</h4>
                       <input class="input form-control" id="state" name="state" value="<%= profile.getState() %>" type="text">
                  </div>
                  
              </div>
          
          </div>
        </div>   
        
        <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Country</h4>
                       <input class="input form-control" id="country" name="country" value="<%= profile.getCountry() %>" type="text">
                  </div>
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
                       <input class="input form-control" id="relationship" name="relationship" value="<%= profile.getRelationship() %>" type="text">
                  </div>
                  
              </div>
          
          </div>
        </div>
        
             <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Family</h4>
                       <input class="input form-control" id="family" name="family" value="<%= profile.getFamily() %>" type="text">
                  </div>
                  
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
                       <input class="input form-control" id="dateOfBirth" name="dateOfBirth" value="<%= profile.getDateOfBirth() %>" type="text">
                  </div>
              </div>
          
          </div>
        </div>
        
             <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Gender</h4>
                       <input class="input form-control" id="gender" name="gender" value="<%= profile.getGender() %>" type="text">
                  </div>
                  
              </div>
          
          </div>
        </div>
        
             <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Intrested In</h4>
                       <input class="input form-control" id="intrested" name="intrestedIn" value="<%= profile.getIntresteIn() %>" type="text">
                  </div>
                  
              </div>
          
          </div>
        </div>
        
             <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Languages</h4>
                       <input class="input form-control" id="name" name="languages" value="<%= profile.getLanguages() %>" type="text">
                  </div>
                  
              </div>
          
          </div>
        </div>
        
             <div class="card col-md-6 infoCard">
          <div class="card-body">
              <div class="row">
                  <div class="col-md-10">
                       <h4 class="card-title">Religon</h4>
                       <input class="input form-control" id="religon" name="religion" value="<%= profile.getReligion() %>" type="text">
                  </div>
                  
              </div>
          
          </div>
        </div>
                  
              
            
        </div>
                  
               <hr/>
             
               <div class="form-group">        
                    <div class="col-sm-offset-2 col-sm-10">
                        <button style="float:right ; margin-bottom: 40px;" type="submit" class="btn btn-default">Save</button>
                    </div>
                  </div>
            
         
        </form>
    
                  <hr/>
        
    </body>
</html>



<%
}



%>

