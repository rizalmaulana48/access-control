<?php
require_once __DIR__ . '../vendor/autoload.php';
include "koneksi.php";

$from=$_POST['awal'];
$end=$_POST['akhir'];


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
            <tr> <td><p style="float:left;font-size:120%;" >Kode Ruang</td><td> :</td><td><p style="float:left;font-size:120%;" >LABKOM</td></tr>
            <tr> <td><p style="float:left;font-size:120%;" >Nama Ruang</td><td> :</td><td><p style="float:left;font-size:120%;" >Labkom TK 2</td></tr>
            </table>
            <br>
            <table  border="1" cellpadding="10" cellspacing="0">
                <tr>
                <th scope="col">No</th>
                <th scope="col">Nama </th>
                <th scope="col">Tanggal</th>
                <th scope="col">No Kartu</th>
                <th scope="col">Waktu Masuk</th>
                <th scope="col">Waktu Keluar</th>
                <th scope="col">Status</th>
                <th scope="col">Kegiatan</th>
                <th scope="col">Gambar</th>
                </tr>';
                $i=1;
                if( $from != 0 AND $end !=0){
                    $rekap = mysqli_query($koneksi, "SELECT * FROM akses_kontrol INNER JOIN ruang ON ruang.id_ruang = akses_kontrol.id_ruang WHERE ruang.id_ruang='7' AND tanggal BETWEEN '$from' AND '$end'");
                    foreach ($rekap as $dt){                            
                      $html.= '<tr> 
                    <td>'. $i++ .'</td>
                    <td>'. $dt["nama"] .'</td>
                    <td>'. date('d F Y', strtotime($dt["tanggal"])) .'</td>
                    <td>'. $dt["nokartu"] .'</td>
                    <td>'. $dt["waktu_masuk"] .'</td>
                    <td>'. $dt["waktu_keluar"] .'</td>
                    <td>'. $dt["status"] .'</td>
                    <td>'. $dt["kegiatan"] .'</td>
                    <td ><img alt="" width="50px" height="50px" src="../assets/images/uploader/'.$dt["gambar"].'"></td>
                </tr>';
                
                 }
                }else{
                    $rekap = mysqli_query($koneksi, "SELECT * FROM akses_kontrol INNER JOIN ruang ON ruang.id_ruang = akses_kontrol.id_ruang WHERE ruang.id_ruang='7'");
                    foreach ($rekap as $dt){
                        $html.= '<tr> 
                    <td>'. $i++ .'</td>
                    <td>'. $dt["nama"] .'</td>
                    <td>'. date('d F Y', strtotime($dt["tanggal"])) .'</td>
                    <td>'. $dt["nokartu"] .'</td>
                    <td>'. $dt["waktu_masuk"] .'</td>
                    <td>'. $dt["waktu_keluar"] .'</td>
                    <td>'. $dt["status"] .'</td>
                    <td>'. $dt["kegiatan"] .'</td>
                    <td ><img alt="" width="50px" heigth="50px" src="../assets/images/uploader/'.$dt["gambar"].'"></td>
                </tr>';

                    }
                }

$html .=            '</table><br>
                    <p style="float:left;font-size:130%;" >Bogor ........ , ....21<br>
                    Kepala Laboratorium <br>
                    <br> <br> <br> <br>
                    <u>	Akbar Sugih Miftahul Huda, M.Kom.</u><br>
                    </p>
                    </body>
                    </html>';

$mpdf->WriteHTML($html);
$mpdf->Output('Laporan Pengeluaran.pdf', \Mpdf\Output\Destination::INLINE);
?>