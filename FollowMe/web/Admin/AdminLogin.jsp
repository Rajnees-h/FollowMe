<%-- 
    Document   : AdminLogin
    Created on : 28 Aug, 2020, 2:27:31 AM
    Author     : rowdy
--%>

<html>
<head>
    <title>Follow Me</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Login to FollowMe</h2>
  <form action="#">
    <div class="form-group">
      <label for="email">Email:</label>
      <input name="userEmailAddress" required type="email" class="form-control" id="email" placeholder="Enter email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input name="userPassword" required type="password" class="form-control" id="pwd" placeholder="Enter password">
    </div>
    <div class="checkbox">
      <label><input type="checkbox"> Remember me</label> 
      <label><a href="CreateNewAccount.jsp">Create New Account</a></label>
    </div>
    
    <button type="submit" class="btn btn-default">Login</button>
  </form>
</div>

</body> 
</html>
