<?php

require 'data/db-connect.php';
session_start();

$requete = $dbh->query("SELECT * FROM citations JOIN auteur WHERE citations.id_auteur = auteur.id_auteur");
$resultats = $requete->fetchAll();

require 'templates/citations.html.php';
