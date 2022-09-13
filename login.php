<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <title>Perpustakaan</title>
</head>
<body>
    <div class="row g-0" style="margin-top:90px;">
    <div class="col-md-4"></div>
    <div class="col-md rounded text-dark bg-light" style="box-shadow: 1px 1px 8px; padding:20px" >
        <form action="proses_login.php" method="post">
          <h3 align="center">Masuk</h3>
          Username:
          <input type="text" name="username" value="" class="form-control">
          password:
          <input type="password" name="password" class="form-control"><br>
         <input type="submit" name="login" class="btn btn-success" value="Login" style="">
      </form>
      <form action="register.php" method="post">
          <h3 align="center">Daftar Akun</h3>
          <br>
         <input type="submit" name="login" class="btn btn-success" value="Register" style="">
      </form>
    </div>
    <div class="col-md"></div>
  
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>
</html>
<?php 
include 'footer.php'; 
?>