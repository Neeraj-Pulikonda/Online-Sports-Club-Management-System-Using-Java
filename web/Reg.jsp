<%-- 
    Document   : User
    Created on : Dec 1, 2021, 3:11:12 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Online Sports Club Management System</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h3><font size="5" color="white">Online Sports Club Management System</font></h3>
		</div>
		<div id="slogan">
			
		</div>
	</div>
	<div id="menu">
		<ul>
			<li class="first current_page_item"><a href="index.html">Home</a></li>
			<li><a href="User.jsp">User</a></li>
			<li><a href="Admin.jsp">Admin</a></li>
                       <li><a href="Owner.jsp">Club Owner</a></li>
			<li><a href="Reg.jsp">Registration</a></li>
                        <li><a href="GroundOwner.jsp">Owner Registration</a></li>
                       
              
		</ul>
		<br class="clearfix" />
	</div>
	<div id="splash">
		<img class="pic" src="images/sports.png" width="870" height="230" alt="" />
	</div>
	<br/>
        <div style="margin-left:230px;">
	<form name="f1" method="post" action="RegAction.jsp" onsubmit="return validate(this);"><br/>
   <h2><b>User Registration</b></h2>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
			<table align="center" width="40" >
			 <tr><td><b>Name</b></td><td><input type="text" name="name" required=""/></td></tr>

			<tr><td><b>Email</b></td><td><input type="email" name="email" required=""/></td></tr>

			<tr><td><b>Mobile</b></td><td><input type="text" name="mobile" required=""/></td></tr>

			<tr><td><b>Address</b></td><td><input type="text" name="address" required=""/></td></tr>
         
		  
                       <tr><td><b>username</b></td><td><input type="text" name="username" required=""/></td></tr>
 <tr><td><b>password</b></td><td><input type="password" name="password" required=""/></td></tr>

                      
			<tr><td></td><td><input type="submit" value="Register"></td>
			</table>
        </form>
        </div>
</body>
</html>