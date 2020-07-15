<?php
$con=mysqli_connect("127.0.0.1","root","","vase");
if (!$con)
{
die('Could not connect: ' . mysql_error());
}
$sql = "CREATE TABLE ForEvent (EventTime DATETIME );"; // Query for creating a table
mysql_db_query($sql);
echo "Table has been created.";
mysql_close($con);
?>
