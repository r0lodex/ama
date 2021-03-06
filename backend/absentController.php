<?php

switch($method) {
	case 'GET':
		if(isset($_GET['studentId'])) {
			$sql = "SELECT * FROM absent WHERE studentId=:id";
			$dbc = Database();
			$qry = $dbc->prepare($sql);
			$qry->execute(array('id'=>$_GET['studentId']));
			$rows = $qry->fetchAll(PDO::FETCH_ASSOC);
			$dbc = null;
			$out = $rows;
		}elseif(isset($_GET['uniformId'])) {
			$sql = "SELECT * FROM absent WHERE uniformId=:id and day=:day";
			$dbc = Database();
			$qry = $dbc->prepare($sql);
			$qry->execute(array('id'=>$_GET['uniformId'], 'day'=>date('d/m/Y')));
			$rows = $qry->fetchAll(PDO::FETCH_ASSOC);
			$dbc = null;
			$out = $rows;
		}else{
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
		}
		echo json_encode($out);
	break;

	case 'POST':
		foreach($data as $k => $v) {
			if(is_array($v)) {
				$data[$k] = $v[0];
			}
		}
		$day = date('d/m/Y');
		$id  = $data['id'];
		$sql ="INSERT INTO absent (studentId, uniformId, `day`) SELECT id, uniform, '$day' FROM student WHERE id=$id AND (NOT EXISTS(SELECT * FROM absent WHERE `day`='$day' AND studentId=$id))";
		$dbc = Database();
		$dbc->query($sql);
		$dbc = null;
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
