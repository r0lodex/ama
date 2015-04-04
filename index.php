<?php
if(!isset($_SESSION)) {session_start();}
if(isset($_SESSION['authorized'])) {header('Location:application');}
?>

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
			<form id="login" method="POST" action="backend/router.php/auth/login">
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

<!--

	Aplikasi ini menggunakan teknologi dan framework berikut:

	BACKEND (Server)
	==================
		1. PHP (PDO)
			PDO bermaksud php data object.
			Adalah merupakan modul untuk menyambungkan php code dengan database.
			PDO adalah module yg terbaru dan diperbaiki berbanding mysql dan mysqlI.
			Maklumat berkenaan PDO boleh diperolehi melalui php manual

		2. MySQL
			MySQL adalah sebuah database open source berdasalkan SQL.
			Database ini boleh di-akses oleh php code menggunakan modul berikut: mysql/mysqli/PDO
			PDO adalah modul yg disarankan bagi tahun 2015 dan yg mendatang sehingga diberitahu sebaliknya kemudian

	FRONTEND (Browser/Client)
	=========================
		1. AngularJS 1.3.2
			AngularJS adalah framework SPA(Single Page Application)
			yang memudahkan penggunaan javascript terutamanya data-binding.
			Google Keyword: 'Javascript Data-Binding'

			Layari : http://angularjs.org

		2. Twitter Bootstrap 3.3
			Bootstrap adalah mobile-ready framework CSS yang memudahkan developer untuk
			menulis HTML tanpa perlu fikir sangat tentang CSS. Boleh lihat
			dokumentasi untuk maklumat lanjut. Kebanyakan modern web
			menggunakan framework ini.

			Cara Struktur HTML 		 : http://getbootstrap.com/css
			Cara Struktur Komponen	 : http://getbootstrap.com/components
			Cara Pengunaan Javascript: http://getbootstrap.com/javascript

		3. jQuery 1.10 : http://jquery.com
			Sebuah library yang simplify penggunaan javascript. Korang
			pun mesti tahu benda ni, kompom.

-->
