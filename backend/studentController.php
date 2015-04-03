<?php

switch($method) {
	case 'GET':
		$data['id'] = (isset($request[1])) ? $request[1] : null;
		$sql = "SELECT std.id,std.name,std.ic,std.matrix,uni.name AS uniform,std.course FROM student std JOIN uniform uni ON uni.id=std.uniform";
		$sql.= ($data['id'] != null) ? " WHERE std.id=:id" : " ";
		$dbc = Database();
		$qry = $dbc->prepare($sql);
		$qry->execute($data);
		$rows = $qry->fetchAll(PDO::FETCH_ASSOC);
		$dbc = null;
		if(sizeof($rows) < 2) {
			echo json_encode($rows[0]);
		}else{
			echo json_encode($rows);
		}
	break;

	case 'POST':
		foreach($data as $k => $v) {
			if(is_array($v)) {
				$data[$k] = $v[0];
			}
		}
		$sql ="INSERT INTO student (name, ic, matrix, uniform, course) VALUES (:name, :ic, :matrix, :uniform, :course)";
		$dbc = Database();
		$qry = $dbc->prepare($sql);
		$qry->execute($data);
		$dbc = null;
	break;

	case 'PUT':
		foreach($data as $k => $v) {
			if(is_array($v)) {
				$data[$k] = $v[0];
			}
		}
		$data['id'] = $request[1];
		$sql ="UPDATE student SET name=:name, ic=:ic, matrix=:matrix, uniform=:uniform, course=:course WHERE id=:id";
		$dbc = Database();
		$qry = $dbc->prepare($sql);
		$qry->execute($data);
		$dbc = null;
	break;

	case 'DELETE':
		$data = array("id" => $request[1]);
		$sql ="DELETE FROM student WHERE id=:id";
		$dbc = Database();
		$qry = $dbc->prepare($sql);
		$qry->execute($data);
		$dbc = null;
	break;
}