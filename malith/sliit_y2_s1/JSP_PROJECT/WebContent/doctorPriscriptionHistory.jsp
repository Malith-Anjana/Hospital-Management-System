<jsp:include page="header.jsp" />
  		<%
 			if(session.getAttribute("userName") == null || session == null)
 				{
 				response.sendRedirect("login.jsp");
  				return;
  				}
  		
  		%>
<br>
 <h3 class="font-weight-normal">Given Prescription History</h3>
 <hr>
<div class="container " style="margin-bottom:5em;">
 	 <div class="card m-3">
		<div class="card-body">
			<h4>Prescription</h4>
			<p class="font-weight-light">by Dr : xxxxxxxx  xxxxxx</p>
			 <p>aaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaa aaaaaaaaaaaaa aaaaaaaaaaaaa aaaa aa</p>
			 <br>
				<button class="btn btn-primary  m-2">Edit</button><button class="btn btn-danger m-2">Delete</button>
				<br>
		</div>
		
	</div>
	 <div class="card m-3">
		<div class="card-body">
			<h4>Prescription</h4>
			<p class="font-weight-light">by Dr : xxxxxxxx  xxxxxx</p>
			 <p>aaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaa aaaaaaaaaaaaa aaaaaaaaaaaaa aaaa aa</p>
			 <br>
							<button class="btn btn-primary m-2">Edit</button><button class="btn btn-danger m-2">Delete</button>
				<br>
		</div>
		
	</div>
	 <div class="card m-3">
		<div class="card-body">
			<h4>Prescription</h4>
			<p class="font-weight-light">by Dr : xxxxxxxx  xxxxxx</p>
			 <p>aaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaa aaaaaaaaaaaaa aaaaaaaaaaaaa aaaa aa</p>
			 <br>
							<button class="btn btn-primary m-2">Edit</button><button class="btn btn-danger m-2">Delete</button>
				<br>
		</div>
		
	</div>
</div>

<jsp:include page="footer.jsp" />