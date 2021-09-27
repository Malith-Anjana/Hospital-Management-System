<jsp:include page="header.jsp" />
  		<%
 			if(session.getAttribute("userName") == null || session == null)
 				{
 				response.sendRedirect("login.jsp");
  				return;
  				}
  		
  		%>
<br>
 <h3 class="font-weight-normal">Create New Prescription</h3>
 <hr>
<div class="container " style="margin-bottom:5em;">
	<div class="jumbotron jumbotron-fluid container">
		<div class="row">
			<div class="col-3 justify-content-center">
				<img src="images/user.png" alt="user" class="rounded-circle" style="height:8em;">
				<button class="btn btn-primary " onclick="document.location='viewPriscriptionHistory.jsp'">View Priscription History</button>
			</div>
			<div class="col-9">
				  
				    <h1 class="display-4">Patient Name</h1>
				    <p class="lead">Age</p>
				    <p class="lead">Special</p>
				    <p class="lead">Age</p>
				  
			</div>
		</div>
	</div>
	
	<div class="card">
		<div class="card-body">
			Add New Prescription
			 <textarea class="form-control" id="exampleFormControlTextarea1" rows="8"></textarea>
			 <br>
			<button class="btn btn-primary">Save</button>
		</div>
		
	</div>
	
	

</div>

<jsp:include page="footer.jsp" />