<jsp:include page="header.jsp" />
  		<%
 			if(session.getAttribute("userName") == null || session == null)
 				{
 				response.sendRedirect("login.jsp");
  				return;
  				}
  		
  		%>
<br>
 <h3>Search Results</h3>
 <hr>
<div class="container">
 	<table class="table table-striped">
	  <thead>
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">Patient Name</th>
	      <th scope="col">Patient ID</th>
	      <th scope="col">Age</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr onclick="document.location='newPrescription.jsp'">
	      <th scope="row">1</th>
	      <td>Akalanka</td>
	      <td>Otto</td>
	      <td>23</td>
	    </tr>
	    
	   
	  </tbody>
</table>
</div>

<jsp:include page="footer.jsp" />