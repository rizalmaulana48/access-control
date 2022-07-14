<?php
require_once __DIR__ . '../vendor/autoload.php';
include "koneksi.php";

$from=$_POST['awal'];
$end=$_POST['akhir'];
$id_matkul=$_POST['id_matkul'];

$mpdf = new \Mpdf\Mpdf();
$mpdf->AddPage("P","","","","","15","15","15","15","","","","","","","","","","","","A4");
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
     <p style="text-align:center;font-size:130%;" ><b>SISTEM INFORMASI AKSES KONTROL KEAMANAN SEKOLAH VOKASI<br>YAYASAN PAKUAN SILIWANGI UNIVERSITAS PAKUAN</b><br>
    Jl. Pakuan PO. BOX 542 Bogor 16143 Telp (0251) 8362701 (Hunting)<br>
    http://vokasi.unpak.ac.id email: sekretariat.diploma3@unpak.ac.id</p>
            <hr>
           
            <table>
            <tr> 
            <td><h3>Rekap Presensi Dosen mulai dari Tanggal '. date('d F Y', strtotime($from)) .  ' sampai pada tanggal '.date('d F Y', strtotime($end)).'</h3></td>
            
            </tr>
          
            </table>
            <br>
            <table border="1" cellpadding="10" cellspacing="0">
                <tr>
                <th scope="col">No</th>
                <th scope="col">Kode Dosen</th>
                <th scope="col">Nama Dosen</th>
                <th scope="col">Mata Kuliah </th>
                <th scope="col">Jumlah Masuk</th>
                </tr>';
                $i=1;
                if($id_matkul != 0 AND $from != 0 AND $end !=0){
                    $rekap = mysqli_query($koneksi, "SELECT d.kd_dos, d.nama_dos, mk.nama_mk,p.waktu, count(p.kd_dos) jumlah
                    FROM dosen d LEFT JOIN presensi p
                    ON d.kd_dos=p.kd_dos 
                    INNER JOIN matkul mk on p.kode_mk=mk.kode_mk and mk.kd_dos=d.kd_dos 
                    where  waktu BETWEEN '$from' AND '$end' AND id_matkul ='$id_matkul'
                    ");
                   
                    foreach ($rekap as $dt){
                     
                     
                      $html.= '<tr> 
                    <td>'. $i++ .'</td>
                    <td>'. $dt["kd_dos"] .'</td>
                    <td>'. $dt["nama_dos"] .'</td>
                    <td>'. $dt["nama_mk"] .'</td>
                    <td>'. $dt["jumlah"] .'</td>
                </tr>';

                 }
                }else if($from != 0 AND $end != 0){
                    $rekap = mysqli_query($koneksi, "SELECT d.kd_dos, d.nama_dos, mk.nama_mk,p.waktu, count(p.kd_dos) jumlah
                    FROM dosen d LEFT JOIN presensi p
                    ON d.kd_dos=p.kd_dos 
                    INNER JOIN matkul mk on p.kode_mk=mk.kode_mk and mk.kd_dos=d.kd_dos where waktu BETWEEN '$from' AND '$end'
                    GROUP BY p.kd_dos,p.kode_mk
                    ");
                
                    foreach ($rekap as $dt){
                      
                        $html.= '<tr>
                        <td>'. $i++ .'</td>
                        <td>'. $dt["kd_dos"] .'</td>
                        <td>'. $dt["nama_dos"] .'</td>
                        <td>'. $dt["nama_mk"] .'</td>
                        <td>'. $dt["jumlah"] .'</td>
                    </tr>';
                        

                 }
                }else if($id_matkul != 0){
                    $rekap = mysqli_query($koneksi, "SELECT d.kd_dos, d.nama_dos, mk.nama_mk,p.waktu, count(p.kd_dos) jumlah
                    FROM dosen d LEFT JOIN presensi p
                    ON d.kd_dos=p.kd_dos 
                    INNER JOIN matkul mk on p.kode_mk=mk.kode_mk and mk.kd_dos=d.kd_dos 
                    where id_matkul ='$id_matkul'");
                
                    foreach ($rekap as $dt){
                      
                        $html.= '<tr>
                        <td>'. $i++ .'</td>
                        <td>'. $dt["kd_dos"] .'</td>
                        <td>'. $dt["nama_dos"] .'</td>
                        <td>'. $dt["nama_mk"] .'</td>
                        <td>'. $dt["jumlah"] .'</td>
                    </tr>';
                        

                 }
                }else{
                    $rekap = mysqli_query($koneksi, "SELECT d.kd_dos, d.nama_dos, mk.nama_mk,p.waktu, count(p.kd_dos) jumlah
                    FROM dosen d LEFT JOIN presensi p
                    ON d.kd_dos=p.kd_dos 
                    INNER JOIN matkul mk on p.kode_mk=mk.kode_mk and mk.kd_dos=d.kd_dos
                    GROUP BY p.kd_dos,p.kode_mk
                    ORDER BY d.kd_dos");
                    foreach ($rekap as $dt){
                        

                        $html.= '<tr>
                        <td>'. $i++ .'</td>
                        <td>'. $dt["kd_dos"] .'</td>
                        <td>'. $dt["nama_dos"] .'</td>
                        <td>'. $dt["nama_mk"] .'</td>
                        <td>'. $dt["jumlah"] .'</td>
                </tr>';

                    }
                }

$html .=            '</table> <br>
<p style="float:left;font-size:130%;" >Bogor ........ , ....21<br>
<br>
Kepala Progam Studi Sistem Informasi<br> <br> <br> <br>
<u>Dian Kartika Utami, M.Kom</u><br>
</p>

            
         </body>
         </html>';

$mpdf->WriteHTML($html);
$mpdf->Output('Laporan Pengeluaran.pdf', \Mpdf\Output\Destination::INLINE);
?>