<?php
//include('dbconnected.php');
include('koneksi.php');


$nama_dos = $_POST['nama_dos'];
$no_hp = $_POST['no_hp'];
$kd_dos = $_POST['kd_dos'];
$nokartu= $_POST['nokartu'];
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
$query = mysqli_query($koneksi,"INSERT INTO `dosen` (`id_dos`, `nama_dos`, `kd_dos`, `no_hp`, `nokartu`, `jk`, `foto`, `alamat`)
 VALUES (NULL, '$nama_dos', '$kd_dos','$no_hp', '$nokartu', '$jk', '$namaFile', '$alamat')");

if ($query) {
 # credirect ke page index
 header("location:dosen-kalab.php"); 
}
else{
 echo "ERROR, data gagal diupdate". mysqli_error($koneksi);
}

//mysql_close($host);
?>