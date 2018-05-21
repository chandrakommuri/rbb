<?php
	require_once("db_connect.php");
	$id = $_GET["dept_id"];
	$result = mysqli_query($con, "select id,name from subject where dept_id='$id'");
	$subjects = array();
	if(mysqli_num_rows($result)>0)
	{
		while($row = mysqli_fetch_assoc($result))
		{
			$subjects[] = $row;
		}
		
	}
	echo json_encode($subjects);
?>