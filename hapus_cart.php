<?php
session_Start();
unset($_SESSION['cart'][$_GET['id']]);
header('location: keranjang.php');
?>