<?php
require 'cek-sesi-tu.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Sistem Akses Kontrol</title>

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
<?php require 'sidebar-tu.php'; ?>
      <!-- Main Content -->
      <div id="content">

<?php require 'navbar.php'; ?>



<div class="container-fluid ">
<div class="card shadow mb-4">
<div class="card mt">
  
  <div class="card-body mb-1">
    <h4>Ket.Kehadiran / Mahasiswa</h4>
    <nav class="navbar navbar-expand navbar-light bg-light mb-1">
    <div class="collapse navbar-collapse" id="main_nav">
    <ul class="navbar-nav">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle text-primary" href="#" data-toggle="dropdown">Prodi Sekolah Vokasi-Sistem Informasi</a>
        <ul class="dropdown-menu dropdown-menu-right">
          <li><a class="dropdown-item" href="#"> Semester 1 >></a>
            <ul class="submenu dropdown-menu">
              <li><a class="dropdown-item" href="ketindo-tu.php">Bahasa Indonesia</a></li>
              <li><a class="dropdown-item" href="">Bahasa Inggris</a></li>
            </ul>
          </li>

        <li><a class="dropdown-item" href="#"> Semester 2 >></a>
            <ul class="submenu dropdown-menu">
            <li><a class="dropdown-item" href="karyawan.php">Algoritma & Pemograman 2</a></li>
            <li><a class="dropdown-item" href="">Basis Data</a>
            <li><a class="dropdown-item" href="">E-Technology</a></li>
            <li> <a class="dropdown-item" href="">Logika Informatika</a></li>
             <li><a class="dropdown-item" href="">Pengantar Ekonomi dan Akutansi</a></li>
            <li><a class="dropdown-item" href="ketos.php">Sistem Operasi</a></li>
            
            <li><a class="dropdown-item" href="">Sistem Informasi Manajemen</a></li>
            <li> <a class="dropdown-item" href="">Stuktur Data</a></li>
            
             </ul>
             
        </li>
       <li><a class="dropdown-item" href="#"> Semester 3 >></a>
          <ul class="submenu dropdown-menu">
            <li> <a class="dropdown-item" href="ketindo.php">Bahasa Indonesia</a></li>
            <li>  <a class="dropdown-item" href="">Bahasa Inggris</a></li>
          </ul>
        </li>
        <li><a class="dropdown-item" href="#"> Semester 4 >></a>
          <ul class="submenu dropdown-menu">
            
            <li><a class="dropdown-item" href="">Metode Penelitian</a></li>
            <li><a class="dropdown-item" href="">Otomatisasi Perkantoran</a></li>
            <li><a class="dropdown-item" href="karyawan.php">Pemograman Web2</a></li>
            <li><a class="dropdown-item" href="">Pemograman Oracle </a></li>
            <li><a class="dropdown-item" href="">Pemograman Visual 2 </a></li>
            <li><a class="dropdown-item" href="">Pemograman Mobile </a></li>
             <li><a class="dropdown-item" href="">Rekayasa Perangkat Lunak </a></li>
                </ul>
        </li>
      </ul>
      </li>
      </ul>
    </div>

                        <div class="dropdown-menu dropdown-menu-right animated--grow-in" aria-labelledby="navbarDropdown">
                           


                         
                        
                         
                        <a class="dropdown-item" href="ketos.php">Sistem Operasi</a>
                        <a class="dropdown-item" href="">E-Technology</a>
                        <a class="dropdown-item" href="">Sistem Informasi Manajemen</a>
                        <a class="dropdown-item" href="">Stuktur Data</a>
                        <a class="dropdown-item" href="">Logika Informatika</a>
                        <a class="dropdown-item" href="">Basis Data</a>
                        <a class="dropdown-item" href="">Algoritma & Pemograman 2</a>
                        <a class="dropdown-item" href="">Pengantar Ekonomi dan Akutansi</a>

                        
                      </li>
                    </ul>


                  </nav>


    <nav class="navbar navbar-expand navbar-light bg-light mb-1">
    <div class="collapse navbar-collapse" id="main_nav">
    <ul class="navbar-nav">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle text-primary" href="#" data-toggle="dropdown">Prodi Sekolah Vokasi- Teknik Komputer</a>
          <ul class="dropdown-menu dropdown-menu-right">
            <li><a class="dropdown-item" href="#"> Semester 1 >></a>
            <ul class="submenu dropdown-menu dropdown-menu-right">
              <li><a class="dropdown-item" href="">Bahasa Indonesia</a></li>
              <li><a class="dropdown-item" href="">Bahasa Inggris</a></li>
           </ul>        </li>

        <li><a class="dropdown-item" href="#"> Semester 2 >></a>
            <ul class="submenu dropdown-menu">
              <li><a class="dropdown-item" href="">Sistem Opresi</a></li>
              <li><a class="dropdown-item" href="">E-Technology</a></li>
              <li><a class="dropdown-item" href="">Sistem Informasi Manajemen</a></li>
              <li><a class="dropdown-item" href="">Stuktur Data</a></li>
              <li><a class="dropdown-item" href="">Logika Informatika</a></li>
              <li><a class="dropdown-item" href="">Basis Data</a>
              <li><a class="dropdown-item" href="">Algoritma & Pemograman 2</a></li>
              <li><a class="dropdown-item" href="">Pengantar Ekonomi dan Akutansi</a></li>
            </ul>
        </li>
       <li><a class="dropdown-item" href="#"> Semester 3 >></a>
          <ul class="submenu dropdown-menu">
            <li><a class="dropdown-item" href="">Bahasa Indonesia</a></li>
            <li><a class="dropdown-item" href="">Bahasa Inggris</a></li>
          </ul>        </li>
        <li><a class="dropdown-item" href="#"> Semester 4 >></a>
          <ul class="submenu dropdown-menu">
            <li><a class="dropdown-item" href="">Metode Penelitian</a></li>
            <li><a class="dropdown-item" href="">Otomatisasi Perkantoran</a></li>
            <li><a class="dropdown-item" href="matkul-web.php">Pemograman Web2</a></li>
            <li><a class="dropdown-item" href="">Pemograman Oracle </a></li>
            <li><a class="dropdown-item" href="">Pemograman Visual 2 </a></li>
            <li><a class="dropdown-item" href="">Pemograman Mobile </a></li>
            <li><a class="dropdown-item" href="">Rekayasa Perangkat lunak</a></li>
            
         </ul>
        </li>
      </ul>
    </li>
  </ul>
  </div>

                  


                  </nav>

                  
     <nav class="navbar navbar-expand navbar-light bg-light mb-0">
    <div class="collapse navbar-collapse" id="main_nav">
    <ul class="navbar-nav">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle text-primary" href="#" data-toggle="dropdown">Prodi Sekolah Vokasi-Keuangan & Perbankan</a>
        <ul class="dropdown-menu dropdown-menu-right">
          <li><a class="dropdown-item" href="#"> Semester 1 >></a>
            <ul class="submenu dropdown-menu dropdown-menu-right">
              <a class="dropdown-item" href=""></a>
              <a class="dropdown-item" href=""></a>
            </ul>
          </li>

        <li><a class="dropdown-item" href="#"> Semester 2 >></a>
            <ul class="submenu dropdown-menu">
              <a class="dropdown-item" href="">Pendidikan Kewarganegaraan</a>
              <a class="dropdown-item" href="">Lembaga Keuangan Non Bank</a> 
              <li><a class="dropdown-item" href="">Pengantar Manajemen & Bisnis</a></li>
              <li><a class="dropdown-item" href="">Matematika Keuangan</a></li>
              <li><a class="dropdown-item" href="">Praktik Pengantar Akuntansi II</a></li>
              <li><a class="dropdown-item" href="">Aspek Hukum Keuangan & Perbankan</a></li>
              <li><a class="dropdown-item" href="">Pengantar Perpajakan</a></li>
              <li><a class="dropdown-item" href="">Pasar Modal</a></li>
            </ul>
        </li>
       <li><a class="dropdown-item" href="#"> Semester 3 >></a>
          <ul class="submenu dropdown-menu">
            <li> <a class="dropdown-item" href="">Bahasa Indonesia</a></li>
            <li>  <a class="dropdown-item" href="">Bahasa Inggris</a></li>
          </ul>
        </li>
        <li><a class="dropdown-item" href="#"> Semester 4 >></a>
         <ul class="submenu dropdown-menu">
              <a class="dropdown-item" href="">Manajemen Keuangan</a>
              <a class="dropdown-item" href="">Akutansi Bank</a> 
              <li><a class="dropdown-item" href="">Praktik Akuntansi Bank</a></li>
              <li><a class="dropdown-item" href="">Akuntansi Keuangan</a></li>
              <li><a class="dropdown-item" href="">Analisis & Pengelolaan Kredit I</a></li>
              <li><a class="dropdown-item" href="">Prosedur Operasional Bank</a></li>
              <li><a class="dropdown-item" href="">Etika Perbankan</a></li>
             
            </ul>
        </li>
      </ul>
      </li>
      </ul>
    </div>
  </nav>
 

                 
     <nav class="navbar navbar-expand navbar-light bg-light mb-0">
    <div class="collapse navbar-collapse" id="main_nav">
    <ul class="navbar-nav">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle text-primary" href="#" data-toggle="dropdown">Prodi Sekolah Vokasi-Manajemen Pajak</a>
        <ul class="dropdown-menu dropdown-menu-right">
          <li><a class="dropdown-item" href="#"> Semester 1 >></a>
            <ul class="submenu dropdown-menu dropdown-menu-right">
              <a class="dropdown-item" href=""></a>
              <a class="dropdown-item" href=""></a>
            </ul>
          </li>

        <li><a class="dropdown-item" href="#"> Semester 2 >></a>
            <ul class="submenu dropdown-menu">
              <a class="dropdown-item" href="">Pajak Penghasilan Pot/Put</a>
              <a class="dropdown-item" href="">Pendidikan  Kewarganegaraan</a> 
              <li><a class="dropdown-item" href="">Matematika Ekonomi</a></li>
              <li><a class="dropdown-item" href="">Ketentuan Umum dan Tata Cara Perpajakan</a></li>
              <li><a class="dropdown-item" href="">Pengantar Manajemen dan Bisnis </a></li>
              <li><a class="dropdown-item" href="">Pengantar Akuntansi II</a></li>
              <li><a class="dropdown-item" href="">Praktik Pengantar Akuntansi II</a></li>
              <li><a class="dropdown-item" href="">Bahasa Inggris Bisnis</a></li>
            </ul>
        </li>
       <li><a class="dropdown-item" href="#"> Semester 3 >></a>
          <ul class="submenu dropdown-menu">
            <li><a class="dropdown-item" href="">Bahasa Indonesia</a></li>
            <li><a class="dropdown-item" href="">Bahasa Inggris</a></li>
          </ul>
        </li>
        <li><a class="dropdown-item" href="#"> Semester 4 >></a>
         <ul class="submenu dropdown-menu">
           <a class="dropdown-item" href="">PBB, BPHTB, & BEA MATERAI</a>
              <a class="dropdown-item" href="">Analisis Laporan Keuangan</a>
              <a class="dropdown-item" href="">Kepabeanan dan Cukai</a> 
              <li><a class="dropdown-item" href="">Akuntansi Keuangan Menengah II</a></li>
              <li><a class="dropdown-item" href="">Praktik Komputerisasi Akuntansi</a></li>
              <li><a class="dropdown-item" href="">Praktik PPN dan PPn BM</a></li>
              <li><a class="dropdown-item" href="">Akuntansi Biaya</a></li>
              
            </ul>
        </li>
      </ul>
      </li>
      </ul>
    </div>
  </nav>


     <nav class="navbar navbar-expand navbar-light bg-light mb-0">
    <div class="collapse navbar-collapse" id="main_nav">
    <ul class="navbar-nav">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle text-primary" href="#" data-toggle="dropdown">Prodi Sekolah Vokasi-Akutansi</a>
        <ul class="dropdown-menu dropdown-menu-right">
          <li><a class="dropdown-item" href="#"> Semester 1 >></a>
            <ul class="submenu dropdown-menu dropdown-menu-right">
              <a class="dropdown-item" href=""></a>
              <a class="dropdown-item" href=""></a>
            </ul>
          </li>

        <li><a class="dropdown-item" href="#"> Semester 2 >></a>
            <ul class="submenu dropdown-menu">
              <a class="dropdown-item" href=""> Bank dan Lembaga Keuangan</a>
              <a class="dropdown-item" href="">Akuntansi Biaya</a> 
              <li><a class="dropdown-item" href="">Bahasa Indonesia dan Teknik Penulisan Laporan</a></li>
              <li><a class="dropdown-item" href="">Pengantar Akuntansi 2</a></li>
              <li><a class="dropdown-item" href="">Komunikasi Bisnis</a></li>
              <li><a class="dropdown-item" href="">Hukum Bisnis</a></li>
              <li><a class="dropdown-item" href="">Perpajakan 1</a></li>
              <li><a class="dropdown-item" href="">Bahasa Inggris Bisnis dan Korespondensi</a></li>
              <li><a class="dropdown-item" href="">Praktik Pengantar Akuntansi </a></li>
              
            </ul>
        </li>
       <li><a class="dropdown-item" href="#"> Semester 3 >></a>
          <ul class="submenu dropdown-menu">
            <li> <a class="dropdown-item" href="">Bahasa Indonesia</a></li>
            <li>  <a class="dropdown-item" href="">Bahasa Inggris</a></li>
          </ul>
        </li>
        <li><a class="dropdown-item" href="#"> Semester 4 >></a>
         <ul class="submenu dropdown-menu">
              <a class="dropdown-item" href="">Analisis Laporan Keuangan</a>
              <a class="dropdown-item" href="">Kepabeanan dan Cukai</a> 
              <li><a class="dropdown-item" href="">Akuntansi Keuangan Menengah II</a></li>
              <li><a class="dropdown-item" href="">Praktik Komputerisasi Akuntansi</a></li>
              <li><a class="dropdown-item" href="">Praktik PPN dan PPn BM</a></li>
              <li><a class="dropdown-item" href="">Akuntansi Biaya</a></li>
              
            </ul>
        </li>
      </ul>
      </li>
      </ul>
    </div>
  </nav>
<br>
<br>
</div>
</div>
</div>
</div>


<script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
crossorigin="anonymous"></script>

<!-- Bootstrap files (jQuery first, then Popper.js, then Bootstrap JS) -->



<script type="text/javascript">
/// some script

// jquery ready start
$(document).ready(function() {
  // jQuery code

  //////////////////////// Prevent closing from click inside dropdown
    $(document).on('click', '.dropdown-menu', function (e) {
      e.stopPropagation();
    });

    // make it as accordion for smaller screens
    if ($(window).width() < 992) {
      $('.dropdown-menu a').click(function(e){
        e.preventDefault();
          if($(this).next('.submenu').length){
            $(this).next('.submenu').toggle();
          }
          $('.dropdown').on('hide.bs.dropdown', function () {
         $(this).find('.submenu').hide();
      })
      });
  }
  
}); // jquery end
</script>

<style type="text/css">
  @media (min-width: 992px){
    .dropdown-menu .dropdown-toggle:after{
      border-top: .3em solid transparent;
        border-right: 0;
        border-bottom: .3em solid transparent;
        border-left: .3em solid;
    }

    .dropdown-menu .dropdown-menu{
      margin-left:0; margin-right: 0;
    }

    .dropdown-menu li{
      position: relative;
    }
    .nav-item .submenu{ 
      display: none;
      position: absolute;
      left:100%; top:-7px;
    }
    .nav-item .submenu-left{ 
      right:100%; left:auto;
    }

    .dropdown-menu > li:hover{ background-color: #f1f1f1 }
    .dropdown-menu > li:hover > .submenu{
      display: block;
    }
  }
</style>
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
