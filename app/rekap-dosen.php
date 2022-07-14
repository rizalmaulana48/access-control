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
<?php require 'sidebar.php'; ?>
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
            <div class="col-lg-12 mb-0 mb-lg-0">
            <img src="img/logo.png" style="padding:0 0 0 10px; float:left;  width: 100px;"><center><p class="mb-0 font-weight-bold">PRESENSI SEKOLAH VOKASI <br>YAYASAN PAKUAN SILIWANGI UNIVERSITAS PAKUAN <br> <h6 class="mt-0 mb-0">Jl. Pakuan PO. BOX 542 Bogor 16143 Telp (0251) 8362701 (Hunting)<br>
            http://vokasi.unpak.ac.id email: sekretariat.diploma3@unpak.ac.id </h6></p> </center>
              <hr class="mt-0 mb-0"><br>
              <button type="button" class="btn btn-primary" style="float: right;" data-toggle="modal" data-target="#myModalPrint"> + Buat Laporan </i></button>
              
             <h6 class="mb-0 mt-0 font-weight- "style="float:left;">
             <table>
             <tr> <td><h5>Rekap Kehadiran Dosen</h5> </td></tr>
             
            </table>
               </h6> 
             </div>           
            </div>
            <div class="card-body">
            <div class="d-sm-flex align-items-center left-content-between">
           
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Kode Dosen</th>
                      <th>Nama Dosen </th>
                      <th>Nama Mata Kuliah</th>
                      <th>Jumlah Masuk</th>
                  
                      
                      
                    </tr>
                  </thead>
                  <tbody>
				  <?php 
$query = mysqli_query($koneksi,"SELECT d.kd_dos, d.nama_dos, mk.nama_mk,p.waktu, count(p.kd_dos) jumlah
FROM dosen d LEFT JOIN presensi p
ON d.kd_dos=p.kd_dos 
INNER JOIN matkul mk on p.kode_mk=mk.kode_mk and mk.kd_dos=d.kd_dos
GROUP BY p.kd_dos,p.kode_mk
ORDER BY d.kd_dos");
$no = 1;

while ($data = mysqli_fetch_assoc($query)) 
{
?>
                    <tr>
                    <td scope="row"><?= $no;?></td>
                      <td><?=$data['kd_dos']?></td>
                      <td><?=$data['nama_dos']?></td>
                      <td><?=$data['nama_mk']?></td>
                      <td><?=$data['jumlah']?></td>
                     
</tr>
<?php 
$no++;
//mysql_close($host);
?> 

<!-- Modal Edit Mahasiswa-->
<div class="modal fade" id="myModal<?php echo $data['id_karyawan']; ?>" role="dialog">
<div class="modal-dialog">

<!-- Modal content-->
<div class="modal-content">
<div class="modal-header">
<h4 class="modal-title">Ubah Data Karyawan</h4>
<button type="button" class="close" data-dismiss="modal">&times;</button>
</div>
<div class="modal-body">
<form role="form" action="proses-edit-karyawan.php" method="POST" enctype="multipart/form-data">

<?php
$id = $data['id_karyawan']; 
$query_edit = mysqli_query($koneksi,"SELECT * FROM karyawan WHERE id_karyawan ='$id'");
//$result = mysqli_query($conn, $query);
while ($row = mysqli_fetch_array($query_edit)) {  
?>


<input type="hidden" name="id_karyawan" value="<?php echo $row['id_karyawan']; ?>">

<div class="form-group">
<label>Nama</label>
<input type="text" name="nama" class="form-control" value="<?php echo $row['nama']; ?>">      
</div>

<div class="form-group">
<label>No HP</label>
<input type="number" name="no_hp" class="form-control" value="<?php echo $row['no_hp']; ?>">      
</div>

<div class="form-group">
<label>Jabatan</label>
<input type="text" name="jabatan" class="form-control" value="<?php echo $row['jabatan']; ?>" >      
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
<a href="hapus-karyawan.php?id_karyawan=<?=$row['id_karyawan'];?>" onclick="return confirm('Anda Yakin Ingin Menghapus?')" class="btn btn-danger">Hapus</a>
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

<div class="modal fade" id="myModals<?php echo $data['id_karyawan']; ?>" role="dialog">
<div class="modal-dialog">

<!-- Modal content-->
<div class="modal-content">
<div class="modal-header">
<h4 class="modal-title">D</h4>
<button type="button" class="close" data-dismiss="modal">&times;</button>
</div>
<div class="modal-body">
<form role="form" action="proses-edit-karyawan.php" method="POST" enctype="multipart/form-data">

<?php
$id = $data['id_karyawan']; 
$query_edit = mysqli_query($koneksi,"SELECT * FROM karyawan WHERE id_karyawan ='$id'");
//$result = mysqli_query($conn, $query);
while ($row = mysqli_fetch_array($query_edit)) {  
?>


<input type="hidden" name="id_karyawan" value="<?php echo $row['id_karyawan']; ?>">

<div class="form-group">
<label><h6>Nama Proyek         : <?= $data['nama_proyek']?> </h6></label>
</div>
<div class="form-group">
<label><h6>Jenis Pengeluaran   : <?= $data['jenis']?></h6></label>
</div>
<div class="form-group">
<label><h6>Jenis Iklan         : <?= $data['jns_iklan']?></h6></label>
</div>
<div class="form-group">
<label><h6>Nama Pengeluaran    : <?= $data['nama_pengeluaran']?></h6></label>
</div>
<div class="form-group">
<label><h6>Tanggal Pengeluaran : <?=date('d F Y', strtotime($data['tanggal']))?></h6></label>
</div>
<div class="form-group">
<label><h6>Jumlah Pengeluaran  : Rp. <?=number_format($data['jumlah'],2,',','.');?></h6></label>
</div>
<div class="form-group">
<h5>Foto/Bon/Struk/Invoice : <embed src="../assets/images/uploader/<?= $data['foto'];?>" alt="" width="460" height="300"> </h5></label>
</div>              
<div class="modal-footer">  
<button type="button" class="btn btn-success" data-dismiss="modal">Keluar</button>
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
          <h4 class="modal-title">Tambah Data Karyawan</h4>
		    <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <!-- body modal -->
		<form action="tambah-karyawan.php" method="POST" enctype="multipart/form-data">
    <div class="modal-body">
	   
    Nama : 
    <input type="text" class="form-control" name="nama">

    Jabatan :
    <input type="text" class="form-control" name="jabatan">

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
          <h4 class="modal-title">Cetak Presensi Dosen</h4>
		    <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <!-- body modal -->
		
    <div class="modal-body">
        <form action="cetak-rekap-dosen.php" method="POST" target="_blank">
          <div class="form-group">Dari Tanggal: </div>
              <div class="form-group">
                  <input type="date" class="form-control" name="awal">
              </div>  
            
          <div class="form-group">Sampai Tanggal : </div>
              <div class="form-group">
                  <input type="date" class="form-control" name="akhir">
              </div>  
              <div class="form-group">Mata Kuliah : 
          <select name="id_matkul" id="id_matkul" class="form-control">
          <option value=""> - Pilih Mata Kuliah - </option>
                        <?php
                          $id_matkul = mysqli_query($koneksi, "SELECT * FROM matkul");
                          while ($data_matkul = mysqli_fetch_array($id_matkul)) {
                            echo '<option value="'.$data_matkul['id_matkul'].'">'.$data_matkul['nama_mk'].'</option>';
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
