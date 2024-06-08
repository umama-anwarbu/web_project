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
	<div class="pre">
		<h2> Buy and Sell Beauty Products</h2>
	
		<p> This is an online marketplace where You can buy your essential beauty products and also can use it for selling your own products</p>
		<h4> To Sell Your Products:</h4>
		
		<ul>
		<li> Products have to be organic. </li>
		<li> Give products proper descriptions.</li>
		<li> Contact with Clients directly.</li>
		</ul>
	
		<h4> To Order Products: </h4>
		<ul>
		<li> You have to submit the order form correctly</li>
		<li>Purchased products can be exchanged within 7 days</li>
		<li> Products will be delivery within 15days after confirmed your order</li>
		</ul>
		<h5> Contact:</h5>
		<ul>
	     <li> Email: www.stshusmita23@gmail.com</li>
	     <li>Phone: +880181667664, +8801915675787</li>
	      </ul>
	</div>
		

		
<?php
	include "footer.php";
?>

