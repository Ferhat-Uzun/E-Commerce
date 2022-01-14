<?php
include("../partials/connect.php");
$newid= $_GET["delete_id"];

$sql="DELETE FROM products WHERE id= '$newid'";

if(mysqli_query($connect,$sql)){
    header("location: productsshow.php");
}
else{
    echo "Not deleted";
}
