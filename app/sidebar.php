  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.php">
        <div class="sidebar-brand-icon"><br><br><br>
          <img src="nfc.png" height="50px" width="50x"><br>
          <b><p>Sistem Monitoring</p></b>
        </div>
        <div class="sidebar-brand-text mx-3"></div>
      </a>
<br>
<br>
      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item">
        <a class="nav-link" href="index.php">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Home</span></a>
      </li>

      <hr class="sidebar-divider">
      
      <div class="sidebar-heading">
       Management User
      </div>
      <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-users"></i>
                    <span>Data user</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="profile.php">Akun</a>
                        <a class="collapse-item" href="karyawan.php">Karyawan</a>
                        <a class="collapse-item" href="dosen.php">Dosen</a>
                        <a class="collapse-item" href="mahasiswa.php">Mahasiswa</a>
                    </div>
                </div>
            </li>

    <hr class="sidebar-divider">

            <div class="sidebar-heading">
      Akademik
    </div>
      
   <li class="nav-item">
      <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#matkul" aria-expanded="true" aria-controls="matkul">
        <i class="fas fa-fw fa-folder"></i>
        <span>Data Akademik</span>
      </a>
      <div id="matkul" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
        <a class="collapse-item" href="ruang.php">Ruang</a>
        <a class="collapse-item" href="matkul.php">Mata Kuliah</a>
        <a class="collapse-item" href="jadwal.php">Kelas/Jadwal</a>
        <a class="collapse-item" href="waktu.php">Waktu</a>
        </div>
      </div>
    </li>

    <li class="nav-item">
      <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#fasilitas" aria-expanded="true" aria-controls="fasilitas">
        <i class="fas fa-fw fa-folder"></i>
        <span>Ket. Kehadiran</span>
      </a>
      <div id="fasilitas" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
        <a class="collapse-item" href="ket-hadir.php">Mahasiswa</a>
        </div>
      </div>
    </li>
  
    
    <li class="nav-item">
      <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#rekap" aria-expanded="true" aria-controls="rekap">
        <i class="fas fa-fw fa-folder"></i>
        <span>Rekap Kehadiran</span>
      </a>
      <div id="rekap" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
        <a class="collapse-item" href="rekap-mhs.php">Mahasiswa</a>
        <a class="collapse-item" href="rekap-dosen.php">Dosen</a>
        </div>
      </div>
    </li>

      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Akses kontrol
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="akses-kontrol.php">
        <i class="fas fa-fw fa-folder"></i>
          <span>Kontrol Keamanan</span>
        </a>
      </li>
	  
       
	        <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
     
      <!-- Divider -->
     

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">
