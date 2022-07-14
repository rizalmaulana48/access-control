<?php
require_once __DIR__ . '../vendor/autoload.php';
include "koneksi.php";

$from=$_POST['awal'];
$end=$_POST['akhir'];
$matkul=$_POST['nama_mk'];

$mpdf = new \Mpdf\Mpdf();
$mpdf->AddPage("P","","","","","15","15","15","15","","","","","","","","","","","","A4");
$status= $data['status_aktifasi'];
  //formula
  if($status < 1)
  {
     $hasil = "<font >Diluar Mata Kuliah</font>";
  }
  elseif($status > 0)
  {
    $hasil = "<font color='blue'>Absensi Mata Kuliah</font>";
  }
  else
  {
    $hasil ="-";
  }

$mpdf->SetFont('Arial','B','22');
$html = '<!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
                
        </head>
        <body style=" font-family: Times, serif; , font-size: 10px;">
     <img src="img/logo.png" style="padding:0 0 0 10px; float:left;  width: 80px; height: 80px;">
     <p style="text-align:center;font-size:130%;" ><b>DATA PRESENSI PROGRAM STUDI KOMPUTER SEKOLAH VOKASI<br>YAYASAN PAKUAN SILIWANGI UNIVERSITAS PAKUAN</b><br>
    Jl. Pakuan PO. BOX 542 Bogor 16143 Telp (0251) 8362701 (Hunting)<br>
    http://vokasi.unpak.ac.id email: sekretariat.diploma3@unpak.ac.id</p>
            <hr>
            
            <br>
            <table  border="1" cellpadding="10" cellspacing="0">
                <tr>
                <th scope="col">No</th>
                <th scope="col">Nama </th>
                <th scope="col">Nama MataKuliah</th>
                <th scope="col">Tanggal</th>
                <th scope="col">Waktu Masuk</th>
                <th scope="col">Waktu Keluar</th>
              
                <th scope="col">Semester</th>
                <th scope="col">Kode Ruang</th>
                <th scope="col">Status</th>
               
                <th scope="col">Gambar</th>
                </tr>';
                $i=1;
                if( $from != 0 AND $end !=0){
                    $rekap = mysqli_query($koneksi,"SELECT  a.nama, mk.nama_mk, a.gambar, a.nokartu, a.tanggal, r.kode_ruang, mk.smt, a.id_ruang,  a.kode_mk, a.npm, a.kd_dos, a.status, a.status_aktifasi, a.waktu_masuk, a.waktu_keluar,
                    mk.kode_mk FROM akses_kontrol a INNER JOIN matkul mk ON a.kode_mk=mk.kode_mk INNER JOIN ruang r ON r.id_ruang=a.id_ruang where a.status_aktifasi='1' AND  tanggal BETWEEN '$from' AND '$end'");
                    foreach ($rekap as $dt){                            
                      $html.= '<tr> 
                      <td>'. $i++ .'</td>
                      <td>'. $dt["nama"] .'</td>
                      <td>'. $dt["nama_mk"] .'</td>
                      <td>'. date('d F Y', strtotime($dt["tanggal"])) .'</td>
                      <td>'. $dt["waktu_masuk"] .'</td>
                      <td>'. $dt["waktu_keluar"] .'</td>
                      <td>'. $dt["smt"] .'</td>
                      <td>'. $dt["kode_ruang"] .'</td>
                      <td>'. $dt["status"] .'</td>
                    <td ><img alt="" width="50px" height="50px" src="../assets/images/uploader/'.$dt["gambar"].'"></td>
                </tr>';
                
                 }
                }else{
                    $rekap = mysqli_query($koneksi,"SELECT  a.nama, mk.nama_mk, a.gambar, a.nokartu, a.tanggal, r.kode_ruang, mk.smt, a.id_ruang,  a.kode_mk, a.npm, a.kd_dos, a.status, a.status_aktifasi, a.waktu_masuk, a.waktu_keluar,
                    mk.kode_mk FROM akses_kontrol a INNER JOIN matkul mk ON a.kode_mk=mk.kode_mk INNER JOIN ruang r ON r.id_ruang=a.id_ruang where a.status_aktifasi='1' ");
                     foreach ($rekap as $dt){
                        $html.= '<tr> 
                    <td>'. $i++ .'</td>
                    <td>'. $dt["nama"] .'</td>
                    <td>'. $dt["nama_mk"] .'</td>
                    <td>'. date('d F Y', strtotime($dt["tanggal"])) .'</td>
                    <td>'. $dt["waktu_masuk"] .'</td>
                    <td>'. $dt["waktu_keluar"] .'</td>
                    <td>'. $dt["smt"] .'</td>
                    <td>'. $dt["kode_ruang"] .'</td>
                    <td>'. $dt["status"] .'</td>
                  
                    <td ><img alt="" width="50px" heigth="50px" src="../assets/images/uploader/'.$dt["gambar"].'"></td>
                </tr>';

                    }
                }

$html .=            '</table><br>
                    <p style="float:right;font-size:130%;" >Bogor ........ , ....21<br>
                    Staff Tata Usaha<br>
                    Progam Studi Sistem Informasi<br> <br> <br> <br>
                    <u>Erlina, S.Kom., MMSi</u><br></p>
                    </body>
                    </html>';

$mpdf->WriteHTML($html);
$mpdf->Output('Laporan Monitoring Presensi.pdf', \Mpdf\Output\Destination::INLINE);
?>