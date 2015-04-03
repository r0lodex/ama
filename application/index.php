<?php
if(!isset($_SESSION)) {session_start();}
if(!isset($_SESSION['authorized'])) {header('Location:../');}
?>
<!DOCTYPE html>
<html ng-app="ama">
<head>
	<title>AMA App Dashboard</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="../source/stylesheets/ama.css">
</head>
<body>

	<nav class="navbar navbar-inverse navbar-static-top">
		<div class="container">

			<!-- Mobile Navigation Helper -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nav">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><span class="icon icon-logo"></span> AMA</a>
			</div>

			<!-- Dashboard Navigation -->
			<div class="collapse navbar-collapse" id="nav">
				<ul class="nav navbar-nav">
					<li><a href="#"><span class="icon icon-shield"></span> Uniforms</a></li>
					<li><a href="#"><span class="icon icon-users"></span> Students</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="icon icon-users"></span> Users</a></li>
					<li><a href="../backend/router.php/logout">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- App Dependencies -->
	<script src="../source/vendor/jquery/jquery.min.js"></script>
	<script src="../source/vendor/bootstrap/bootstrap.min.js"></script>
	<script src="../source/vendor/angular/angular.min.js"></script>

	<!-- Angular JS Dependencies -->
	<script src="../source/vendor/angular/angular-route.js"></script>
	<script src="../source/vendor/angular/angular-modal-service.js"></script>

	<!-- AMA's Javascripts -->
	<script src="../source/javascripts/ama.js"></script>
	<script src="../source/javascripts/ama_controllers.js"></script>

</body>
</html>