<?php
//include('dbconnected.php');
include('koneksi.php');


$nama_ruang = $_POST['nama_ruang'];
$kode_ruang = $_POST['kode_ruang'];

    ///query update
$query = mysqli_query($koneksi,"INSERT INTO `ruang` (`id_ruang`, `nama_ruang`, `kode_ruang`)
 VALUES (NULL, '$nama_ruang', '$kode_ruang')");

if ($query) {
 # credirect ke page index
 header("location:ruang-kalab.php"); 
}
else{
 echo "ERROR, data gagal diupdate". mysqli_error($koneksi);
}

//mysql_close($host);
?>