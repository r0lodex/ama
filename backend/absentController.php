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
			$out = array('absent' => $rows[0]);
		}else{
			$out = array('absent' => $rows);
		}
		echo json_encode($out);
	break;

	case 'POST':
		foreach($data as $k => $v) {
			if(is_array($v)) {
				$data[$k] = $v[0];
			}
		}
		$sql ="INSERT INTO absent (student_id, uniform_id, day, time) VALUES (:student_id, :uniform_id, :day, :time)";
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
		$sql ="UPDATE absent SET student_id=:student_id, uniform_id=:uniform_id, day=:day, time=:time WHERE id=:id";
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
