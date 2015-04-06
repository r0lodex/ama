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
	<link rel="stylesheet" type="text/css" href="../source//vendor/angular/directives/loading-bar.min.css">
</head>
<body>
	<script>var isAdmin = false;</script>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">

			<!-- Mobile Navigation Helper -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nav">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand"><span class="icon icon-logo"></span> CAS</a>
			</div>

			<!-- Dashboard Navigation -->
			<div class="collapse navbar-collapse" id="nav" ng-controller="navCTRL">
				<ul class="nav navbar-nav navbar-right">
					<li ng-class="{active:isActive('/uniforms')}" class="mobile"><a href="#/uniforms"><span class="icon icon-shield"></span> Uniforms</a></li>
					<li ng-class="{active:isActive('/students')}" class="mobile"><a href="#/students"><span class="icon icon-address-book"></span> Students</a></li>
					<?php if(isset($_SESSION['authorized']) && $_SESSION['authorized'] == 'admin') { ?>
						<li ng-class="{active:isActive('/users')}" class="mobile"><a href="#/users"><span class="icon icon-users"></span> Manage Users</a></li>
						<script>var isAdmin = true;</script>
					<?php } ?>

					<li><a class="text-capitalize"><?php echo $_SESSION['user'];?></a></li>
					<li><a href="../backend/router.php/auth/logout">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Views Container: Setiap link akan load templates dalam [application/views]  -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar" ng-controller="navCTRL">
					<li ng-class="{active:isActive('/uniforms')}"><a href="#/uniforms"><span class="icon icon-shield"></span> Uniforms</a></li>
					<li ng-class="{active:isActive('/students')}"><a href="#/students"><span class="icon icon-address-book"></span> Students</a></li>
					<?php if(isset($_SESSION['authorized']) && $_SESSION['authorized'] == 'admin') { ?>
						<li ng-class="{active:isActive('/users')}"><a href="#/users"><span class="icon icon-users"></span> Manage Users</a></li>
						<script>var isAdmin = true;</script>
					<?php } ?>
				</ul>
			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" ng-view>
			</div>
		</div>
	</div>

	<!-- App Dependencies -->
	<script src="../source/vendor/jquery/jquery.min.js"></script>
	<script src="../source/vendor/bootstrap/bootstrap.min.js"></script>
	<script src="../source/vendor/angular/angular.min.js"></script>

	<!-- Angular JS Dependencies -->
	<script src="../source/vendor/angular/angular-resource.min.js"></script>
	<script src="../source/vendor/angular/angular-route.js"></script>
	<script src="../source/vendor/angular/angular-messages.min.js"></script>
	<script src="../source/vendor/angular/angular-modal-service.js"></script>
	<script src="../source/vendor/angular/angular-animate.min.js"></script>
	<script src="../source/vendor/angular/directives/loading-bar.min.js"></script>

	<!-- AMA's Javascripts -->
	<script src="../source/javascripts/ama.js"></script>
	<script src="../source/javascripts/ama_controllers.js"></script>

	<?php if(isset($_SESSION['authorized']) && $_SESSION['authorized'] == 'admin') { ?>
	<!-- Admin Only -->
	<script src="../source/javascripts/admin.js"></script>
	<?php } ?>
</body>
</html>