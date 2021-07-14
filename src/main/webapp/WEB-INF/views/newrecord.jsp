<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="./parts/meta.jsp"%>

<title>Entity Record</title>
</head>
<body>
	<%@ include file="./parts/header.jsp"%>

	<form:form style="width: 400px; margin:auto;" method="post" action="save" > <!-- class="needs-validation" novalidate -->
		<div class="row">
			<div class="col">
				<div class="form-group">
					<label for="name">İsim</label>
					<form:input path="Name" id="name" name="name" type="text" class="form-control" required="required"/> 
				</div>
			</div>
 
			<div class="col">
				<div class="form-group">
					<label for="surname">Soyisim</label>
					<form:input path="Surname" id="surname" name="surname" type="text" class="form-control" required="required"/>
				</div>
			</div>
		</div>
		
		<div class="form-group">
			<label for="bloodtype">Kan Grubu</label>
			<form:select path="BloodType" id="bloodtype" name="bloodtype" type="text" class="form-control">
				<form:option value="ARh+">A RhD positif (A+)</form:option>
				<form:option value="ARh-">A RhD Negatif (A-)</form:option>
				<form:option value="BRh+">B RhD positif (B+)</form:option>
				<form:option value="BRh-">B RhD Negatif (B-)</form:option>
				<form:option value="ABRh+">AB RhD positif (AB+)</form:option>
				<form:option value="ABRh-">AB RhD Negatif (AB-)</form:option>
				<form:option value="0Rh+">0 RhD positif (0+)</form:option>
				<form:option value="0Rh-">0 RhD Negatif (0-)</form:option>
			</form:select>
		</div>
		
		<div class="form-group">
			<label for="phonenumber">Telefon</label>
			<form:input path="PhoneNumber" id="phonenumber" name="phonenumber" type="text" class="form-control" placeholder="+905443331234" required="required"/>	
		</div>
		
		<div class="form-group">
			<label for="address">Adres</label>
			<form:textarea path="Address" id="address" name="address" type="textarea" class="form-control" rows="3" required="required"/>		
		</div>
		
		
		<button type="submit" class="btn btn-outline-success">Kaydet</button>

	</form:form>
	<!--  
	<script>
		var form = document.querySelector('.needs-validation');
		
		form.addEventListener('submit',function(event){
			if(form.checkValidity()== false){
				event.preventDefault();
				event.stopPropagation();
			}
			form.classList.add('was-validated');
		});
	</script>-->






	<%@ include file="./parts/footer.jsp"%>
</body>
</html>