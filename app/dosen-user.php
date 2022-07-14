<?php
require 'cek-sesi1.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin 2 - Tables</title>

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">
<?php require 'koneksi.php'; ?>
<?php require 'sidebar1.php'; ?>
      <!-- Main Content -->
      <div id="content">

<?php require 'navbar.php'; ?>

        <!-- Begin Page Content -->
        <div class="container-fluid">
        <div class="d-sm-flex align-items-center justify-content-between ">
        </div>
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
            <h3 style="float: left;"  class="m-0 font-weight- text-primary pull-left">Data Dosen</h3>
            <a href="cetak-dosen.php" type="button" class="btn btn-success" method="POST" target="_blank" style="float: right; margin: 0px 10px 0px 0px;"> <b>Cetak</b> <i class="fa fa-print"> </i></a>    
            </div>
            <div class="card-body">
            <div class="d-sm-flex align-items-center left-content-between">
            
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Nama </th>
                      <th>Kode Dosen</th>
                      <th>No HP</th>
                      <th>Jenis Kelamin</th>
                      <th>Alamat</th>
                      <th>Gambar</th>
                      <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
				  <?php 
$query = mysqli_query($koneksi,"SELECT * FROM dosen ORDER BY id_dos DESC");
$no = 1;
while ($data = mysqli_fetch_assoc($query)) 
{
?>
                    <tr>
                    <td scope="row"><?= $no;?></td>
                      <td><?=$data['nama_dos']?></td>
                      <td><?=$data['kd_dos']?></td>
                      <td><?=$data['no_hp']?></td>
                      <td><?=$data['jk']?></td>
                      <td><?=$data['alamat']?></td>
                      <td><img style="width: 90px;" src="../assets/images/uploader/<?=$data['foto'];?>" type="img"></td>
                    
                      
                      
					  <td>
                    <!-- Button untuk modal -->
<a href="#" type="button" class=" fa fa-edit btn btn-primary btn-md" data-toggle="modal" data-target="#myModal<?php echo $data['id']; ?>"></a>
                   
</td>
</tr>
<?php 
$no++;
//mysql_close($host);
?> 

<!-- Modal Edit Mahasiswa-->
<div class="modal fade" id="myModal<?php echo $data['id']; ?>" role="dialog">
<div class="modal-dialog">

<!-- Modal content-->
<div class="modal-content">
<div class="modal-header">
<h4 class="modal-title">Ubah Data Dosen</h4>
<button type="button" class="close" data-dismiss="modal">&times;</button>
</div>
<div class="modal-body">
<form role="form" action="proses-edit-dosen.php" method="POST" enctype="multipart/form-data">

<?php
$id = $data['id']; 
$query_edit = mysqli_query($koneksi,"SELECT * FROM dosen WHERE id ='$id'");
//$result = mysqli_query($conn, $query);
while ($row = mysqli_fetch_array($query_edit)) {  
?>


<input type="hidden" name="id" value="<?php echo $row['id']; ?>">

<div class="form-group">
<label>Nama</label>
<input type="text" name="nama_dos" class="form-control" value="<?php echo $row['nama_dos']; ?>">      
</div>

<div class="form-group">
<label>Kode Dosen</label>
<input type="text" name="kd_dos" class="form-control" value="<?php echo $row['kd_dos']; ?>">      
</div>

<div class="form-group">
<label>No HP</label>
<input type="number" name="no_hp" class="form-control" value="<?php echo $row['no_hp']; ?>">      
</div>

<div class="form-group">
<label>Jenis Kelamin</label><br>
<input type="radio" name="jk" value="Laki-laki" <?php if($data['jk']=='Laki-laki') echo 'checked'?>>Laki-laki
<input type="radio" name="jk" value="Perempuan" <?php if($data['jk']=='Perempuan') echo 'checked'?>>Perempuan
</div>

<div class="form-group">
<label>Alamat</label>
<textarea class="form-control" name="alamat" rows="3"> <?= $data['alamat']; ?></textarea >
</div>

<div class="form-group">
<label>Foto</label>
<input type="file" name="file" class="form-control" value="<?php echo $row['foto']; ?>" >  
</div>



<div class="modal-footer">  
<button type="submit" class="btn btn-success">Ubah</button>
<a href="hapus-dosen.php?id=<?=$row['id'];?>" onclick="return confirm('Anda Yakin Ingin Menghapus?')" class="btn btn-danger">Hapus</a>
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
          <h4 class="modal-title">Tambah Data Dosen</h4>
		    <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <!-- body modal -->
		<form action="tambah-dosen.php" method="POST" enctype="multipart/form-data">
    <div class="modal-body">
	   
    Nama : 
    <input type="text" class="form-control" name="nama_dos">

    Kode Dosen :
    <input type="text" class="form-control" name="kd_dos">

    No Kartu :
    <input type="text" class="form-control" name="nokartu">
  
    No HP: 
    <input type="number" class="form-control" name="no_hp">
  <br>
    Pilih Jenis Kelamin: <br>
    <input type="radio" name="jk" value="Laki-laki"> Laki-laki
    <input type="radio" name="jk" value="Perempuan"> Perempuan<br><br>
  
    Alamat :
    <textarea class="form-control" name="alamat" rows="3"> </textarea><br>

    Foto :
         <input type="file" name="file"><br>
  
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


<!-- konten Print-->
  <div id="myModalPrint" class="modal fade" role="dialog">
    <div class="modal-dialog">

      <!-- konten modal-->
      <div class="modal-content">
        <!-- heading modal -->
        <div class="modal-header">
          <h4 class="modal-title">Cetak Pengeluaran</h4>
		    <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <!-- body modal -->
		
    <div class="modal-body">
        <form action="cetak-dosen.php" method="POST" target="_blank">
          <div class="form-group">Dari Tanggal: </div>
              <div class="form-group">
                  <input type="date" class="form-control" name="awal">
              </div>  
            
          <div class="form-group">Sampai Tanggal : </div>
              <div class="form-group">
                  <input type="date" class="form-control" name="akhir">
              </div>  
        
        
        <div class="form-group">Proyek : 
          <select name="proyek" id="proyek" class="form-control">
          <option value=""> - Pilih Proyek - </option>
                        <?php
                          $idproyek = mysqli_query($koneksi, "SELECT * FROM proyek where is_active='1' and nonzone='0' ");
                          while ($data_proyek = mysqli_fetch_array($idproyek)) {
                            echo '<option value="'.$data_proyek['idproyek'].'">'.$data_proyek['nama_proyek'].'</option>';
                          }
                        ?>
                    </select>
                    </div>
        <!-- footer modal -->
        <div class="modal-footer">
		<button type="submit" class="btn btn-primary" >Cetak</button>
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
