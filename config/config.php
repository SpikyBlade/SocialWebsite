<?php
ob_start(); //Turns on output buffering
session_start();

$timezone = date_default_timezone_set("Europe/London");

$con = mysqli_connect("eu-cdbr-west-03.cleardb.net", "bbe4f342674d9d", "c576ea98", "heroku_7131887b975926e"); //Connection variable

if(mysqli_connect_errno())
{
	echo "Failed to connect: " . mysqli_connect_errno();
}

?>