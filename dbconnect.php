<?php 
// isi nama host, username mysql, dan password mysql anda
$conn = mysqli_connect("localhost","root","","inven");

$dbHost     = "localhost"; 
$dbUsername = "root"; 
$dbPassword = ""; 
$dbName     = "inven"; 

 
// Create database connection 
$db = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName); 
 
// Check connection 
if ($db->connect_error) { 
    die("Connection failed: " . $db->connect_error); 
}
?>