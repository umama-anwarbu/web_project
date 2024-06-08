<?php
	include "header.php";

	
$server_name="localhost";
$user_name="root";
$password="";
$database_name="shusmi";

$conn= new mysqli($server_name,$user_name,$password,$database_name);

if($conn->connect_error){
    die("Connection fail".$conn->connect_error);
}

$sql = "SELECT * FROM product";
$result = $conn->query($sql);


$conn->close();
?>


<html>
	<head>
		<title>data</title>
		<link rel="stylesheet" href="style.css">
		<style>
			span a{
					text-decoration: none;
					text-align: center;
					background-color: #04AA6D;
					color: white;
					padding: 8px 12px;
					border-radius: 5px;
}
.align_button{
	margin-left: 45%;
}
		</style>
	</head>
	<body>
		<h1 align="center">Product List</h1>
		<table>
			<tr>
				<th>Name</th>
				<th>Description</th>
				<th>Quantity</th>
				<th>Price</th>
				
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			
		<?php 
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc())
			{ 
				$id=$row["id"];
				echo "<tr>";
					echo "<td>". $row["name"]."</td>";
					echo "<td>". $row["description"]."</td>";
					echo "<td>". $row["quantity"]."</td>";
					echo "<td>". $row["price"]."</td>";
					
					echo "<td>"."<a href='update.php?editid=$id'>Edit</a>"."</td>";
					echo "<td>"."<a href='delete.php?delid=$id'>Delete</a>"."</td>";
					echo "</tr>";
			}
		}
		else echo "0 results";
		?>
			
		</table>
		
	</body>
</html>

