<jsp:include page="header.jsp" />

 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  
   		<%
 			if(session.getAttribute("userName") == null || session == null)
 				{
 				response.sendRedirect("login.jsp");
  				return;
  				}
  		
  		%>  

  <div class="col"> 
     
    
    <div class="col"> 
      <div class="nav justify-content-end">
          <nav class="navbar navbar-light bg-light" >
            <form class="form-inline">
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-success type="submit">Search</button>
            </form>
          </nav>
        </div>
    </div>

    <div class="col">  
      <a href="AdmDoctorDetails.jsp" class="btn btn-primary" >Back</a>
    </div>

          
	
	
	<hr class="progress-bar bg-info" style="width: 100%" >
	
	<div class="mx-auto" style="width: 500px;">
	<h1 class="text-success" >Profile</h1>
	</div>
	
	<hr class="progress-bar bg-info" style="width: 100%" >
	
	<div class="mx-auto" style="width: 500px;">

    <table>  
    
    
    <c:forEach var="doc" items="${docDetails}">
    
    <c:set var="uid" value="${doc.uid}" /> 
    <c:set var="username" value="${doc.username}" />
    <c:set var="password" value="${doc.password}}" />
    <c:set var="name" value="${doc.name}" />
    <c:set var="lname" value="${doc.lname}" />
    <c:set var="type" value="${doc.type}" />
    <c:set var="address" value="${doc.address}" />
    <c:set var="birthday" value="${doc.birthday}" />
    

    
    <tr>
    	<td>User Id:</td>
    	<td>${doc.uid}</td>
    </tr>	
    <tr>
    	<td>User Name:</td>
    	<td>${doc.username}</td>
    </tr>
    <tr>
    	<td>Password:</td>
    	<td>${doc.password}</td>
    </tr>
    <tr>
    	<td>First Name:</td>
    	<td>${doc.name}</td>
    </tr>
    <tr>
    	<td>Last Name:</td>
    	<td>${doc.lname}</td>
    </tr>
    <tr>
    	<td>Type:</td>
    	<td>${doc.type}</td>
    </tr>
    <tr>
    	<td>Address:</td>
    	<td>${doc.address}</td>
    </tr>
    <tr>
    	<td>Birthday:</td>
    	<td>${doc.birthday}</td> 
    </tr>	            	
    	

    </c:forEach>  
  
    </table> 
    
   <c:url value="AdmDoctorUpdate.jsp" var="docupdate">
   
	   	<c:param name="uid" value="${uid}"/>
   		<c:param name="username" value="${username}"/>
   		<c:param name="password" value="${password}"/>
   		<c:param name="name" value="${name}"/>
   		<c:param name="lname" value="${lname}"/>
   		<c:param name="type" value="${type}"/>
   		<c:param name="address" value="${address}"/>
   		<c:param name="birthday" value="${birthday}"/>

   </c:url>
    

    
    <div class="row"> 
	    <a href="${docupdate}">
	     <input type="button" name="update" value="update" class="btn btn-warning">
	    </a>
        <a href="AdmDoctorDetails.jsp" class="btn btn-danger" >Delete</a>
      </div>

    
    
    
    </div>
    <hr class="progress-bar bg-info" style="width: 100%" >
    <br><br><br><br>
   
    
    


    
    

<jsp:include page="footer.jsp" />