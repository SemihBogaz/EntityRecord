<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="./parts/meta.jsp" %>
<title>Entity Record</title>
</head>
<body>
<%@ include file="./parts/header.jsp" %>

<script type="text/javascript">
$(document).ready(function() {
    var table = $('#entityTable').DataTable( {
        responsive: true
    } );
 
    new $.fn.dataTable.FixedHeader( table );
} );
</script>
  <div align="center">
	<h2>Kayıt Listesi</h2>
	
	<table id="entityTable" class="table table-striped table-bordered" style="width:50%"> 
		<tr><th>İsim</th><th>Soyisim</th><th>Kan Grubu</th><th>Telefon</th><th>Adres</th></tr>  
   		<c:forEach var="entityModel" items="${listEntity}">   
   		<tr>  
   			<td>${entityModel.name}</td>  
   			<td>${entityModel.surname}</td>  
   			<td>${entityModel.bloodType}</td>  
   			<td>${entityModel.phoneNumber}</td>
   			<td>${entityModel.address}</td>  
   		</tr>  
   		</c:forEach>  
   </table>  
	</div>
<%@ include file="./parts/footer.jsp" %>
</body>
</html>