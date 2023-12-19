<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp</title>
<style type="text/css">

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
<%
	String message = (String)request.getAttribute("msg");
	if(message!=null){
		%>
	
	<h1><%=message %></h1>
	
	<%}%>
 <div class="outer">

        <div class="inner">
         <form action="/Apple/SignUp" method="post">
         <h1>
             SignUp
         </h1>
         <input type="text" placeholder="Name" name="txtname"><br>
        <input type="email" placeholder="Email" name="txtemail"><br>
        <input type="password" placeholder="Password" name="txtpass">
        <button type="submit">SignIn</button><br>
        <h2>or</h2>
     <h3>Do you have an account??<a href="/Apple/index.jsp">Login</a></h3>
     </form>
        </div>
        
           </div>
</body>

</html>