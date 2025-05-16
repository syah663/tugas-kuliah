<?php
// Informasi koneksi database
$servername = "localhost"; 
$username = "root";        // Username database
$password = "";            // Password database
$dbname = "personal_website";

// Membuat koneksi
$conn = new mysqli($servername, $username, $password, $dbname);

// Memeriksa koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}
?>