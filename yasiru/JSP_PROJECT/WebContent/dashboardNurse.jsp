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
	<div class="jumbotron" style="idth: 100%;">
        <div class="container">
          <h1 class="display-4">Search</h1>
          <p>Enter patient name or Patient number</p>
           <form method="post" action="" class="">
				        <input class="form-control form-group" type="text" placeholder="enter patient number or patient name">
				        <a href="patientSearchResults.jsp" class="btn btn-primary">Search</a>
			</form>
         
        </div>
      </div>
      
      	   <div class="row mb-5">
		   <div class="col-12">
		   	<div class="card">
		      <div class="card-body">
		        
		        <h5 class="card-title">Pending Prescriptions</h5>
		       
<table id="nurse" class="table table-striped">
  <tr>
    <th>Prescription ID</th>
    <th>Patient Name</th>
    <th>Prescription Details</th>
    <th>Note</th>
  </tr>
  <tr>
    <td>Alfreds Futterkiste</td>
    <td>Maria Anders</td>
    <td>Germany</td>
    <td></td>
  </tr>
  <tr>
    <td>Berglunds snabbk�p</td>
    <td>Christina Berglund</td>
    <td>Sweden</td>
    <td></td>
  </tr>
  <tr>
    <td>Centro comercial Moctezuma</td>
    <td>Francisco Chang</td>
    <td>Mexico</td>
    <td></td>
  </tr>
  <tr>
    <td>Ernst Handel</td>
    <td>Roland Mendel</td>
    <td>Austria</td>
    <td></td>
  </tr>
  <tr>
    <td>Island Trading</td>
    <td>Helen Bennett</td>
    <td>UK</td>
    <td></td>
  </tr>
  <tr>
    <td>K�niglich Essen</td>
    <td>Philip Cramer</td>
    <td>Germany</td>
    <td></td>
  </tr>
  <tr>
    <td>Laughing Bacchus Winecellars</td>
    <td>Yoshi Tannamuri</td>
    <td>Canada</td>
    <td></td>
  </tr>
  <tr>
    <td>Magazzini Alimentari Riuniti</td>
    <td>Giovanni Rovelli</td>
    <td>Italy</td>
    <td></td>
  </tr>
  <tr>
    <td>North/South</td>
    <td>Simon Crowther</td>
    <td>SriLanka</td>
    <td></td>
  </tr>
  <tr>
    <td>Paris sp�cialit�s</td>
    <td>Marie Bertrand</td>
    <td>France</td>
    <td></td>
  </tr>
</table>
		       		
		      </div>
		    </div>
		  </div>
	   </div>
	

</div>

<jsp:include page="footer.jsp" />