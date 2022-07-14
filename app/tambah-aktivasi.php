<?php
//include('dbconnected.php');
include('koneksi.php');

$id_matkul = $_POST['id_matkul'];
$id_ruang = $_POST['id_ruang'];

$status = $_POST['status'];
$waktu_mulai = $_POST['waktu_mulai'];
$waktu_selesai = $_POST['waktu_selesai'];

    ///query update
$query = mysqli_query($koneksi,"INSERT INTO `aktivasi` (`id_aktiv`, `id_matkul`, `id_ruang`, `status`, `waktu_mulai`, `waktu_selesai` )
 VALUES (NULL, '$id_matkul', '$id_ruang', '$status', '$waktu_mulai', '$waktu_selesai')");

if ($query) {
 # credirect ke page index
 header("location:aktivasi.php"); 
}
else{
 echo "ERROR, data gagal diupdate". mysqli_error($koneksi);
}

//mysql_close($host);
?>