<?php

switch($method) {
	case 'GET':
		if(isset($request[2])) {
			switch($request[2]) {
				case 'absent':
				$data = array('id'=>$request[1]);
					$sql = "SELECT stdn.name, stdn.matrix, stdn.course, (COUNT(abst.student_id)) AS absent_count, 
					(COUNT(abst.student_id) * unfm.credit) AS absent_credit  FROM absent abst 
					JOIN student stdn ON stdn.id=abst.student_id JOIN uniform unfm ON unfm.id=abst.uniform_id 
					WHERE abst.uniform_id=:id GROUP BY abst.student_id";
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
					$data = array('a'=>$request[1]);
					$sql = "SELECT * FROM student WHERE uniform=:a";
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
		$sql ="INSERT INTO uniform (name, credit) VALUES (:name, :credit)";
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
		$sql ="UPDATE uniform SET name=:name, credit=:credit WHERE id=:id";
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