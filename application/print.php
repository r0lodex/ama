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
				$sql = "SELECT stdn.id, stdn.name, stdn.matrix, stdn.course, (COUNT(abst.studentId)) AS absent_count, 
				(COUNT(abst.studentId) * unfm.credit) AS absent_credit FROM absent abst 
				JOIN student stdn ON stdn.id=abst.studentId JOIN uniform unfm ON unfm.id=abst.uniformId 
				WHERE abst.uniformId=:id GROUP BY abst.studentId";
				$dbc = Database();
				$qry = $dbc->prepare($sql);
				$qry->execute($data);
				$rows = $qry->fetchAll(PDO::FETCH_ASSOC);
				$dbc = null;

				$buff ='<div class="table-responsive"><div class="page-header"><h1><small>Absent Report</small><br>'.$_GET['title'].'
				</h1></div><table class="table table-bordered table-condensed">
				<thead><tr>
						<th>#</th>
						<th>Name</th>
						<th>Matrix</th>
						<th>Class</th>
						<th>Credit</th>
						<th>Absent Count</th>
					</tr></thead><tbody>';
				$i = 1;
				foreach($rows as $row){
					$buff.="<tr>
						<td>".$i."</td>
						<td>".$row['name']."</td>
						<td>".$row['matrix']."</td>
						<td>".$row['course']."</td>
						<td>".$row['absent_credit']."</td>
						<td>".$row['absent_count']."</td>
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