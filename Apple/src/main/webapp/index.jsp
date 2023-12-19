<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="apple.beans.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" integrity="sha512-q3eWabyZPc1XTCmF+8/LuE1ozpg5xxn7iO89yfSOd5/oKvyqLngoNGsx8jq92Y8eXJ/IRxQbEC+FGSYxtk2oiw==" crossorigin="anonymous" referrerpolicy="no-referrer" />


<style>
.outer{
    width: 1240px;
    height: 800px;
   
}
.inner{
    width: 800px;
    height: 600px;

   margin: auto;
}
h1{
    text-align: center;
    padding-top: 50px;
}
h3,h2{
    text-align: center;
    padding-top: 10px;
    padding-left: 20px;
    
}
a{
    text-decoration: none;
}
.email{
    margin-left: 100px;
}
input{
    margin-left: 250px;
    width:300px;
    height: 50px;
    margin-top: 20px;
    border-radius: 10px;
    padding-left: 30px;
}
button{
    margin-left: 300px;
    width:240px;
    height: 40px;
    margin-top: 30px;
    border-radius: 10px;
    padding-left: 10px;
}

</style>
</head>	
<body>
id- admin@123
password-admin
<%
	String message = (String)request.getAttribute("msg");
	if(message!=null){
		%>

	<h1><%=message %></h1>

	<%}%>

 <div class="outer">
  <form action="/Apple/LoginServlet" method="post">
       <div class="inner">
        <h1>
            Login
        </h1>
        
       <input type="email" placeholder="Email" name="txtemail"><br>
       <input type="password" placeholder="Password" name="txtpass">
       <button type="submit">SignIn</button><br>
       <h2>or</h2>
    <a href="/Apple/SignUp.jsp"> <h3>Create an account??</h3></a>
       </div>
</form>
</div>
</body>
</html>