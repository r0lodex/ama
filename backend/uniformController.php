<?php

switch($method) {
	case 'GET':
		$data['id'] = (isset($request[1])) ? $request[1] : null;
		$sql = ($data['id'] != null) ? "SELECT * FROM uniform WHERE id=:id" : "SELECT * FROM uniform";
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
		$sql ="INSERT INTO uniform (name) VALUES (:name)";
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
		$sql ="UPDATE uniform SET name=:name WHERE id=:id";
		$dbc = Database();
		$qry = $dbc->prepare($sql);
		$qry->execute($data);
		$dbc = null;
	break;

	case 'DELETE':
		$data = array("id" => $request[1]);
		$sql ="DELETE FROM uniform WHERE id=:id";
		$dbc = Database();
		$qry = $dbc->prepare($sql);
		$qry->execute($data);
		$dbc = null;
	break;
}