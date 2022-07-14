<?php
//include('dbconnected.php');
include('koneksi.php');

$id = $_GET['id_asdos'];

//query update
$query = mysqli_query($koneksi,"DELETE FROM `asdos` WHERE id_asdos = '$id'");

if ($query) {
 # credirect ke page index
 header("location:asdos-tu.php"); 
}
else{
 echo "ERROR, data gagal diupdate". mysqli_error($koneksi);
}

//mysql_close($host);
?>