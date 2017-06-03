<?php
$conn = mysql_connect("localhost:3306","root","") or die("could not connect to server");
 mysql_select_db("shop",$conn) or die("could not connect to database");
?>
