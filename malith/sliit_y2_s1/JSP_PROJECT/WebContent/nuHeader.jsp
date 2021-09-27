
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page session="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>



<html style="width: 100%; height: 100%;">

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="css/all.css" rel="stylesheet">
<link rel="icon" href="images/logoonly.png" type="image">
<title>Hospital management system</title>



<script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("nurse");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>



<style>
#myInput {
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid rgb(0, 111, 238);
  margin-bottom: 12px;
}

#nurse {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#nurse td, #nurse th {
  border: 1px solid rgb(181, 203, 250);
  padding: 8px;
}

#nurse tr:nth-child(even){background-color: #d9ecf7;}
#nurse tr:nth-child(odd){background-color: #c8e3e4;} 
#nurse tr:hover {background-color: rgb(64, 100, 109);}

#nurse th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: rgb(21, 139, 155);
  color: white;
}
div.f{
  font-size: 30px;
  font-weight: 100;
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  text-align: center;
}
</style>



</head>
<body style="width: 100%;min-height: 100% !important;position: relative;">
	
<nav class="navbar navbar-expand navbar-light bg-light">
		 <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		      <img src="images/logoonly.png" width="30" height="30" alt="">
		      <a class="navbar-brand" href="home.jsp">Home</a>
		      </li>
			      <li class="nav-item">
			       <form method="post" action="DashboardController" class="">
			        <div onClick="javascript:this.parentNode.submit();" class="navbar-brand" style=" cursor: pointer;">Dashboard</div>
			        </form>
			      </li>
		    </ul>
		    
		   <ul class="navbar-nav">
		      <li class="nav-item"> 
		        <a class="navbar-brand" href="profile.jsp">Profile <i class="fas fa-user"></i></a>
		      </li>
		    </ul>
</nav>
		
		