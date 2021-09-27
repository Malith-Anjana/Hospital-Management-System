<jsp:include page="header.jsp" />
  		<%
 			if(session.getAttribute("userName") == null || session == null)
 				{
 				response.sendRedirect("login.jsp");
  				return;
  				}
  		
  		%>
<br>
 <h3 class="font-weight-normal">..room available table...</h3>
 <!--form tag with servlet and method  --> 
 	<form action="insert" method="post">
 	     Room No<input type="text" name="roomid"><br>
 	     Patient name<input type="text" name="rpname"><br>
 	     Patient id<input type="text" name="rpid"><br>
 	     Availability<input type="number" name="avilability"><br>
 	     Date<input type="date" name="admitdate"><br>
 	     <input type="submit" name="submit" value="ADD DETAILS">
 	</form>
 <hr>
<div class="container " style="margin-bottom:5em;">
 <h1>Empty page</h1>
</div>

<jsp:include page="footer.jsp" />