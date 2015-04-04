<?php

switch($method) {
	case 'GET':
		$data['id'] = (isset($request[1])) ? $request[1] : null;
		$sql = "SELECT std.id,std.name,std.ic,std.matrix,uni.name AS uniform,std.course FROM student std JOIN uniform uni ON uni.id=std.uniform";
		if($data['id'] != null){
			$sql .= " WHERE std.id=:id";
			$sql2 = "SELECT * FROM uniform";
		}
		$dbc = Database();
		$qry = $dbc->prepare($sql);
		$qry->execute($data);
		$rows = $qry->fetchAll(PDO::FETCH_ASSOC);

		if(isset($sql2)) {
			$qry = $dbc->query($sql2);
			$res = $qry->fetchAll(PDO::FETCH_ASSOC);
			$out = $rows[0];
		}else{
			$out = $rows;
		}
		$dbc = null;
		echo json_encode($out);
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