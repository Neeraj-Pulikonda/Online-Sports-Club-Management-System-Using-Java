<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page import="com.database.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

String email=request.getParameter("email");
try{
    Connection con=Dbconnection.getcon();
    Statement st=con.createStatement();
    int i=st.executeUpdate("update owner set status='Activated' where email='"+email+"'");
    if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Activated successfully");
            window.location="ViewUser.jsp";
            </script>
        <%
    }else{
 %>
        <script type="text/javascript">
            window.alert("Activation Failed");
            window.location="ViewUser.jsp";
            </script>
        <%
}
    
}catch(Exception e){
    out.println(e);
}


%>