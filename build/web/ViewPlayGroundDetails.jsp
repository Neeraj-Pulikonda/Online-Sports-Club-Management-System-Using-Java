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
			<li class="first current_page_item"><a href="OwnerHome.jsp">Home</a></li>
			<li><a href="AddPlayGround.jsp">Add Club</a></li>
			<li><a href="ViewPlayGroundDetails.jsp">View Club</a></li>
                       <li><a href="ViewBookingDetails.jsp">View  Booking Requests</a></li>
			
                        <li><a href="index.html">Logout</a></li>
                       
              
		</ul>
		<br class="clearfix" />
	</div>
	<div id="splash">
		<img class="pic" src="images/sports.png" width="870" height="230" alt="" />
	</div>
	<br/>
	<div style="margin-left:230px;">
            <%String id=(String)session.getAttribute("id");
            String email=(String)session.getAttribute("email");
            String name=(String)session.getAttribute("name");%>
            <h3 style="margin-bottom:100px;">Welcome to :  <%=email%></h3>
        </div>
        <%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
    <div style="margin-left:130px;margin-bottom: 100px;">
	<h3><center>View Your Club Details</center></h3>
        <table align="center"border="1" style="margin-bottom: 100px;">
                  <tr>
                      <th>CLUB ID</th>
                      <th>Owner NAME</th>
                      
                      <th>EMAIL</th>
                      <th>CLUB NAME</th>
                     <th>CLUB ADDRESS</th>
                     <th>CLUB AREA</th>
                     <TH>USED FOR</TH>
                    
                  </tr>
                  <%try{
                  String query="select * from grounddetails where email='"+email+"'";
                  
ResultSet r=Queries.getExecuteQuery(query);
while(r.next()){
 
                %>
                  <tr>
                      <td><%=r.getString(1)%></td> 
                      <td><%=r.getString(2)%></td> 
                      <td><%=r.getString(3)%></td> 
                      <td><%=r.getString(4)%></td> 
                      <td><%=r.getString(5)%></td> 
                      <td><%=r.getString(6)%></td>
                      <td><%=r.getString(7)%></td>
                     
                      
                       
                      

                  </tr>
                  <%}
}catch(Exception e){
out.println(e);
}%>
              </table>
</body>
</html>