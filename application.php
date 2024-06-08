<?php
	include "header.php";
	include "dbconnect.php";
	
	$sql="SELECT * FROM product";
	$result=$conn->query($sql);
	
?>		
<style>
body {
  background-image: url('p.png');
}
</style>
	<div class="apply">
		<h3 align="center">Products Form</h3>
	    <form action="application_action.php" method="POST">
		
			<label>Product Name</label>
			<input type="text" name="name" placeholder=" Enter Product Name">
			<label>Description</label>
			<input type="text" name="description" placeholder=" Enter Product Description">
			<label>Quantity</label>
			<input type="text" name="quantity" placeholder="Enter Product Quantity">
			<label>Price</label>
			<input type="text" name="price" placeholder="Enter Product Price">
			
			</select>
			<input type="submit" value="Submit">
		  </form>
	</div>
	
<?php
	include "footer.php";
?>


