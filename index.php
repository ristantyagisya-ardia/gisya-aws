<?php
$dsn = 'pgsql:host=db;port=5432;dbname=mydb;';
$user = 'admin';
$password = 'admin';

try {
    $pdo = new PDO($dsn, $user, $password);
    $stmt = $pdo->query('SELECT * FROM mahasiswa');
    echo "<h1>Data Mahasiswa</h1>";
    echo "<table border='1'>";
    echo "<tr><th>Nama</th><th>NIM</th><th>Prodi</th></tr>";
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        echo "<tr><td>{$row['nama']}</td><td>{$row['nim']}</td><td>{$row['prodi']}</td></tr>";
    }
    echo "</table>";
} catch (PDOException $e) {
    echo "Database connection failed: " . $e->getMessage();
}
?>