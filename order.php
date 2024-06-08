<?php
	include "header.php";
	
	
	
	
?>		

<style>
body {
  background-image: url('p.png');
}
</style>
	<div class="header3">
 
		<h3 align="center">Order Now</h3>
	    <form action="" method="">
		
			<label> Your Name</label>
			<input type="text" name="name" placeholder="Enter Your Name">
			<label> Address<lebel>
			<input type="text" name="address" placeholder="Enter delivery Location">
			<label>Email</label>
			<input type="text" name="email" placeholder=" Enter Your email">
			<label>Phone</label>
			<input type="text" name="phone" placeholder="Enter Your phone">
			<lebel>Payment:<lebel>
<input type="radio" Name="option">
<lebel>Cash on delivery</lebel>
<input type="radio" Name="option">
<lebel>Online Payment</lebel>
 <br> <br>
			<label>Ordered date</label>
			<input type="date" name="od">
			<lebel for=" Course" > Choose Product</lebel>
<select id="product">
<option>Mamaearth Facewash</option>
<option>Pantene Daily Moisture Renewal Shampoo</option>
<option> Dove Hair Therapy Conditioner</option>
<option>Mamaearth Vitamin C Face Mask</option>
<option> Mario Badescu Clay Face Mask Skin</option>

</select> <br><br>
			
			</select>
			<input type="submit" value="Submit">
		  </form>
	</div>
	</body>
	</html>
	
<?php
	include "footer.php";
?>


