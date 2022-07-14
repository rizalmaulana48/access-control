<?php
//include('dbconnected.php');
include('koneksi.php');

$id = $_POST['id_ruang'];
$nama_ruang = $_POST['nama_ruang'];
$kode_ruang = $_POST['kode_ruang'];
$jk = $_POST['jk'];

//query update
$query = mysqli_query($koneksi,"UPDATE ruang SET nama_ruang='$nama_ruang', kode_ruang='$kode_ruang' WHERE id_ruang='$id' ");

if ($query) {
 # credirect ke page index
 header("location:ruang-kalab.php"); 
}
else{
 echo "ERROR, data gagal diupdate". mysql_error();
}

//mysql_close($host);
?>