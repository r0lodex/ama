<?php

switch($method) {
	case 'GET':
		if(isset($request[2])) {
			switch($request[2]) {
				case 'absent':
				$data = array('id'=>$request[1]);
					$sql = "SELECT stdn.name, stdn.matrix, stdn.course, (COUNT(abst.studentId)) AS absent_count, 
					(COUNT(abst.studentId) * unfm.credit) AS absent_credit  FROM absent abst 
					JOIN student stdn ON stdn.id=abst.studentId JOIN uniform unfm ON unfm.id=abst.uniformId 
					WHERE abst.uniformId=:id GROUP BY abst.studentId";
					$dbc = Database();
					$qry = $dbc->prepare($sql);
					$qry->execute($data);
					$rows = $qry->fetchAll(PDO::FETCH_ASSOC);
					$dbc = null;
					if(sizeof($rows) > 1) {
						$out = $rows;
					}else{
						$out = $rows[0];
					}
				break;

				case 'record':
					$data = array('a'=>$_GET['accessKey']);
					$sql = "SELECT * FROM uniform WHERE accessKey=:a";
					$dbc = Database();
					$qry = $dbc->prepare($sql);
					$res = $qry->execute($data);
					if(!$res){
						header('HTTP/1.1 401 Unauthorized', true, 401);
					}

					$data = array('a'=>$request[1]);
					$sql = "SELECT * FROM student WHERE uniform=:a";
					$qry = $dbc->prepare($sql);
					$qry->execute($data);
					$rows = $qry->fetchAll(PDO::FETCH_ASSOC);
					$dbc = null;
					if(sizeof($rows) > 1) {
						$out = $rows;
					}else{
						$out = $rows[0];
					}
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