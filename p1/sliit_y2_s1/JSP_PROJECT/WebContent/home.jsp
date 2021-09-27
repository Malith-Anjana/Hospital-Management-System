<jsp:include page="header.jsp" />
  		<%
 			if(session.getAttribute("userName") == null || session == null)
 				{
 				response.sendRedirect("login.jsp");
  				return;
  				}
  		
  		%>


	<div class="jumbotron" style="idth: 100%;">
        <div class="container">
          <h1 class="display-3">H M S hospitals</h1>
          <p>This is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
          <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p>
        </div>
      </div>
      
<div class="container">

	<div class="row" style="margin-top:2em;">
	    <div class="col">
	     	<div class="card" style="width: 18rem;">
			  <img class="card-img-top" src="images/bag.png" alt="Card image cap">
			  <div class="card-body">
			    <h5 class="card-title">Card title</h5>
			    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
			    <a href="#" class="btn btn-primary">Go somewhere</a>
			  </div>
			</div>
	    </div>
	    <div class="col">
	      <div class="card" style="width: 18rem;">
		  <img class="card-img-top" src="images/bag.png" alt="Card image cap">
		  <div class="card-body">
		    <h5 class="card-title">Card title</h5>
		    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		    <a href="#" class="btn btn-primary">Go somewhere</a>
		  </div>
		</div>
	    </div>
	    <div class="col">
	      <div class="card" style="width: 18rem;">
		  <img class="card-img-top" src="images/bag.png" alt="Card image cap">
		  <div class="card-body">
		    <h5 class="card-title">Card title</h5>
		    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		    <a href="#" class="btn btn-primary">Go somewhere</a>
		  </div>
		</div>
	    </div>
	</div>
	
</div>


<jsp:include page="footer.jsp" />
