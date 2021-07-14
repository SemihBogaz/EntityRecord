<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/style.css">
<%@ include file="./parts/meta.jsp"%>

<title>Hoş Geldiniz</title>

</head>
<body>
	<%@ include file="./parts/header.jsp"%>

	<div align="center">
		<section id="cards" >
			<div class="container">
				<div class="title">
					<h1>Ana sayfaya hoş geldiniz</h1>
					<p>Kartlardan birine tıklayarak kayıt ekleyebilir ya da olan
						kayıtları görüntüleyebilirsiniz</p>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="card-text-center">
							<div class="card-body">
								<h5 class="card-title">Kayıt Ekleme</h5>
								<p class="card-text">İsim, soyisim, telefon, adress ve kan
									grubu bilgileri gereklidir.</p>
								<a href="./newrecord">Kayıt Ekle</a>

							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="card-text-center">		
							<div class="card-body">
								<h5 class="card-title">Kayıt Listeleme</h5>
								<p class="card-text"> Şimdiye kadar eklenmiş tüm kayıtları görebilirsiniz.</p>
								<a href="./recordlist">Kayıt Listeleme</a>

							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>

	<!--  
	<h1>Hello from spring mvc</h1>

	<div class="card" style="width: 18rem;">
		<img src="..." class="card-img-top" alt="card-img">
		<div class="card-body">
			<h5 class="card-title">Card title</h5>
			<p class="card-text">Some quick example text to build on the card
				title and make up the bulk of the card's content.</p>
			<a href="./newrecord" class="btn btn-primary">Yeni Kayıt</a>
		</div>
	</div> -->
	<%@ include file="./parts/footer.jsp"%>


</body>
</html>