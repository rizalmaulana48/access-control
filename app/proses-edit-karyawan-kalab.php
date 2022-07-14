<?php
//include('dbconnected.php');
include('koneksi.php');

$id = $_POST['id_karyawan'];
$nama = $_POST['nama'];
$no_hp = $_POST['no_hp'];
$jk = $_POST['jk'];
$jabatan= $_POST['jabatan'];
$alamat = $_POST['alamat'];


   // ambil data file
   $namaFile = $_FILES['file']['name'];
   $namaSementara = $_FILES['file']['tmp_name'];

   // tentukan lokasi file akan dipindahkan
   $dirUpload = "../assets/images/uploader/";

   // pindahkan file
   $terupload = move_uploaded_file($namaSementara, $dirUpload.$namaFile);

//query update
$query = mysqli_query($koneksi,"UPDATE karyawan SET nama='$nama', no_hp='$no_hp', jk='$jk', jabatan='$jabatan', foto='$namaFile', alamat='$alamat' WHERE id_karyawan='$id' ");

if ($query) {
 # credirect ke page index
 header("location:karyawan-kalab.php"); 
}
else{
 echo "ERROR, data gagal diupdate". mysql_error();
}

//mysql_close($host);
?>