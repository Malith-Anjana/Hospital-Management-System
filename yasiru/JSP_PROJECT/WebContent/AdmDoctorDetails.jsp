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
            <h1 class="text-success">Doctor Details</h1>
          </center>
        </div>
      </div>
      

 
      <div class="col"> 
      <div class="nav justify-content-end">
          <nav class="navbar navbar-light bg-light" >
              <form action="log" method="post">
                <input type="text" name="username" >
                 <input class="btn btn-primary"  type="submit" name="submit" value="Search">
              </form>
            </nav>
        </div>
    </div>

    

      
      

        <div class="col">  
        <a href="dashboardAdmin.jsp" class="btn btn-primary" >Back</a>
        </div> 

        <div class="col"> 
            
        <center>
          <a href="AdmAddDoctorForm.jsp" class="btn btn-primary" >Add New Doctor</a>
        </center>
      </div>
      </div><br>
      
    
     
  

<div class="container">

  <div class="row">
    <div class="col">
        <div class="mx-auto"></div>

		     
		  <div class="card img-fluid" style="width:200px"  >
		  
		  
		    <img class="card-img-top" src="images\Admin\img_avatar1.png" alt="Card image" style="width:100%">
		    <div class="card-img-overlay">
		      <h4 class="card-title">John Doe</h4>
		      <p class="card-text"></p>
		      <a href="AdmDoctorProfiles.jsp" class="btn btn-primary">Show Profile</a>
		    </div>
		    
		  </div>
		  
		  </div>



<!--  
<div class="col">
  <div class="card img-fluid" style="width:200px">
    <img class="card-img-top" src="images\Admin\img_avatar1.png" alt="Card image" style="width:100%">
    <div class="card-img-overlay">
      <h4 class="card-title">John Doe</h4>
      <p class="card-text"></p>
      <a href="#" class="btn btn-primary">Profile</a>
    </div>
  </div>
  </div>


    <div class="col">
  <div class="card img-fluid" style="width:200px">
    <img class="card-img-top" src="images\Admin\img_avatar1.png" alt="Card image" style="width:100%">
    <div class="card-img-overlay">
      <h4 class="card-title">John Doe</h4>
      <p class="card-text"></p>
      <a href="#" class="btn btn-primary">Profile</a>
    </div>
  </div>
  </div>

    <div class="col">
  <div class="card img-fluid" style="width:200px">
    <img class="card-img-top" src="images\Admin\img_avatar1.png" alt="Card image" style="width:100%">
    <div class="card-img-overlay">
      <h4 class="card-title">John Doe</h4>
      <p class="card-text"></p>
      <a href="#" class="btn btn-primary">Profile</a>
    </div>
  </div>
  </div>
</div>

<div class="row">
    <div class="col">
  <div class="card img-fluid" style="width:200px">
    <img class="card-img-top" src="images\Admin\img_avatar1.png" alt="Card image" style="width:100%">
    <div class="card-img-overlay">
      <h4 class="card-title">John Doe</h4>
      <p class="card-text"></p>
      <a href="#" class="btn btn-primary">Profile</a>
    </div>
  </div>
  </div>

<div class="col">
  <div class="card img-fluid" style="width:200px">
    <img class="card-img-top" src="images\Admin\img_avatar1.png" alt="Card image" style="width:100%">
    <div class="card-img-overlay">
      <h4 class="card-title">John Doe</h4>
      <p class="card-text"></p>
      <a href="#" class="btn btn-primary">Profile</a>
    </div>
  </div>
  </div>


    <div class="col">
  <div class="card img-fluid" style="width:200px">
    <img class="card-img-top" src="images\Admin\img_avatar1.png" alt="Card image" style="width:100%">
    <div class="card-img-overlay">
      <h4 class="card-title">John Doe</h4>
      <p class="card-text"></p>
      <a href="#" class="btn btn-primary">Profile</a>
    </div>
  </div>
  </div>

    <div class="col">
  <div class="card img-fluid" style="width:200px">
    <img class="card-img-top" src="images\Admin\img_avatar1.png" alt="Card image" style="width:100%">
    <div class="card-img-overlay">
      <h4 class="card-title">John Doe</h4>
      <p class="card-text"></p>
      <a href="#" class="btn btn-primary">Profile</a>
    </div>
  </div>
  </div>
</div>

<div class="row">
    <div class="col">
  <div class="card img-fluid" style="width:200px">
    <img class="card-img-top" src="images\Admin\img_avatar1.png" alt="Card image" style="width:100%">
    <div class="card-img-overlay">
      <h4 class="card-title">John Doe</h4>
      <p class="card-text"></p>
      <a href="#" class="btn btn-primary">Profile</a>
    </div>
  </div>
  </div>

<div class="col">
  <div class="card img-fluid" style="width:200px">
    <img class="card-img-top" src="images\Admin\img_avatar1.png" alt="Card image" style="width:100%">
    <div class="card-img-overlay">
      <h4 class="card-title">John Doe</h4>
      <p class="card-text"></p>
      <a href="#" class="btn btn-primary">Profile</a>
    </div>
  </div>
  </div>


    <div class="col">
  <div class="card img-fluid" style="width:200px">
    <img class="card-img-top" src="images\Admin\img_avatar1.png" alt="Card image" style="width:100%">
    <div class="card-img-overlay">
      <h4 class="card-title">John Doe</h4>
      <p class="card-text"></p>
      <a href="#" class="btn btn-primary">Profile</a>
    </div>
  </div>
  </div>

    <div class="col">
  <div class="card img-fluid" style="width:200px">
    <img class="card-img-top" src="images\Admin\img_avatar1.png" alt="Card image" style="width:100%">
    <div class="card-img-overlay">
      <h4 class="card-title">John Doe</h4>
      <p class="card-text"></p>
      <a href="#" class="btn btn-primary">Profile</a>
    </div>
  </div>
  </div>
</div>
</div>  -->

<jsp:include page="footer.jsp" />