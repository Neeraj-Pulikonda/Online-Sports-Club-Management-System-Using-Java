<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page import="com.database.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

String email=request.getParameter("email");
String id= request.getParameter("id");
try{
    Connection con=Dbconnection.getcon();
    Statement st=con.createStatement();
    int i=st.executeUpdate("update booking set status='Accept' where email='"+email+"' and id='"+id+"'");
    if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Booking Accepted successfully");
            window.location="OwnerHome.jsp";
            </script>
        <%
    }else{
 %>
        <script type="text/javascript">
            window.alert("Booking Acceptance Failed");
            window.location="OwnerHome.jsp";
            </script>
        <%
}
    
}catch(Exception e){
    out.println(e);
}


%>