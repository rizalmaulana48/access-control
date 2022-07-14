<?php
//include('dbconnected.php');
include('koneksi.php');


$nama = $_POST['nama'];
$kode_asdos = $_POST['kode_asdos'];
$nohp = $_POST['nohp'];
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
$query = mysqli_query($koneksi,"INSERT INTO `asdos` (`id_asdos`, `kode_asdos`, `nama`, `nohp`, `nokartu`, `jk`, `foto`, `alamat`)
 VALUES (NULL, '$kode_asdos', '$nama','$nohp', '$nokartu', '$jk',  '$namaFile', '$alamat')");

if ($query) {
 # credirect ke page index
 header("location:asdos-user.php"); 
}
else{
 echo "ERROR, data gagal diupdate". mysqli_error($koneksi);
}

//mysql_close($host);
?>