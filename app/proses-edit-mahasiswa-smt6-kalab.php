<?php
//include('dbconnected.php');
include('koneksi.php');

$id = $_POST['id_mhs'];
$nama = $_POST['nama'];
$npm = $_POST['npm'];
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
$query = mysqli_query($koneksi,"UPDATE mahasiswa SET nama='$nama', npm='$npm', jk='$jk', foto='$namaFile', alamat='$alamat' WHERE id_mhs='$id' ");

if ($query) {
 # credirect ke page index
 header("location:mahasiswa-smt6-kalab.php"); 
}
else{
 echo "ERROR, data gagal diupdate". mysql_error();
}

//mysql_close($host);
?>