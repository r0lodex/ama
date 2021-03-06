<!DOCTYPE html>
<html>
<head>
	<title>AMA App Dashboard</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="../source/stylesheets/ama.css">
	<link rel="stylesheet" type="text/css" href="../source//vendor/angular/directives/loading-bar.min.css">
</head>
<body>
	<div class="container">
		<?php
			include '../backend/database.php';
			if(isset($_GET['uniformId'])) {
				$data = array('id'=>$_GET['uniformId']);
				$sql = "SELECT stdn.name, stdn.matrix, stdn.course, unfm.credit, COUNT(abst.studentId) AS total_absent,
						(unfm.credit * COUNT(abst.studentId)) AS total_credit, GROUP_CONCAT(' ',abst.day)AS day FROM absent abst 
						JOIN student stdn ON stdn.id=abst.studentId JOIN uniform unfm on unfm.id=abst.uniformId
						WHERE abst.uniformId=:id GROUP BY abst.studentId ORDER BY stdn.name ASC";
				$dbc = Database();
				$qry = $dbc->prepare($sql);
				$qry->execute($data);
				$rows = $qry->fetchAll(PDO::FETCH_ASSOC);
				$dbc = null;

				$buff ='<div class="table-responsive"><div class="page-header"><h1><small>Absent Report</small><br>'.$_GET['title'].'
				</h1></div><table class="table table-bordered table-condensed">
				<thead><tr>
						<th>#</th>
						<th>Student<br>Name</th>
						<th>Student<br>Matrix</th>
						<th>Student<br>Class</th>
						<th>Uniform<br>Credit</th>
						<th>Absent<br>Count</th>
						<th>Absent<br>Credit</th>
						<th>Absent<br>Date(s)</th>
					</tr></thead><tbody>';
				$i = 1;
				foreach($rows as $row){
					$buff.="<tr>
						<td>".$i."</td>
						<td>".$row['name']."</td>
						<td>".$row['matrix']."</td>
						<td>".$row['course']."</td>
						<td>".$row['credit']."</td>
						<td>".$row['total_absent']."</td>
						<td>".$row['total_credit']."</td>
						<td>".$row['day']."</td>
					</tr>";
					$i++;
				}

				$buff.='</tbody></table></div>';
				echo $buff;
			}

		?>
	</div>
</body>
</html>
<script type="text/javascript">
	document.addEventListener('DOMContentLoaded', function(event) {
		window.print();
	})
</script>