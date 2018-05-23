<?php
	require_once("db_connect.php");
	$rollno = $_GET["rollno"];
	$result = mysqli_query($con, "select * from student where rollno='$rollno'");
	if(mysqli_num_rows($result)>0)
	{
		$student = mysqli_fetch_assoc($result);
		echo json_encode($student);
	}
	else
	{
		echo "false";
	}
?>