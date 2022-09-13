<?php 
include "header.php";
?>
<br>
<h2>Daftar Buku</h2>
<br>
<div class="row">
    
    <?php 
    include "koneksi.php";
    $qry_buku=mysqli_query($conn,"select * from buku1");
    while($data_buku=mysqli_fetch_array($qry_buku)){
        ?>
        <div class="col-md-3">
            <div class="card" >
                <img src="images_buku/<?=$data_buku['foto']?>" style="width:250px;height:300px; margin-left:27px; margin-top:30px;" class="card-img-top">
                <div class="card-body">
                    <h5 class="card-title"><?=$data_buku['nama_buku']?></h5>
                    <p class="card-text"><?=substr($data_buku['deskripsi'], 0,30)?></p>
                    <a href="pinjam_buku.php?id_buku=<?=$data_buku['id_buku']?>" class="btn btn-primary">Pinjam</a>
                </div>
            </div> 
        </div>
        <?php
        }
        ?>
        </div>
        <br>
        <a href="tambah_buku.php"><input type="submit" name="simpan" value="Tambah Buku" class="btn btn-warning"></a>
        <br>
        <?php 
        include "footer.php";
        ?>