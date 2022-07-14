<?php
// menghubungkan dengan koneksi
include 'koneksi.php';
 $nokartu = $_POST['nokartu'];
 

 $login = mysqli_query($koneksi, "SELECT * from mahasiswa where nokartu ='$nokartu'");
 $login1 = mysqli_query($koneksi, "SELECT * from karyawan where nokartu ='$nokartu'");
 $login2 = mysqli_query($koneksi, "SELECT * from asdos where nokartu ='$nokartu'");
 $login3 = mysqli_query($koneksi, "SELECT * from dosen where nokartu ='$nokartu'");
 

 $cek = mysqli_num_rows($login);
 $cek1 = mysqli_num_rows($login1);
 $cek2 = mysqli_num_rows($login2);
 $cek3 = mysqli_num_rows($login3);

 
 if($cek > 0 ) {
 $query = mysqli_query($koneksi,"INSERT INTO `akses_kontrol` (`id_akses`,`nama`, `group_user`, `email`, `pass`) VALUES (null, '$nama', '$group', '$email', '$pass')");

	header("location:index.php");
}else if($cek1 > 0 ){
	$sesi = mysqli_query($koneksi,"select * from user where email ='$email' and pass='$pass' and group_user ='0'");
 	$sesi = mysqli_fetch_assoc($sesi);
	$_SESSION['id'] = $sesi['id_user'];
	$_SESSION['nama'] = $sesi['nama'];
	$_SESSION['group_user'] = $sesi['group_user'];
	$_SESSION['status'] = "login";
	header("location:index1.php");
}else if($cek2 > 0 ){
	$sesi = mysqli_query($koneksi,"select * from user where email ='$email' and pass='$pass' and group_user ='2'");
 	$sesi = mysqli_fetch_assoc($sesi);
	$_SESSION['id'] = $sesi['id_user'];
	$_SESSION['nama'] = $sesi['nama'];
	$_SESSION['group_user'] = $sesi['group_user'];
	$_SESSION['status'] = "login";
	header("location:aktivasi.php");
}else if($cek3 > 0 ){
	$sesi = mysqli_query($koneksi,"select * from user where email ='$email' and pass='$pass' and group_user ='3'");
 	$sesi = mysqli_fetch_assoc($sesi);
	$_SESSION['id'] = $sesi['id_user'];
	$_SESSION['nama'] = $sesi['nama'];
	$_SESSION['group_user'] = $sesi['group_user'];
	$_SESSION['status'] = "login";
	header("location:index3.php");
}
else{
	header("location:daftar-ruang-tu-1.php?pesan=gagal");
}
?>