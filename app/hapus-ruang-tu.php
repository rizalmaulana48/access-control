<?php
//include('dbconnected.php');
include('koneksi.php');

$id = $_GET['id_ruang'];

//query update
$query = mysqli_query($koneksi,"DELETE FROM `ruang` WHERE id_ruang = '$id'");

if ($query) {
 # credirect ke page index
 header("location:ruang-tu.php"); 
}
else{
 echo "ERROR, data gagal diupdate". mysqli_error($koneksi);
}

//mysql_close($host);
?>