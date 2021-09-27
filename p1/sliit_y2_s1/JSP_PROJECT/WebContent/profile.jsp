<jsp:include page="header.jsp" />
  		<%
 			if(session.getAttribute("userName") == null || session == null)
 				{
 				response.sendRedirect("login.jsp");
  				return;
  				}
  		
  		%>
<br>
 <h3 class="font-weight-normal">Profile</h3>
 <hr>
<div class="container">
<%@ page import="java.sql.*" %>
<%@ page import="hms.dbConn" %>
<%

dbConn conn = new dbConn();
Connection dbConnection = conn.returnConn();

Statement stmt = (Statement) dbConnection.createStatement();
String sqlStatement="SELECT * FROM user WHERE username='"+session.getAttribute("userName")+"'";
ResultSet rs= stmt.executeQuery(sqlStatement);
rs.first();
%>

	<img src="images/user.png" alt="profile" class="rounded-circle" width="50" height="50">
	<p>User Name : <%out.print(rs.getString("username")); %></p>
	<p>Name : <%out.print(rs.getString("name")); %></p>
	<p>Address : <%out.print(rs.getString("address")); %></p>
	<p>Tel : <%out.print(rs.getString("tpno")); %></p>
	<form action="Logout" method="post">
	<button type="submit" class="btn btn-primary">Logout</button>
	</form>


</div>

<jsp:include page="footer.jsp" />