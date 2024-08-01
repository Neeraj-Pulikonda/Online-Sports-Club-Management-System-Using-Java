<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page import="com.database.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

String username=request.getParameter("user");
String password=request.getParameter("password");
try{
    Connection con=Dbconnection.getcon();
    Statement st=con.createStatement();
    ResultSet rs= st.executeQuery("select * from owner where username='"+username+"' and password='"+password+"' ");
    if(rs.next())
            {
                String status=rs.getString("status");
               session.setAttribute("id",rs.getString("id"));
session.setAttribute("name",rs.getString("username"));
session.setAttribute("email",rs.getString("email"));
                if(status.equalsIgnoreCase("waiting"))
                {
                    %>
        <script type="text/javascript">
            window.alert("Admin Not Yet Activated Your Account");
            window.location="Owner.jsp";
            </script>
        <%
            }
            else
            if(status.equalsIgnoreCase("Activated"))
                    {
                    %>
        <script type="text/javascript">
            window.alert("Login  successfully");
            window.location="OwnerHome.jsp";
            </script>
        <%
                    
                }
else
{
%>
        <script type="text/javascript">
            window.alert("Username Or Password Wrong");
            window.location="Owner.jsp";
            </script>
        <%
}
                        }else
{
%>
        <script type="text/javascript">
            window.alert("Username Or Password Wrong");
            window.location="Owner.jsp";
            </script>
        <%
}
    }catch(Exception e){
    out.println(e);
}


%>