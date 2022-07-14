<?php
//include('dbconnected.php');
include('koneksi.php');

$id = $_POST['id_dos'];
$nama_dos = $_POST['nama_dos'];
$kd_dos = $_POST['kd_dos'];
$no_hp = $_POST['no_hp'];
$jk = $_POST['jk'];

$alamat = $_POST['alamat'];


   // ambil data file
   $namaFile = $_FILES['file']['name'];
   $namaSementara = $_FILES['file']['tmp_name'];

   // tentukan lokasi file akan dipindahkan
   $dirUpload = "../assets/images/uploader/";

   // pindahkan file
   $terupload = move_uploaded_file($namaSementara, $dirUpload.$namaFile);

//query update
$query = mysqli_query($koneksi,"UPDATE dosen SET nama_dos='$nama_dos', kd_dos='$kd_dos', jk='$jk', no_hp='$no_hp', foto='$namaFile', alamat='$alamat' WHERE id_dos='$id' ");

if ($query) {
 # credirect ke page index
 header("location:dosen-kalab.php"); 
}
else{
 echo "ERROR, data gagal diupdate". mysql_error();
}

//mysql_close($host);
?>