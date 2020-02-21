<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List,java.util.Iterator"%>
<html lang="en">

<head>
<title>Dashboard | Brightest Training</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->
<link rel="stylesheet"
	href="assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="assets/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/vendor/linearicons/style.css">
<link rel="stylesheet"
	href="assets/vendor/chartist/css/chartist-custom.css">
<!-- MAIN CSS -->
<link rel="stylesheet" href="assets/css/main.css">
<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
<link rel="stylesheet" href="assets/css/demo.css">
<!-- GOOGLE FONTS -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700"
	rel="stylesheet">
<!-- ICONS -->
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="assets/img/favicon.png">
<link rel="stylesheet" href="/assets/css/plants.css">
<!-- Loading weather css file -->
<link rel="stylesheet" href="assets/weather/style/style.css">
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<c:set var="actived" value="active" scope="request" />
		<%@include file="navbar.jsp"%>
		<!-- LEFT SIDEBAR -->
		<%@include file="sidebar.jsp"%>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">

					<div class="${alertActive}">
						<a href="#" class="close" data-dismiss="alert" aria-label="close">${closeButton}</a>
						${alertMessage}
					</div>

					<!-- Start ROW -->
					<div class="row">
						<div class="col-md-12">
							<!-- WELKOM -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">WELKOM</h3>
									<div class="right">
										<button type="button" class="btn-toggle-collapse">
											<i class="lnr lnr-chevron-up"></i>
										</button>
										<button type="button" class="btn-remove">
											<i class="lnr lnr-cross"></i>
										</button>
									</div>
								</div>
								<div class="panel-body no-padding">
									<table class="table table-striped">
										<thead>
											<tr>
												
												
											</tr>
										</thead>
									</table>
								</div>
								<div class="panel-footer">
									<div class="row">
										<div class="col-md-12">
											
											
											
										</div>
									</div>
								</div>
							</div>
							<!-- END WELKOM -->
						</div>
					</div>
					<!-- End ROWS -->
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>
		<!-- END MAIN -->
		<div class="clearfix"></div>
		<!-- FOOTER -->
		<%@include file="footer.jsp"%>
		<%
			session.removeAttribute("alertActive");
		%>
		<%
			session.removeAttribute("alertMessage");
		%>
		<%
			session.removeAttribute("closeButton");
		%>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script
		src="assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
	<script src="assets/vendor/chartist/js/chartist.min.js"></script>
	<script src="assets/scripts/klorofil-common.js"></script>
</body>

</html>
