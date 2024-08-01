<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page import="com.database.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%String id=(String)session.getAttribute("id");
            String email=(String)session.getAttribute("email");
            String name=(String)session.getAttribute("name");
            String gid = request.getParameter("gid");
            String groundname = request.getParameter("gname");
            String ownername = request.getParameter("ownername");
try{
    Connection con=Dbconnection.getcon();
    Statement st=con.createStatement();
    int i=st.executeUpdate("insert into booking values(null,'"+name+"','"+email+"','"+gid+"','"+ownername+"','"+groundname+"',now(),'waiting')");
    if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Your Club Booking Request Sent successfully");
            window.location="UserHome.jsp";
            </script>
        <%
    }else{
 %>
        <script type="text/javascript">
            window.alert("Your Club Booking Failed");
            window.location="UserHome.jsp";
            </script>
        <%
}
    
}catch(Exception e){
    out.println(e);
}


%>