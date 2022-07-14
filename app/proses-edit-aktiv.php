<?php
//include('dbconnected.php');
include('koneksi.php');

$id = $_POST['kode_kel'];
$status = $_POST['id_status'];


//query update
$query = mysqli_query($koneksi,"UPDATE kelas SET  id_status ='$status' WHERE kode_kel ='$id'");

if ($query) {
 # credirect ke page index
 header("location:aktivasi.php"); 
}
else{
 echo "ERROR, data gagal diupdate". mysql_error();
}

//mysql_close($host);
?>