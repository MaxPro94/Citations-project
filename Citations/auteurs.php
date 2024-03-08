<?php
require 'data/db-connect.php';

$requete = $dbh->query("SELECT * FROM auteur");
$resultats = $requete->fetchAll();

require 'templates/auteurs.html.php';
