<?php

$host = 'localhost';
$dbName = 'citations';
$pwd = '';
$user = 'root';

try {
    $dbh = new PDO("mysql:host=$host;dbname=$dbName", $user, $pwd, [
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
    ]);
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
