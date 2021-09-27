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
  
    <form>
      <div class="mx-auto" style="width: 500px;">
      <div class="form-group">
        <label for="validationCustom01">First name</label>
        <input type="text" class="form-control" id="validationCustom01" value="" required>
        <div class="valid-feedback">
          Looks good!
        </div>
        <div class="form-group">
          <label for="validationCustom01">Last name</label>
          <input type="text" class="form-control" id="validationCustom01" value="" required>
          <div class="valid-feedback">
          Looks good!
         </div>
    
        <div class="form-group">
          <label for="validationCustom01">Specialization</label>
          <input type="text" class="form-control" id="validationCustom01" value="" required>
          <div class="valid-feedback">
          Looks good!
        </div>
        <div class="form-group">
          <label for="validationCustom01">Address</label>
          <input type="text" class="form-control" id="validationCustom01" value="" required>
          <div class="valid-feedback">
          Looks good!
        </div>
        <div class="form-group">
          <label for="validationCustom01">Age</label>
          <input type="text" class="form-control" id="validationCustom01" value="" required>
          <div class="valid-feedback">
          Looks good!
        </div>
     
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">Email address</label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="" required>
        
      </div>
      
     
      <hr class="progress-bar bg-info" style="width: 100%" >
      <hr class="progress-bar bg-info" style="width: 100%" >
    
      <div class="form-group">
        <label for="validationCustom01">User Name</label>
        <input type="text" class="form-control" id="validationCustom01" value="" required>
        <div class="valid-feedback">
        Looks good!
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input type="password" class="form-control" id="exampleInputPassword1" value="" required>
      </div>
    </div>
    <div class="col">  
      <center>
          <a href="AdmDoctorDetails.jsp" class="btn btn-primary" >Update</a>
          <a href="AdmDoctorDetails.jsp" class="btn btn-primary" >Delete</a>
      </center>
      </div><br>
  
  </form>
</div>
</div>

<jsp:include page="footer.jsp" />