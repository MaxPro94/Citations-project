<?php

require 'data/db-connect.php';

$requete = $dbh->query("SELECT * FROM citations");
$resultats = $requete->fetchAll();

require 'templates/citations.html.php';
