<?php
require_once __DIR__ . '../vendor/autoload.php';
include "koneksi.php";
$rekap= mysqli_query($koneksi, "SELECT * FROM asdos");
                   
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
        <body style=" font-family: Times, serif; , font-size: 8px;">
     <img src="img/logo.png" style="padding:0 0 0 10px; float:left;  width: 80px; height: 80px;">
     <p style="text-align:center;font-size:130%;" ><b>SISTEM INFORMASI KEAMANAN SEKOLAH VOKASI<br>YAYASAN PAKUAN SILIWANGI UNIVERSITAS PAKUAN</b><br>
    Jl. Pakuan PO. BOX 542 Bogor 16143 Telp (0251) 8362701 (Hunting)<br>
    http://vokasi.unpak.ac.id email: sekretariat.diploma3@unpak.ac.id</p>
            <hr>
            <table>
            <tr> <td style="padding-left: 270px;text-align: center;"><h2 style="text-transform: capitalize;">Data Asisten Dosen <br></h2></td></tr>
            </table>
            <br>
            <table  border="1" cellpadding="10" cellspacing="0">
                <tr>
                <th scope="col">No</th>
                <th scope="col">Nama</th>
                <th scope="col">Kode Asdos</th>
                <th scope="col">No Kartu</th>
                <th scope="col">No HP</th>
                <th scope="col">Jenis Kelamin</th>
              
                <th scope="col">Alamat</th>
                <th scope="col">Foto</th>
               
                
                </tr>';
                $i=1;          
                foreach ($rekap as $dt){              
                      $html.= '<tr> 
                    <td>'. $i++ .'</td>
                    <td>'. $dt["nama"] .'</td>
                    <td>'. $dt["kode_asdos"] .'</td>
                    <td>'. $dt["nokartu"] .'</td>
                    <td>'. $dt["nohp"] .'</td>
                    <td>'. $dt["jk"] .'</td>
                    <td>'. $dt["alamat"] .'</td>
                    <td ><img alt="" width="50px" height="50px" src="../assets/images/uploader/'.$dt["foto"].'"></td>
                </tr>';
                
                }

                $html .=            '</table><br>
                <p style="float:left;font-size:130%;" >Bogor .......... , ....21<br>
                Ketua Program Studi<br>
                Sistem Informasi <br>
                <br> <br> <br> <br>
                <u>	Dian Kartika Utami, M.Kom.</u><br>
                </p>
                </body>
                </html>';

$mpdf->WriteHTML($html);
$mpdf->Output('Laporan Data Asisten Dosen.pdf', \Mpdf\Output\Destination::INLINE);
?>