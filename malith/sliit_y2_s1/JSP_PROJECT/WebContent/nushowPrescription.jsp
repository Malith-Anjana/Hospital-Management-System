<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="nuHeader.jsp" />
  		<%
 			if(session.getAttribute("userName") == null || session == null)
 				{
 				response.sendRedirect("login.jsp");
  				return;
  				}
  		
  		%>
<br>
 <h3 class="font-weight-normal">Prescription Details</h3>
 <hr>
 
 
<div class="container">
	<div class="jumbotron" style="idth: 100%;">
        <div class="container">
          <h1 class="display-4">Search</h1>
          <p>Enter patient name or Patient number</p>
           <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Type Prescription ID here" title="Type in a name">
        </div>
      </div>
      
      	   <div class="row mb-5">
		   <div class="col-12">
		   	<div class="card">
		      <div class="card-body">
 
 
 <h2>Prescription Details</h2>
 <table id="nurse" class="table table-striped">
  <tr>
    <th>Prescription ID</th>
    <th>Patient Name</th>
    <th>Prescription Details</th>
  </tr>
  
 <c:forEach var="pres" items="${presDetail}">
  <tr>
    <td>${pres.presID}</td>
    <td>${pres.patientName}</td>
    <td>${pres.presDetails}</td>
  </tr>
</c:forEach>
</table>
		       		
		      </div>
		    </div>
		  </div>
	   </div>
	

</div>

<jsp:include page="footer.jsp" />