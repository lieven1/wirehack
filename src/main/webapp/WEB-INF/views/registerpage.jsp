<!doctype html>
<html lang="en" class="fullscreen-bg">

<head>
<title>Registreren | Brightest Training</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="assets/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/vendor/linearicons/style.css">
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="/assets/scripts/passwordCheck.js"></script>
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<div class="vertical-align-wrap">
			<div class="vertical-align-middle">
				<div class="auth-box ">
					<div class="left">
						<div class="content">
							<div class="header">
								<div class="logo text-center">
									<img src="assets/img/logo-small.png" alt="Logo">
								</div>
								<p class="lead">Registreren</p>
							</div>
							<form class="form-auth-small" id="registerForm" action="/register" method="post">
								<div class="form-group">
									<label for="signin-username" class="control-label sr-only">Gebruikersnaam</label>
									<input type="text" class="form-control" id="signin-username"
										placeholder="Gebruikersnaam" name="username">
								</div>
								<div class="form-group">
									<label for="signin-email" class="control-label sr-only">Email</label>
									<input type="email" class="form-control" id="signin-email"
										placeholder="Email" name="email">
								</div>
								<div class="form-group">
									<label for="signin-password" class="control-label sr-only">Wachtwoord</label>
									<input type="password" class="form-control"
										id="signin-password" placeholder="Wachtwoord" name="password">
								</div>
								<div class="form-group">
									<label for="repeat-password" class="control-label sr-only">Herhaal
										Wachtwoord</label> <input type="password" class="form-control"
										id="repeat-password" placeholder="Wachtwoord"
										name="repeat-password">
								</div>
								<div class="form-group">
									<span id="responseSpan">${errorMessage}</span>
								</div>

								<button type="submit" id="registerSubmit"
									class="btn btn-primary btn-lg btn-block">REGISTREER</button>

								<div class="bottom">
									<span class="helper-text"><i class="fa fa-lock"></i> <a
										href="${pageContext.request.contextPath}/login"><span>Al
												geregistreerd? Login.
												</button></a></span>
								</div>

							</form>
						</div>
					</div>
					<div class="right">
						<div class="overlay"></div>
						<div class="content text">
							<h1 class="heading">Training Brightest</h1>
							<p>by Kiefer Beernaert</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- END WRAPPER -->
</body>

</html>
