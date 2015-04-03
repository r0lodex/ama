<?php
// start session is not exists
if(!isset($_SESSION)) {	session_start(); }

// database connection function
include('database.php');

// inspect incoming request
$method = $_SERVER['REQUEST_METHOD'];
$request = explode("/", substr(@$_SERVER['PATH_INFO'], 1));

// retrieve request body/data
$json = file_get_contents("php://input");
$data = json_decode($json,true);

// routing the request
switch($request[0]) {

	case 'user':
		// http://<domain>/backend/router.php/user
 		include 'userController.php';
	break;

	case 'absent':
		// http://<domain>/backend/router.php/absent
		// 
		include 'absentController.php';
	break;

	case 'student':
		// http://<domain>/backend/router.php/student
		include 'studentController.php';
	break;

	case 'uniform':
		// http://<domain>/backend/router.php/uniform
		include 'uniformController.php';
	break;

	default:
		// could be used with chrome POSTMAN to test data and method (GET, POST, PUT, DELETE)
		echo $method;var_dump($request);var_dump($data);var_dump($_GET);
	break;

}

exit;
