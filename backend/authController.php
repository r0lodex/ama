<?php

switch($request[1]) {
	case 'login':
		$sql = "SELECT * FROM user WHERE username=:username AND password=:password";
		$dbc = Database();
		$qry = $dbc->prepare($sql);
		$qry->execute($_POST);
		$row = $qry->fetch(PDO::FETCH_ASSOC);
		$dbc = null;
		if($row) {
			$_SESSION['authorized'] = $row['type'];
			header('Location: ../../../application');
		}else{
			header('Location: ../../../');
		}
	break;

	case 'logout':
		unset($_SESSION);
		session_destroy();
		header('Location: ../../../');
	break;
}