<?php
	require_once("db_connect.php");
	$rollno = $_GET["rollno"];
	$result = mysqli_query($con, "select sname from student where rollno='$rollno'");
	if(mysqli_num_rows($result)>0)
	{
		$row = mysqli_fetch_array($result);
		echo "{\"name\":\"$row[0]\"}";
	}
	else
	{
		echo "{\"error\":\"Invalid Roll No\"}";
	}
?>