<?php
session_start();
include("../partials/connect.php");

if (isset($_POST["login"])) {
    $email = $_POST["email"];
    $password = $_POST["password"];
    $sql = "SELECT * FROM customers WHERE username='$email'AND password='$password'";
    $result = $connect->query($sql);
    $final = $result->fetch_assoc();

    $_SESSION['email'] = $final['username'];
    $_SESSION['password'] = $final['password'];

    $_SESSION['customerid'] = $final['id'];

    if ($email = $final["username"] and $password = $final["password"]) {
        header('location: ../cart.php');
    } else {
        echo "<script>
            alert('Credentials wrong')
            window.location.href='../customerforms.php'
        </script>";
    }
}
