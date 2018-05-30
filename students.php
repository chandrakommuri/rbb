<?php
	require_once("db_connect.php");
	$term = $_GET["term"];
	$result = mysqli_query($con, "select rollno, sname from student where sname like '%$term%'");
	$students = array();
	
	while($row = mysqli_fetch_assoc($result))
	{
		$student = array("rollno" => $row['rollno'], "value" => $row['sname']);
		$students[] = $student;
	}
	echo json_encode($students);
?>