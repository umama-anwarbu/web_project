<?php
	include "dbconnect.php";
	if ($_SERVER["REQUEST_METHOD"] == "POST") {
		$name=$_POST["name"];
		$description=$_POST["description"];
		$quantity=$_POST["quantity"];
		$price=$_POST["price"];
		
		
		$sql="INSERT INTO product(id, name, description, quantity, price)
		values(NULL, '$name', '$description', '$quantity', '$price')";
		$result=$conn->query($sql);
		if($result)
		{
			//echo "Success";
			header("Location:applicant_list.php");
		}
		else
		{
			echo "Application failed";
		}
	}
	
?>