<?php
header("Content-Type: application/xml; charset=UTF-8");
include 'koneksi.php';

$deskripsi = isset($_GET['deskripsi']) ? $_GET['deskripsi'] : '';
$agama = isset($_GET['alamat']) ? $_GET['alamat'] : '';

$query = "SELECT * FROM tempat_wisata WHERE 1";

if($deskripsi) {
    $query .= " AND deskripsi='$deskripsi'";
}

if($alamat) {
    $query .= " AND agama='$alamat'";
}

$result = mysqli_query($koneksi, $query);
if (!$result) {
    die('Query error: ' . mysqli_error($koneksi));
}

$xml = new SimpleXMLElement('<data_wisata/>');

while ($row = mysqli_fetch_assoc($result)) {
    $tempat_wisata = $xml->addChild('tempat_wisata');
    $tempat_wisata->addChild('id', $row['id']);
    $tempat_wisata->addChild('nama', $row['nama']);
    $tempat_wisata->addChild('deskripsi', $row['deskripsi']);
    $tempat_wisata->addChild('alamat', $row['alamat']);
}
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['action']) && $_POST['action'] == 'tambah') {
    $nama = $_POST['nama'];
    $deskripsi = $_POST['deskripsi'];
    $alamat = $_POST['alamat'];
   

    $query = "INSERT INTO tempat_wisata (nama, deskripsi, alamat) VALUES ('$nama', '$deskripsi', '$alamat')";
    if (mysqli_query($koneksi, $query)) {
        echo "<response> Data berhasil ditambahkan! </response>";
    } else {
        echo "<error> Error: " . mysqli_error($koneksi) . " </error>";
    }
    exit;
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['action']) && $_POST['action'] == 'edit') {
        $id = $_POST['id'];
        $nama = $_POST['nama'];
        $deskripsi = $_POST['deskripsi'];
        $alamat = $_POST['alamat'];
        $query = "UPDATE tempat_wisata SET nama='$nama', deskripsi='$deskripsi', alamat='$alamat' WHERE id=$id";
        if (mysqli_query($koneksi, $query)) {
            echo "<response> Data berhasil diupdate! </response>";
        } else {
            echo "<error> Error: " . mysqli_error($koneksi) . " </error>";
        }
        exit;
    }
}

echo $xml->asXML();
?>
