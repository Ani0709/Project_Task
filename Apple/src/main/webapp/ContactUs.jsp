<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" integrity="sha512-q3eWabyZPc1XTCmF+8/LuE1ozpg5xxn7iO89yfSOd5/oKvyqLngoNGsx8jq92Y8eXJ/IRxQbEC+FGSYxtk2oiw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

<style>
*{
    margin: 0;
    padding: 0;
    font-family: 'Poppins', sans-serif;
    

}
.heading{
    font-size: 2em;
    color: black;
    margin: 20px 0 0 30px;

}
.info{
    display: flex;
    margin:30px 0 0 20px;
    font-size: 0.9em;
    color: #06020296;
    
}
.address{
    width: 350px;
    text-align: center;
   
    padding: 10px;

}

.no{
    width: 350px;
    text-align: center;

    padding: 10px;
  
}
.email{
    width: 350px;
    text-align: center;
  
    padding: 10px;
  
}
.website{
    width: 350px;
    text-align: center;
  
    padding: 10px;
}
.main
{
    width: 100%;
    margin: 70px 0 0 30px;

}
.left{
    width: 600px;
    height: 500px;
    
    background:url("/InternshipHub/images/backgrondimg.jpg");
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    float: left;
   
}
.right
{
    float: left;
    width: 600px;
    height: 500px;
    text-decoration: none;
    background-color: #ffffffa6;

  

}
.right input{
    margin: 40px 40px;
    padding: 0 20px;
    border: 1px solid blue;
    width: 500px;
    height: 50px;
    display: flex;
    font: 1em sans-serif;
  
    justify-content: center;
    align-items: center;
}
.right textarea{

    margin: 40px 40px;
    height: 80px;
    border: 1px solid blue;
    width: 500px;
    height: 80px;
    display: flex;
    font: 1em sans-serif;
    padding: 20px 20px;
    justify-content: center;
    align-items: center;
   

}
.right button{
    margin: 0 40px;
    width: 150px;
    height: 40px;
    padding: 0 10px;
    text-align: center;
    background-color: #157efb;
    border-radius: 5px;
    color: #fff;
      float:left;
}
 .bgimg{
        width: 1280px;
        height: 500px;
        background-image: url("/InternshipHub/images/bg.jpg");
        background-position: center;
        background-size: cover;
        background-repeat: no-repeat;

    }
    .fo
    {
   	 float:left;
        width: 100%;
        height: 100%;
    
    }
</style>
</head>
<body>
	
	<div class="bgimg">

	
		<%
	String message = (String)request.getAttribute("msg");
	if(message!=null){
		%>
	
	<h1><%=message %></h1>
	
	<%}%>
	
	</div>
    <div class="outer">
        <div class="upper">
        <h1 class="heading">Contact Information</h1>
        <div class="info">
            <div class="address">
                <p>Address: </span>
            </div>
            <div class="no">
              Phone: +91 1234567890
            </div>
            <div class="email">
                Email:abc@gmail.com
            </div>
            <div class="website">
                Website: www.abc.in
            </div>
        </div>
    </div> 
    <div class="main">
        <div class="left"></div>
             
             
             
        <div class="right">
  		
  		
  		 <form method="post" action="/Apple/Contact_Us">
  		 
  		 <h1 style="text-align:center; color:black; font-weight:400; "> Contact Us</h1>
            <input type="text" placeholder="Your Name" name="txtname">
            <input type="email" placeholder="Your Email" name="txtemail">
            <input type="number" placeholder="Phone No" name="txtphone">
            <textarea  id="que" cols="30" rows="10" placeholder="Your Question" name="txtquestion"></textarea>
           
                <button type="submit">Send Message</button>
                
             </form>
        </div>
       
    </div>
  
    </div>
    

  
</body>