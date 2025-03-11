<?php

$server ="localhost";
$user ="root";
$pass="";
$dbname="dball";

$conn = mysqli_connect($server,$user,$pass,$dbname);

if(!$conn){
    echo "<script>alert('Error')</script>";
}
else{
}

?>