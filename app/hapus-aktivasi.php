<?php
//include('dbconnected.php');
include('koneksi.php');

$id = $_GET['id_aktiv'];

//query update
$query = mysqli_query($koneksi,"DELETE FROM `aktivasi` WHERE id_aktiv = '$id'");

if ($query) {
 # credirect ke page index
 header("location:aktivasi.php"); 
}
else{
 echo "ERROR, data gagal diupdate". mysqli_error($koneksi);
}

//mysql_close($host);
?>