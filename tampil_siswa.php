<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <title></title>
<style>
</style>
</head>
<body>
<?php include 'navbar.php';?>
    <h3>Data Siswa</h3>
    <table class="table table-hover table-striped">
        <thead>
            <tr>
                <th>no</th>
                <th>nama siswa</th>
                <th>tanggal lahir</th>
                <th>alamat</th>
                <th>gender</th>
                <th>username</th>
                <th>kelas</th>
                <th>aksi</th>
            </tr>
        </thead>
        <tbody>
            <?php 
            include "koneksi.php";
            $qry_siswa=mysqli_query($conn,"select * from siswa1 join kelas1 on kelas1.id_kelas=siswa1.id_kelas");
            $no=0;
            while($data_siswa=mysqli_fetch_array($qry_siswa)){
            $no++;?>
    <tr>              
    <td><?=$no?></td>
    <td><?=$data_siswa['nama_siswa']?></td>
     <td><?=$data_siswa['tanggal_lahir']?></td>
     <td><?=$data_siswa['alamat']?></td>
     <td><?=$data_siswa['gender']?> </td> 
     <td><?=$data_siswa['username']?></td>
     <td><?=$data_siswa['nama_kelas']?></td> 
     <td>
    <a href="ubah_siswa.php?id_siswa=<?=$data_siswa['id_siswa']?>" class="btn btn-success">Ubah</a> | <a href="hapus.php?
    id_siswa=<?=$data_siswa['id_siswa']?>" onclick="return 
    confirm('Apakah anda yakin menghapus data ini?')" class="btn btn-danger">Hapus</a></td>
    </tr>
    <?php 
 }
    ?>
</tbody>
    </table>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<a href="tambah_siswa.php"><input type="button" name='' value="Add Siswa" class="btn btn-danger"></a>
</body>
</html>