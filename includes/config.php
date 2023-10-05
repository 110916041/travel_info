<?php 
$dsn = "mysql:dbname=tms;host=localhost;port=3308";
$username = "root";
$password = "910526";


try
{
$dbh = new PDO($dsn, $username, $password);

}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}
?>