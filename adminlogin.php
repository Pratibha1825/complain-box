<?php
$name="dcs";
$pass="mgsu";

if($name=='dcs' && $pass=='mgsu')
{
	echo "<script>window.location.assign('afteradminlogin.php');</script>";
}
else
{
	readfile('adminlogin2.html');
}


?>