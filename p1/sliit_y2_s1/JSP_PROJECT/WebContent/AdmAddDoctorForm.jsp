<jsp:include page="header.jsp" />
  		<%
 			if(session.getAttribute("userName") == null || session == null)
 				{
 				response.sendRedirect("login.jsp");
  				return;
  				}
  		
  		%>

  <div class="row">
        <div class="col"> 
        <center>
            <h1 class="text-success">New Doctor</h1>
          </center>
        </div>
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
        <input type="text" class="form-control"  name="username" required>
        <div class="valid-feedback">
        Looks good!
      </div>
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input type="password" class="form-control"  name="password" required>
      </div>
      
    
      <div class="form-group">
        <label for="validationCustom01">First name</label>
        <input type="text" class="form-control"  name="name" required>
        <div class="valid-feedback">
          Looks good!
        </div>
        </div>
        <div class="form-group">
          <label for="validationCustom01">Last name</label>
          <input type="text" class="form-control"  name="lname" required>
          <div class="valid-feedback">
          Looks good!
         </div>
         </div>
    	      <div class="form-group">
          <label for="validationCustom01">Type</label>
          <input type="text" class="form-control"  name="type" required>
          <div class="valid-feedback">
          Looks good!
        </div>
        </div>

        <div class="form-group">
          <label for="validationCustom01">Address</label>
          <input type="text" class="form-control"  name="address" required>
          <div class="valid-feedback">
          Looks good!
        </div>
        </div>
        <div class="form-group">
          <label for="validationCustom01">Birthday</label>
          <input type="text" class="form-control"  name="birthday" required>
          <div class="valid-feedback">
          Looks good!
        </div>
        </div>
          <div class="form-group">
          <label for="validationCustom01">Specialization</label>
          <input type="text" class="form-control" name="specialization" required>
          <div class="valid-feedback">
          Looks good!
        </div>
        </div> 
        
     	<input type="submit" name="submit" value="Add" class="btn btn-primary" >
     	
	   </div>
    </form><br><br><br><br>
     
   
      
  <!--    
  		   <hr class="progress-bar bg-info" style="width: 100%" >
      <hr class="progress-bar bg-info" style="width: 100%" >
  
          <div class="form-group">
          <label for="validationCustom01">Specialization</label>
          <input type="text" class="form-control" id="validationCustom01" value="" required>
          <div class="valid-feedback">
          Looks good!
        </div> 
        
              </div>
      <div class="form-group">
        <label for="exampleInputEmail1">Email address</label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="" required>
        
      </div>
      
        -->  
        
        

<jsp:include page="footer.jsp" />