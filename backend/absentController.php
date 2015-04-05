<?php

switch($method) {
	case 'GET':
		$data['id'] = (isset($request[1])) ? $request[1] : null;
		$sql = ($data['id'] != null) ? "SELECT * FROM absent WHERE id=:id" : "SELECT * FROM absent";
		$dbc = Database();
		$qry = $dbc->prepare($sql);
		$qry->execute($data);
		$rows = $qry->fetchAll(PDO::FETCH_ASSOC);
		$dbc = null;
		if($data['id'] != null) {
			$out = $rows[0];
		}else{
			$out = $rows;
		}
		echo json_encode($out);
	break;

	case 'POST':
		foreach($data as $k => $v) {
			if(is_array($v)) {
				$data[$k] = $v[0];
			}
		}
		$data['day'] = date('d/m/Y');
		$sql ="INSERT INTO absent (studentId, uniformId, day) SELECT id, uniform, :day FROM student 
				WHERE id=:id AND NOT EXISTS(SELECT * FROM absent WHERE day=:day)";
		$dbc = Database();
		$qry = $dbc->prepare($sql);
		$qry->execute($data);
		$lid = $dbc->lastInsertId();
		$dbc = null;
		echo json_encode(array('aid' => $lid));
	break;

	case 'PUT':
		foreach($data as $k => $v) {
			if(is_array($v)) {
				$data[$k] = $v[0];
			}
		}
		$data['id'] = $request[1];
		$sql ="UPDATE absent SET studentId=:studentId, uniformId=:uniformId, day=:day WHERE id=:id";
		$dbc = Database();
		$qry = $dbc->prepare($sql);
		$qry->execute($data);
		$dbc = null;
	break;

	case 'DELETE':
		$data = array("id" => $request[1]);
		$sql ="DELETE FROM absent WHERE id=:id";
		$dbc = Database();
		$qry = $dbc->prepare($sql);
		$qry->execute($data);
		$dbc = null;
	break;
}
