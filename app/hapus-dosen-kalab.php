<?php
//include('dbconnected.php');
include('koneksi.php');

$id = $_GET['id_dos'];

//query update
$query = mysqli_query($koneksi,"DELETE FROM `dosen` WHERE id_dos = '$id'");

if ($query) {
 # credirect ke page index
 header("location:dosen-kalab.php"); 
}
else{
 echo "ERROR, data gagal diupdate". mysqli_error($koneksi);
}

//mysql_close($host);
?>