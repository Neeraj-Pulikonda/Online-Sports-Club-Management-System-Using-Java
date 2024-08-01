<%-- 
    Document   : RegAction
    Created on : 3 May, 2021, 3:35:20 PM
    Author     : KishanVenky
--%>

<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{
String name=request.getParameter("name");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String address=request.getParameter("address");
String username=request.getParameter("username");
String password=request.getParameter("password");

int i=Queries.getExecuteUpdate("insert into owner values(null,'"+name+"','"+email+"','"+mobile+"','"+address+"','"+username+"','"+password+"','waiting')");
if(i>0){
    %>
    <script type="text/javascript">
       window.alert("Registration Successfull..!!");
       window.location="GroundOwner.jsp";
        </script>
    <%
}else{
 %>
    <script type="text/javascript">
       window.alert("Registration Failed..!!");
       window.location="GroundOwner.jsp";
        </script>
    <%
}

}catch(Exception e){
  out.println(e);  
}
%>
