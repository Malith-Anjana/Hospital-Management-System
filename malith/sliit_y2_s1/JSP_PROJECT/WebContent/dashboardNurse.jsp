<jsp:include page="header.jsp" />
  		<%
 			if(session.getAttribute("userName") == null || session == null)
 				{
 				response.sendRedirect("login.jsp");
  				return;
  				}
  		
  		%>
<br>
 <h3 class="font-weight-normal">Dashboard</h3>
 <hr>
 
 
<div class="container">

		        
		        <h5 class="card-title">Pending Prescriptions</h5>
<form action ="NurseServelet" method="post">

	<input type = "submit" name="Details" value="Details">
</form>	
	     
</div>

<jsp:include page="footer.jsp" />