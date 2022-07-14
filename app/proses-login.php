<?php
// mengaktifkan session php
session_start();
 
// menghubungkan dengan koneksi
include 'koneksi.php';
 $email = $_POST['email'];
 $pass = md5($_POST['pass']);

 $login = mysqli_query($koneksi, "SELECT * from user where email ='$email' and pass='$pass' and group_user ='1'");
 $login1 = mysqli_query($koneksi, "SELECT * from user where email ='$email' and pass='$pass' and group_user ='0'");
 $login2 = mysqli_query($koneksi, "SELECT * from user where email ='$email' and pass='$pass' and group_user ='2'");
 $login3 = mysqli_query($koneksi, "SELECT * from user where email ='$email' and pass='$pass' and group_user ='3'");
 $login4 = mysqli_query($koneksi, "SELECT * from user where email ='$email' and pass='$pass' and group_user ='4'");
 $login5 = mysqli_query($koneksi, "SELECT * from user where email ='$email' and pass='$pass' and group_user ='5'");

 $cek = mysqli_num_rows($login);
 $cek1 = mysqli_num_rows($login1);
 $cek2 = mysqli_num_rows($login2);
 $cek3 = mysqli_num_rows($login3);
 $cek4 = mysqli_num_rows($login4);
 $cek5 = mysqli_num_rows($login5);
 
 if($cek > 0 ) {
 $sesi = mysqli_query($koneksi,"select * from user where email ='$email' and pass='$pass' and group_user ='1'");
 $sesi = mysqli_fetch_assoc($sesi);
	$_SESSION['id'] = $sesi['id_user'];
	$_SESSION['nama'] = $sesi['nama'];
	$_SESSION['group_user'] = $sesi['group_user'];
	$_SESSION['status'] = "login";
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
}else if($cek4 > 0 ){
	$sesi = mysqli_query($koneksi,"select * from user where email ='$email' and pass='$pass' and group_user ='4'");
 	$sesi = mysqli_fetch_assoc($sesi);
	$_SESSION['id'] = $sesi['id_user'];
	$_SESSION['nama'] = $sesi['nama'];
	$_SESSION['group_user'] = $sesi['group_user'];
	$_SESSION['status'] = "login";
	header("location:index-tu.php");
}else if($cek5 > 0 ){
	$sesi = mysqli_query($koneksi,"select * from user where email ='$email' and pass='$pass' and group_user ='5'");
 	$sesi = mysqli_fetch_assoc($sesi);
	$_SESSION['id'] = $sesi['id_user'];
	$_SESSION['nama'] = $sesi['nama'];
	$_SESSION['group_user'] = $sesi['group_user'];
	$_SESSION['status'] = "login";
	header("location:index-kalab.php");
}
else{
	header("location:login.php?pesan=gagal");
}
?>