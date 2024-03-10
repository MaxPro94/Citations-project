<?php
require 'data/db-connect.php';
session_start();

$requete = $dbh->query("SELECT * FROM auteur");
$resultats = $requete->fetchAll();

require 'templates/auteurs.html.php';
