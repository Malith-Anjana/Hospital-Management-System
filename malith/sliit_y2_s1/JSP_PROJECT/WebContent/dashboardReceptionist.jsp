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
 <h1>receptionist</h1>
</div>

<jsp:include page="footer.jsp" />