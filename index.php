<!DOCTYPE html>
<html>
<?php include 'source/templates/head_content.tpl'; ?>
<body>
	<div class="container">
		<section id="home">
			<div class="text-center">
				<h1 class="light">
					<span class="icon icon-logo"></span><br>AMA
				</h1>
				<p>Co-Curiculum Attendance System</p>
			</div>
			<form id="login" method="POST" action="application/index.php">
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon"><span class="icon icon-user2"></span></span>
						<input class="form-control" type="text" name="username" placeholder="Username" required>
					</div>
				</div>
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon"><span class="icon icon-lock2"></span></span>
						<input class="form-control" type="password" name="password" placeholder="Password" required>
					</div>
				</div>
				<input class="btn btn-dark center-block" type="submit" value="Login">
			</form>
			<hr>
			<section class="text-center text-muted">
				<small>
					A final-year-project by PMJ Students<br>
					<a href="about.php">About The Team</a> &bull; <a href="#">Disclaimer</a>
				</small>
			</section>
		</section>
	</div>
</body>
</html>