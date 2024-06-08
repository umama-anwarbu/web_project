<?php
$server_name = "localhost";
$user_name = "root";
$password = "";
$database_name = "shusmi";

$conn = new mysqli($server_name, $user_name, $password, $database_name);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$id = $_GET['editid'];
$sql = "SELECT * FROM product WHERE id=$id";
$result = $conn->query($sql);
$row = $result->fetch_assoc();

$conn->close();
?>

<html>
    <head>
        <title>Update product</title>
        <style>
            div { background-color: #f2f2f2; width: 30%; margin: auto; border-radius: 7px; padding: 16px; }
            input[type=text], input[type=email], input[type=date], input[type=number] {
                width: 100%; padding: 14px 8px; margin: 5px; border-radius: 5px;
            }
            input[type=submit] {
                width: 100%; padding: 14px 8px; margin: 5px; border-radius: 5px;
                background-color: #2ecc71; color: #ffffff; font-size: 20px;
            }
            input[type=submit]:hover {
                background-color: #27ae60; color: #ffffff;
            }
        </style>
    </head>
    <body>
        <div>
            <h1>Update Product</h1>
            <form action="action_update.php" method="POST">
                <input type="hidden" name="id" value="<?php echo $row['id']; ?>">
                <label>Name</label>
                <input type="text" name="name" value="<?php echo $row['name']; ?>">
                <label>Description</label>
                <input type="text" name="description" value="<?php echo $row['description']; ?>">
                <label>Quantity</label>
                <input type="text" name="quantity" value="<?php echo $row['quantity']; ?>">
                <label>Price</label>
                <input type="text" name="price" value="<?php echo $row['price']; ?>">
               
                <input type="submit" value="Update">
            </form>
        </div>
    </body>
</html>
