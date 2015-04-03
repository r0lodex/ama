<?php

switch($method) {
	case 'GET':
		$sql = (isset($data['id'])) ? "SELECT * FROM student WHERE id=:id" : "SELECT * FROM student";
		$dbc = Database();
		$qry = $dbc->prepare($sql);
		$qry->execute($data);
		$rows = $qry->fetchAll(PDO::FETCH_ASSOC);
		$dbc = null;
		echo json_encode($rows);
	break;

	case 'POST':
		$sql ="INSERT INTO (name, ic, matrix, uniform, course) VALUES (:name, :ic, :matrix, :uniform, :course)";
		$dbc = Database();
		$qry = $dbc->prepare($sql);
		$qry->execute($data);
		$dbc = null;
	break;

	case 'PUT':
		$sql ="UPDATE student SET name=:name, ic=:ic, matrix=:matrix, uniform=:uniform, course=:course WHERE id=:id";
		$dbc = Database();
		$qry = $dbc->prepare($sql);
		$qry->execute($data);
		$dbc = null;
	break;

	case 'DELETE':
		$sql ="DELETE FROM student WHERE id=:id";
		$dbc = Database();
		$qry = $dbc->prepare($sql);
		$qry->execute($data);
		$dbc = null;
	break;
}