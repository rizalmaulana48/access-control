<?php
require 'cek-sesi.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Kelola Admin</title>

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">


  <!-- Custom styles for this template -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">
<?php require 'koneksi.php'; ?>
<?php require 'sidebar.php'; ?>
      <!-- Main Content -->
      <div id="content">

<?php require 'navbar.php'; ?>

        <!-- Begin Page Content -->
        <div class="container-fluid">
<?php
if ($_SESSION['id'] == 1) {
	$lihat = 'none';
} else {
	$lihat = 'hidden';
};
?>
<button type="button" class="btn btn-success" style="margin:5px" data-toggle="modal" data-target="#myModalTambah"><i class="fa fa-plus"> User</i></button><br>  
 <!-- DataTales Example -->,
 <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Kelola User</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Nama</th>
                      <th>Email</th>
                      
                     
					  <th>Aksi</th>
                    </tr>
                  </thead>
                  <tfoot>
                  </tfoot>
                  <tbody>
          <?php 
          $no=1;
				  

$query = mysqli_query($koneksi,"SELECT * FROM user ORDER BY  id_user DESC");

while ($data = mysqli_fetch_assoc($query)) 
{
  
   
?>
                    <tr>
                    <td scope="row"><?= $no;?></td>
                      <td><?=$data['nama']?></td>
                      <td><?=$data['email']?></td>
                      
                      
					  <td>
                    <!-- Button untuk modal -->
<a href="#" type="button" class=" fa fa-edit btn btn-primary btn-md" data-toggle="modal" data-target="#myModal<?php echo $data['id_user']; ?>"></a>
</td>
</tr>
<?php
$no++;
?>
<!-- Modal Edit Mahasiswa-->
<div class="modal fade" id="myModal<?php echo $data['id_user']; ?>" role="dialog">
<div class="modal-dialog">

<!-- Modal content-->
<div class="modal-content">
<div class="modal-header">
<h4 class="modal-title">Ubah Data User</h4>
<button type="button" class="close" data-dismiss="modal">&times;</button>
</div>
<div class="modal-body">
<form role="form" action="proses-edit-admin.php" method="get">

<?php

$id = $data['id_user']; 
$query_edit = mysqli_query($koneksi,"SELECT * FROM user WHERE id_user='$id'");
//$result = mysqli_query($conn, $query);
while ($row = mysqli_fetch_array($query_edit)) {  
?>


<input type="hidden" name="id_user" value="<?php echo $row['id_user']; ?>">


<div class="form-group">
<label>Nama</label>
<input type="text" name="nama" class="form-control" value="<?php echo $row['nama']; ?>">      
</div>

<div class="form-group">
<label>Hak Akses :</label>
                    <select id="group_user" name="group_user" class="form-control">                       
                        <option value="1">1. Admin</option>
                        <option value="0">2. Kaprodi</option>
                        <option value="4">3. Labroan SI</option>                      
                        <option value="5">4. Laboran TK</option>   
                        <option value="2">5. Dosen</option>                         
                        <option value="3">6. Komti</option>                      
                    </select>
</div>

<div class="form-group">
<label>Email</label>
<input type="text" name="email" class="form-control" value="<?php echo $row['email']; ?>">      
</div>

<div class="form-group">
<label>Password</label>
<input type="password" name="pass" class="form-control" value="<?php echo $row['pass']; ?>">      
</div>

<div class="modal-footer"> 

<button type="submit" class="btn btn-success">Ubah</button>
<a href="hapus-user.php?id_user=<?=$row['id_user'];?>" onclick="return confirm('Anda Yakin Ingin Menghapus?')" class="btn btn-danger">Hapus</a>
<button type="button" class="btn btn-default" data-dismiss="modal">Keluar</button>
</div>
<?php 
}
//mysql_close($host);
?>  
       
</form>
</div>
</div>

</div>
</div>



 <!-- Modal -->
  <div id="myModalTambah" class="modal fade" role="dialog">
    <div class="modal-dialog">

      <!-- konten modal-->
      <div class="modal-content">
        <!-- heading modal -->
        <div class="modal-header">
          <h4 class="modal-title">Tambah User</h4>
		    <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <!-- body modal -->
		<form action="tambah-admin.php" method="get">
        <div class="modal-body">
		Nama : 
         <input type="text" class="form-control" name="nama">

    <label>Hak AKses :</label>
                    <select id="group_user" name="group_user" class="form-control">                       
                        <option value="1">1. Admin</option>
                        <option value="0">2. Kaprodi</option>
                        <option value="4">3. Staff TU</option>                      
                        <option value="5">4. KALAB</option>   
                        <option value="2">5. Dosen</option>                         
                        <option value="3">6. Komti</option>                      
                    </select>
                    
		Email : 
         <input type="text" class="form-control" name="email">
		Password : 
         <input type="password" class="form-control" name="pass">
    
        </div>
        <!-- footer modal -->
        <div class="modal-footer">
		<button type="submit" class="btn btn-success" >Tambah</button>
		</form>
          <button type="button" class="btn btn-default" data-dismiss="modal">Keluar</button>
        </div>
      </div>

    </div>
  </div>


<?php               
} 
?>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
		  

        </div>
        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

<?php require 'footer.php'?>

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
<?php require 'logout-modal.php';?>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/datatables-demo.js"></script>

</body>

</html>
