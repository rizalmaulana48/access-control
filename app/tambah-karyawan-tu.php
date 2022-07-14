<?php
//include('dbconnected.php');
include('koneksi.php');


$nama = $_POST['nama'];
$no_hp = $_POST['no_hp'];
$nokartu= $_POST['nokartu'];
$jk = $_POST['jk'];
$jabatan = $_POST['jabatan'];
$alamat = $_POST['alamat'];


    // ambil data file
    $namaFile = $_FILES['file']['name'];
    $namaSementara = $_FILES['file']['tmp_name'];

    // tentukan lokasi file akan dipindahkan
    
    $dirUpload = "../assets/images/uploader/";

    // pindahkan file
    $terupload = move_uploaded_file($namaSementara, $dirUpload.$namaFile);

//query update
$query = mysqli_query($koneksi,"INSERT INTO `karyawan` (`id_karyawan`, `nama`, `no_hp`, `nokartu`, `jk`, `jabatan`, `foto`, `alamat`)
 VALUES (NULL, '$nama', '$no_hp', '$nokartu', '$jk', '$jabatan', '$namaFile', '$alamat')");

if ($query) {
 # credirect ke page index
 header("location:karyawan-tu.php"); 
}
else{
 echo "ERROR, data gagal diupdate". mysqli_error($koneksi);
}

//mysql_close($host);
?>