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
	<div class="jumbotron" style="width: 100%;" color="#333333" ;>
        <div class="container">
       
          <div class="row mb-5 mt-2">
		  <div class="col-lg-12">
		  	 <div class="card">
			      <div class="card-body">
			     	
			        <a href="REPinsertroomdetails.jsp" class="btn btn-primary">SET ROOM</a>
 				
 				
			      </div>
	   		 </div>
		  </div>
	  </div> 
         
        
         
        </div>
      </div>
</div>
<jsp:include page="footer.jsp" />