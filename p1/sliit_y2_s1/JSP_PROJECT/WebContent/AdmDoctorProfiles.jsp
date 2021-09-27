<jsp:include page="header.jsp" />
  		<%
 			if(session.getAttribute("userName") == null || session == null)
 				{
 				response.sendRedirect("login.jsp");
  				return;
  				}
  		
  		%>

  <div class="col"> 
      <center>
          <h1 class="text-success">Profile</h1>
        </center>
      </div>
    
    <div class="col"> 
      <div class="nav justify-content-end">
          <nav class="navbar navbar-light bg-light" >
            <form class="form-inline">
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-primary type="submit">Search</button>
            </form>
          </nav>
        </div>
    </div>

    <div class="col">  
      <a href="AdmDoctorDetails.jsp" class="btn btn-primary" >Back</a>
    </div> 
  
 <form action="insert" method="post">
    <div class="mx-auto" style="width: 500px;">
    
       <div class="form-group">
        <label for="validationCustom01">User Name</label>
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
      </div>
      <div class="form-group">
        <label for="validationCustom01">First name</label>
        </div>
        <div class="form-group">
          <label for="validationCustom01">Last name</label>
         </div>
    	 <div class="form-group">
          <label for="validationCustom01">Type</label>
        </div>
        <div class="form-group">
          <label for="validationCustom01">Address</label>
        </div>
        <div class="form-group">
          <label for="validationCustom01">Birthday</label>
        </div>
          <div class="form-group">
          <label for="validationCustom01">Specialization</label>
        </div> 
        
     	<input type="submit" name="submit" value="Update" class="btn btn-primary" >
     	<input type="submit" name="submit" value="Delete" class="btn btn-primary" >
     	
	   </div>
    </form>

<jsp:include page="footer.jsp" />