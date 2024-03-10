<?php
require 'data/db-connect.php';
session_start();


if (isset($_GET['id'])) {

    $requete_auteur = $dbh->prepare("SELECT * FROM auteur WHERE id_auteur = :id_auteur");
    $requete_auteur->execute([
        ':id_auteur' => $_GET['id']
    ]);
    $resultat_auteur = $requete_auteur->fetch();

    $requete_citations = $dbh->prepare("SELECT * FROM citations WHERE id_auteur = :id_auteur");
    $requete_citations->execute([
        ':id_auteur' => $_GET['id']
    ]);
    $resultats_citations = $requete_citations->fetchAll();

    require 'templates/details.html.php';
}
