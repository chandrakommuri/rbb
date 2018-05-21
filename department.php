<?php
	require_once("db_connect.php");
	$result = mysqli_query($con, "select id,name from department");
	$departments = array();
	if(mysqli_num_rows($result)>0)
	{
		while($row = mysqli_fetch_assoc($result))
		{
			$departments[] = $row;
		}
		
	}
	echo json_encode($departments);
?>