	<!-- cek apakah sudah login -->
	<?php 
	session_start();
	require 'koneksi.php';
	if($_SESSION['group_user']!="5"){
		header("location:login.php?pesan=belum_login");
	}
	?>