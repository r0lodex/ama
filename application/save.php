<?php
/** starting session*/
session_start();

/** Error reporting */
error_reporting(E_ALL);

/** Database connection */
include '../backend/database.php';

/** PHPExcel */
include '../backend/PHPExcel.php';

/** PHPExcel_Writer_Excel2007 */
include '../backend/PHPExcel/Writer/Excel2007.php';

// set styling
$xStyle = array('fill'=>array('type'=>PHPExcel_Style_Fill::FILL_SOLID, 'color'=>array('rgb' => '2299DD')), 'font'=>array('bold'=>true));
$xBorder = array('borders'=>array('outline'=>array('style'=>PHPExcel_Style_Border::BORDER_THIN)));

// Create new PHPExcel object
$objPHPExcel = new PHPExcel();

// Set properties
$objPHPExcel->getProperties()->setCreator($_SESSION['authorized']);
$objPHPExcel->getProperties()->setLastModifiedBy($_SESSION['authorized']);
$objPHPExcel->getProperties()->setTitle("Office 2007 XLSX Test Document");
$objPHPExcel->getProperties()->setSubject("Office 2007 XLSX Test Document");

// retrieve data
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

// Add to excel
$objPHPExcel->setActiveSheetIndex(0);
$objPHPExcel->getActiveSheet()->SetCellValue('B2', '#')->getStyle('B2')->applyFromArray($xBorder);
$objPHPExcel->getActiveSheet()->SetCellValue('C2', 'Student Name')->getStyle('C2')->applyFromArray($xBorder);
$objPHPExcel->getActiveSheet()->SetCellValue('D2', 'Student Matrix')->getStyle('D2')->applyFromArray($xBorder);
$objPHPExcel->getActiveSheet()->SetCellValue('E2', 'Student Class')->getStyle('E2')->applyFromArray($xBorder);
$objPHPExcel->getActiveSheet()->SetCellValue('F2', 'Uniform Credit')->getStyle('F2')->applyFromArray($xBorder);
$objPHPExcel->getActiveSheet()->SetCellValue('G2', 'Absent Count')->getStyle('G2')->applyFromArray($xBorder);
$objPHPExcel->getActiveSheet()->SetCellValue('H2', 'Absent Credit')->getStyle('H2')->applyFromArray($xBorder);
$objPHPExcel->getActiveSheet()->SetCellValue('I2', 'Absent Date(s)')->getStyle('I2')->applyFromArray($xBorder);

// add some styling
$objPHPExcel->getActiveSheet()->getStyle('B2:I2')->applyFromArray($xStyle);

$cnt = 1;
$idx = 3;
foreach($rows as $row) {
	$objPHPExcel->getActiveSheet()->SetCellValue('B'.$idx, $cnt)->getStyle('B'.$idx)->applyFromArray($xBorder);
	$objPHPExcel->getActiveSheet()->SetCellValue('C'.$idx, $row['name'])->getStyle('C'.$idx)->applyFromArray($xBorder);
	$objPHPExcel->getActiveSheet()->SetCellValue('D'.$idx, $row['matrix'])->getStyle('D'.$idx)->applyFromArray($xBorder);
	$objPHPExcel->getActiveSheet()->SetCellValue('E'.$idx, $row['course'])->getStyle('E'.$idx)->applyFromArray($xBorder);
	$objPHPExcel->getActiveSheet()->SetCellValue('F'.$idx, $row['total_absent'])->getStyle('F'.$idx)->applyFromArray($xBorder);
	$objPHPExcel->getActiveSheet()->SetCellValue('G'.$idx, $row['total_credit'])->getStyle('G'.$idx)->applyFromArray($xBorder);
	$objPHPExcel->getActiveSheet()->SetCellValue('H'.$idx, $row['day'])->getStyle('H'.$idx)->applyFromArray($xBorder);
	$objPHPExcel->getActiveSheet()->SetCellValue('I'.$idx, $row['credit'])->getStyle('I'.$idx)->applyFromArray($xBorder);
	$cnt++;
	$idx++;
}

// resizing column
for($a='B';$a<'J';$a++) {
	$objPHPExcel->getActiveSheet()->getColumnDimension($a)->setAutoSize(true);
}


// Rename sheet
$objPHPExcel->getActiveSheet()->setTitle($_GET['title'].'_report');

header("Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
header("Content-Disposition: attachment; filename=\"".$_GET['title']."_report.xlsx\"");
header("Cache-Control: max-age=0");
ob_clean();

//$excelType = 'Excel5';
$excelType = 'Excel2007';
$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, $excelType);
$objWriter->save('php://output');
exit;