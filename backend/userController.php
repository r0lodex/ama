<?php

switch($method) {
	case 'GET':
		$data['id'] = (isset($request[1])) ? $request[1] : null;
		$sql = ($data['id'] != null) ? "SELECT * FROM user WHERE id=:id" : "SELECT * FROM user";
		$dbc = Database();
		$qry = $dbc->prepare($sql);
		$qry->execute($data);
		$rows = $qry->fetchAll(PDO::FETCH_ASSOC);
		$dbc = null;
		echo json_encode($rows);
	break;

	case 'POST':
		$sql ="INSERT INTO user (username, password, name, email, phone) VALUES (:username, :password, :name, :email, :phone)";
		$dbc = Database();
		$qry = $dbc->prepare($sql);
		$qry->execute($data);
		$dbc = null;
	break;

	case 'PUT':
		$data['id'] = $request[1];
		$sql ="UPDATE user SET username=:username, password=:password, name=:name, email=:email, phone=:phone WHERE id=:id";
		$dbc = Database();
		$qry = $dbc->prepare($sql);
		$qry->execute($data);
		$dbc = null;
	break;

	case 'DELETE':
		$data = array("id" => $request[1]);
		$sql ="DELETE FROM user WHERE id=:id";
		$dbc = Database();
		$qry = $dbc->prepare($sql);
		$qry->execute($data);
		$dbc = null;
	break;
}