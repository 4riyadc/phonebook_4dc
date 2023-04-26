<?php 
$namaserver = "localhost";
$username = "root";
$passwd = "";
$namadb="test";

$koneksi = mysqli_connect($namaserver,$username,$passwd,$namadb);
//periksa koneksi berhasil atau tidak
if(!$koneksi){
    die("Koneksi database gagal" . mysqli_connect_error());
}
//echo "koneksi berhasil";
?>
