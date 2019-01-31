<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">
<!-- Core Stylesheet -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/style.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<!--Fontawesome CDN-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">

<title>Smart-Club</title>
<style>
.contrast, .contrast nav, .contrast div, .contrast li, .contrast ol,
	.contrast header, .contrast footer, .contrast section, .contrast main,
	.contrast aside, .contrast article {
	background: black !important;
	color: white !important;
}
</style>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap/autoContraste.js"></script>

</head>
<body>
	<!-- Preloader -->
	<div class="preloader d-flex align-items-center justify-content-center">
		<div class="cssload-container">
			<div class="cssload-loading"></div>
		</div>
	</div>



	<!-- ##### Header Area Start ##### -->
	<header class="header-area"> <!-- Navbar Area -->
	<div class="palatin-main-menu">
		<div class="classy-nav-container breakpoint-off">
			<div class="container">
				<!-- Menu -->
				<nav class="classy-navbar justify-content-between" id="palatinNav">

				<!-- Nav brand --> <img
					src="<%=request.getContextPath()%>/resources/bootstrap/img/core-img/logoooo.png"
					style="max-width: 19%" alt="Logo tipo Smart Club"> <!-- Navbar Toggler -->
				<div class="classy-navbar-toggler">
					<span class="navbarToggler"><span></span><span></span><span></span></span>
				</div>

				<!-- Menu -->
				<div class="classy-menu">

					<!-- close btn -->
					<div class="classycloseIcon">
						<div class="cross-wrap">
							<span class="top"></span><span class="bottom"></span>
						</div>
					</div>
					<!-- Nav Start -->
					<div class="classynav">
						<ul>
							<li><a href="home">Home</a></li>
							<li><a href="quemSomos">Quem Somos</a></li>
							<li class=""><a href="contato">Contato</a></li>
							<li class=""><a href="beneficio">Beneficio</a></li>
							<li><a href="#altocontraste" id="altocontraste"
								accesskey="3" onclick="window.toggleContrast()"
								onkeydown="window.toggleContrast()">Alto contraste [Alt + 3]</a></li>

						</ul>
					</div>
					<!-- Nav End -->
				</div>
				</nav>
			</div>
		</div>
	</div>
	</header>


	</header>
	<!-- ##### Breadcumb Area Start ##### -->
	<section
		class="breadcumb-area bg-img d-flex align-items-center justify-content-center"
		style="background-image: url(<%=request.getContextPath()%>/resources/bootstrap/img/bg-img/bg-5.jpg);">
	<div class="bradcumbContent">
		<h2>Services</h2>
	</div>
	</section>
	<!-- ##### Breadcumb Area End ##### -->
	</section>
	<!-- ##### Breadcumb Area End ##### -->
	<!-- ##### Service Intro Area Start ##### -->
	<section class="services-intro">
	<div class="container">

		<div class="row align-items-center">
			<!-- Service Intro Text -->
			<div class="col-12 col-lg-6">
				<div class="service-intro-text mb-100">
					<div class="section-heading">
						<div class="line-"></div>
						<h2>Escolha um dos nossos planos para se cadastrar..</h2>
					</div>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Donec malesuada lorem maximus mauris sceleri sque, at rutrum nulla
						dictum. Ut ac ligula sapien. Suspendisse cursus faucibus finibus.
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec
						malesuada lorem maximus mauris sceleri sque, at rutrum nulla
						dictum. Ut ac ligula sapien. Suspendisse cursus faucibus finibus.</p>

				</div>
			</div>


			<!-- Services Features -->
			<div class="col-12 col-lg-6">
				<div class="row mb-100">

					<!-- Single Cool Facts -->
					<div class="col-12 col-sm-4">
						<div class="single-cool-fact">
							<div class="scf-text">
								<i class="icon-cocktail-1"></i>
								<p>Open bar</p>
							</div>
						</div>
					</div>

					<!-- Single Cool Facts -->
					<div class="col-12 col-sm-4">
						<div class="single-cool-fact">
							<div class="scf-text">
								<i class="icon-swimming-pool"></i>
								<p>Pscina Infinita</p>
							</div>
						</div>
					</div>

					<!-- Single Cool Facts -->
					<div class="col-12 col-sm-4">
						<div class="single-cool-fact">
							<div class="scf-text">
								<i class="icon-beach"></i>
								<p>Quarto Extra</p>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- ##### Service Intro Area End ##### -->
	<!-- ##### Core Features Start ##### -->
	<section class="core-features-area">
	<div class="container">
		<div class="row justify-content-center">

			<!-- Single Core Feature Area -->
			<div class="col-12 col-md-6 col-lg-4">
				<div class="single-core-feature mb-100">
					<div class="bg-thumbnail bg-img"
						style="background-image: url(<%=request.getContextPath()%>/resources/bootstrap/img/bg-img/12.jpg);"></div>
					<!-- Content -->
					<div class="feature-content">
						<i class="icon-resort"></i>
						<h3>Plano Anual</h3>
						<ul>
							<li>Diaria +1</li>
							<li>Diaria +1</li>
							<li>Quarto Triplo</li>
							<li>Estacionamento</li>
							<li>Open Bar</li>
							<li>Translado</li>
							<li>Refei��es</li>
						</ul>
						<a type="submit" value="Aderir" class="btn btn-dark"
							href="cadastro">Aderir</a>

					</div>
				</div>
			</div>

			<!-- Single Core Feature Area -->
			<div class="col-12 col-md-6 col-lg-4">
				<div class="single-core-feature mb-100">
					<div class="bg-thumbnail bg-img"
						style="background-image: url(<%=request.getContextPath()%>/resources/bootstrap/img/bg-img/13.jpg);"></div>
					<!-- Content -->
					<div class="feature-content">
						<i class="icon-sunset"></i>
						<h3>Plano Mensal</h3>
						<ul>
							<li>Diaria +1</li>
							<li>Quarto Triplo</li>
							<li>Open Bar</li>
							<li>Estacionamento</li>
							<li>Refei��o</li><br><br>
						</ul>

					</div>
				</div>
			</div>

			<!-- Single Core Feature Area -->
			<div class="col-12 col-md-6 col-lg-4">
				<div class="single-core-feature mb-100">
					<div class="bg-thumbnail bg-img"
						style="background-image: url(<%=request.getContextPath()%>/resources/bootstrap/img/bg-img/14.jpg);"></div>
					<!-- Content -->
					<div class="feature-content">
						<i class="icon-island"></i>
						<h3>Plano Semestral </h3>
						<ul>
							<li>Diaria +1</li>
							<li>Diaria +1</li>
							<li>Quarto Triplo</li>
							<li>Open Bar</li>
							<li>Estacionamento</li>
							<li>Translado</li>
							<li>Refei��oe</li><br>
						</ul>
					</div>
				</div>
			</div>

		</div>
	</div>
	</section>

	<!-- ##### Services Area Start ##### -->
	<section class="services-area">
	<div class="container">
		<div class="row">

			<!-- Single Service Area -->
			<div class="col-12 col-sm-6 col-lg-4">
				<div class="single-service-area mb-100 wow fadeInUp"
					data-wow-delay="100ms">
					<i class="icon-trekking"></i>
					<h4>Bike Rentals</h4>
					<p>Nulla massa dui, posuere non erat in, eleifend mattis dui.
						Vivamus luctus luctus rhoncus. Donec sagittis nulla id finibus
						iaculis. Mauris odio tortor.</p>
				</div>
			</div>

			<!-- Single Service Area -->
			<div class="col-12 col-sm-6 col-lg-4">
				<div class="single-service-area mb-100 wow fadeInUp"
					data-wow-delay="200ms">
					<i class="icon-boat"></i>
					<h4>Boat Trips</h4>
					<p>Nulla massa dui, posuere non erat in, eleifend mattis dui.
						Vivamus luctus luctus rhoncus. Donec sagittis nulla id finibus
						iaculis. Mauris odio tortor.</p>
				</div>
			</div>

			<!-- Single Service Area -->
			<div class="col-12 col-sm-6 col-lg-4">
				<div class="single-service-area mb-100 wow fadeInUp"
					data-wow-delay="300ms">
					<i class="icon-plane"></i>
					<h4>Restaurants</h4>
					<p>Nulla massa dui, posuere non erat in, eleifend mattis dui.
						Vivamus luctus luctus rhoncus. Donec sagittis nulla id finibus
						iaculis. Mauris odio tortor.</p>
				</div>
			</div>

			<!-- Single Service Area -->
			<div class="col-12 col-sm-6 col-lg-4">
				<div class="single-service-area mb-100 wow fadeInUp"
					data-wow-delay="400ms">
					<i class="icon-beach"></i>
					<h4>Quarto Triplo</h4>
					<p>Nulla massa dui, posuere non erat in, eleifend mattis dui.
						Vivamus luctus luctus rhoncus. Donec sagittis nulla id finibus
						iaculis. Mauris odio tortor.</p>
				</div>
			</div>

			<!-- Single Service Area -->
			<div class="col-12 col-sm-6 col-lg-4">
				<div class="single-service-area mb-100 wow fadeInUp"
					data-wow-delay="500ms">
					<i class="icon-boarding-pass"></i>
					<h4>Event Tikets</h4>
					<p>Nulla massa dui, posuere non erat in, eleifend mattis dui.
						Vivamus luctus luctus rhoncus. Donec sagittis nulla id finibus
						iaculis. Mauris odio tortor.</p>
				</div>
			</div>

			<!-- Single Service Area -->
			<div class="col-12 col-sm-6 col-lg-4">
				<div class="single-service-area mb-100 wow fadeInUp"
					data-wow-delay="600ms">
					<i class="icon-sign"></i>
					<h4>Hiking</h4>
					<p>Nulla massa dui, posuere non erat in, eleifend mattis dui.
						Vivamus luctus luctus rhoncus. Donec sagittis nulla id finibus
						iaculis. Mauris odio tortor.</p>
				</div>
			</div>

		</div>
	</div>
	</section>


	<!-- ##### Footer Area Start ##### -->
	<footer class="footer-area">
	<div class="container">
		<div class="row">

			<!-- Footer Widget Area -->
			<div class="col-12 col-lg-5">
				<div class="footer-widget-area mt-50">
					<a href="#" class="d-block mb-5"><img
						src="img/core-img/logo.png" alt=""></a>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Donec malesuada lorem maximus mauris sceleri sque, at rutrum nulla
						dictum. Ut ac ligula sapien. Suspendisse cursus faucibus finibus.
					</p>
				</div>
			</div>

			<!-- Footer Widget Area -->
			<div class="col-12 col-md-6 col-lg-4">
				<div class="footer-widget-area mt-50">
					<h6 class="widget-title mb-5">Find us on the map</h6>
					<img src="img/bg-img/footer-map.png" alt="">
				</div>
			</div>

			<!-- Footer Widget Area -->
			<div class="col-12 col-md-6 col-lg-3">
				<div class="footer-widget-area mt-50">
					<h6 class="widget-title mb-5">Subscribe to our newsletter</h6>
					<form action="#" method="post" class="subscribe-form">
						<input type="email" name="subscribe-email" id="subscribeemail"
							placeholder="Your E-mail">
						<button type="submit">Subscribe</button>
					</form>
				</div>
			</div>

			<!-- Copywrite Text -->
			<div class="col-12">
				<div class="copywrite-text mt-30">
					<p>
						<a href="#"> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;<script>
								document.write(new Date().getFullYear());
							</script> All rights reserved | This template is made with <i
							class="fa fa-heart-o" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</div>

	</footer>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/bootstrap/js/jquery/jquery-2.2.4.min.js"></script>

	<!-- Popper js -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap/popper.min.js"></script>

	<!-- Bootstrap js -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins js -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/bootstrap/js/plugins/plugins.js"></script>
	<!-- Active js -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/bootstrap/js/active.js"></script>

</body>
</html>