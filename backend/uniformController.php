<?php

switch($method) {
	case 'GET':
		if(isset($request[2])) {
			switch($request[2]) {
				case 'report':
				$data = array('id'=>$request[1]);
					$sql = "SELECT stdn.id, stdn.name, stdn.matrix, stdn.course, (COUNT(abst.studentId)) AS absent_count, 
					(COUNT(abst.studentId) * unfm.credit) AS absent_credit FROM absent abst 
					JOIN student stdn ON stdn.id=abst.studentId JOIN uniform unfm ON unfm.id=abst.uniformId 
					WHERE abst.uniformId=:id GROUP BY abst.studentId";
					$dbc = Database();
					$qry = $dbc->prepare($sql);
					$qry->execute($data);
					$rows = $qry->fetchAll(PDO::FETCH_ASSOC);
					$dbc = null;
					$out = $rows;
				break;

				case 'record':
					$data = array('a'=>$_GET['accessKey'], 'b'=>$request[1]);
					$sql = "SELECT * FROM uniform WHERE accessKey=:a AND id=:b";
					$dbc = Database();
					$qry = $dbc->prepare($sql);
					$qry->execute($data);
					if(!$qry->rowCount()){
						header('HTTP/1.1 401 Unauthorized', true, 401);
						exit;
					}

					$data = array('a'=>$request[1]);
					$sql = "SELECT DISTINCT stdn.* FROM student stdn WHERE stdn.uniform=:a";
					$qry = $dbc->prepare($sql);
					$qry->execute($data);
					$rows = $qry->fetchAll(PDO::FETCH_ASSOC);
					$out['student'] = $rows;

					$data = array('a'=>$request[1], 'b'=>date('d/m/Y'));
					$sql = "SELECT * FROM absent WHERE uniformId=:a AND day=:b";
					$qry = $dbc->prepare($sql);
					$qry->execute($data);
					$rows = $qry->fetchAll(PDO::FETCH_ASSOC);
					$out['absent'] = $rows;
					$dbc = null;
				break;
			}
		}else{
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
		}
		echo json_encode($out);
	break;

	case 'POST':
		foreach($data as $k => $v) {
			if(is_array($v)) {
				$data[$k] = $v[0];
			}
		}
		$sql ="INSERT INTO uniform (name, credit,accessKey) VALUES (:name, :credit, :accessKey)";
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
		$sql ="UPDATE uniform SET name=:name, credit=:credit, accessKey=:accessKey WHERE id=:id";
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