<?php
$id = $_POST['id'];
$name = $_POST['name'];
$designation = $_POST['description'];
$salary= $_POST['quantity'];
$phone = $_POST['price'];


$server_name = "localhost";
$user_name = "root";
$password = "";
$database_name = "shusmi";

$conn = new mysqli($server_name, $user_name, $password, $database_name);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "UPDATE instructor SET name='$name', designation='$description', salary='$quantity', phone='$price' WHERE id=$id";

if ($conn->query($sql) === TRUE) {
    echo "Record updated successfully";
} else {
    echo "Error updating record: " . $conn->error;
}

$conn->close();

header("Location: courses.php");
exit();
?>
