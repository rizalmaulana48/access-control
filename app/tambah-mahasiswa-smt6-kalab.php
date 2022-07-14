<?php
//include('dbconnected.php');
include('koneksi.php');


$nama = $_POST['nama'];
$npm = $_POST['npm'];
$nokartu= $_POST['nokartu'];
$jk = $_POST['jk'];
$jurusan = $_POST['jurusan'];
$alamat = $_POST['alamat'];


    // ambil data file
    $namaFile = $_FILES['file']['name'];
    $namaSementara = $_FILES['file']['tmp_name'];

    // tentukan lokasi file akan dipindahkan
    
    $dirUpload = "../assets/images/uploader/";

    // pindahkan file
    $terupload = move_uploaded_file($namaSementara, $dirUpload.$namaFile);

//query update
$query = mysqli_query($koneksi,"INSERT INTO `mahasiswa` (`id_mhs`, `nama`, `npm`, `nokartu`, `jk`, `semester`, `foto`, `jurusan`, `alamat`)
 VALUES (NULL, '$nama', '$npm', '$nokartu', '$jk', '6', '$namaFile', 'Sistem Informasi', '$alamat')");

if ($query) {
 # credirect ke page index
 header("location:mahasiswa-smt6-kalab.php"); 
}
else{
 echo "ERROR, data gagal diupdate". mysqli_error($koneksi);
}

//mysql_close($host);
?>