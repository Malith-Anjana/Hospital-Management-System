<jsp:include page="header.jsp" />
  		<%
 			if(session.getAttribute("userName") == null || session == null)
 				{
 				response.sendRedirect("login.jsp");
  				return;
  				}
  		
  		%>
<br>
 <h3 class="font-weight-normal">Manage Notices</h3>
 <hr>
<div class="container " style="margin-bottom:5em;">
		
		<div class="card m-3">
		<div class="card-body">
			<input type="text" value="Title" class="form-control">

			 <textarea  class="form-control">aaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaa aaaaaaaaaaaaa aaaaaaaaaaaaa aaaa aa </textarea>
			 
			 <br>
			 							<button class="btn btn-primary m-2">Update</button><button class="btn btn-danger m-2">Delete</button>
				<br>
			
		</div>
		</div>
		
		<div class="card m-3">
		<div class="card-body">
			<input type="text" value="Title" class="form-control">

			 <textarea  class="form-control">aaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaa aaaaaaaaaaaaa aaaaaaaaaaaaa aaaa aa </textarea>
			 
			 <br>
			 							<button class="btn btn-primary m-2">Update</button><button class="btn btn-danger m-2">Delete</button>
				<br>
			
		</div>
		</div>
		
		<div class="card m-3">
		<div class="card-body">
			<input type="text" value="Title" class="form-control">

			 <textarea  class="form-control">aaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaa aaaaaaaaaaaaa aaaaaaaaaaaaa aaaa aa </textarea>
			 
			 <br>
			 							<button class="btn btn-primary m-2">Update</button><button class="btn btn-danger m-2">Delete</button>
				<br>
			
		</div>
		</div>

		
</div>

<jsp:include page="footer.jsp" />