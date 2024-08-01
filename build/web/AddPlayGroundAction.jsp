

<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{
String name=request.getParameter("name");
String email=request.getParameter("email");
String gname=request.getParameter("gname");
String groundaddress=request.getParameter("groundaddress");
String garea=request.getParameter("groundarea");
String usedfor=request.getParameter("usedfor");

int i=Queries.getExecuteUpdate("insert into grounddetails values(null,'"+name+"','"+email+"','"+gname+"','"+groundaddress+"','"+garea+"','"+usedfor+"')");
if(i>0){
    %>
    <script type="text/javascript">
       window.alert("Club Details Added Successfull..!!");
       window.location="OwnerHome.jsp";
        </script>
    <%
}else{
 %>
    <script type="text/javascript">
       window.alert("Club Details Adding Failed..!!");
       window.location="OwnerHome.jsp";
        </script>
    <%
}

}catch(Exception e){
  out.println(e);  
}
%>
