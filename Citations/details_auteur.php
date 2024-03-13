<?php

if (isset($_GET['id_auteur'])) {
    require 'data/db-connect.php';

    $requete = $dbh->prepare('SELECT * FROM auteur WHERE id_auteur = :id_auteur');
    $requete->execute([
        'id_auteur' => $_GET['id_auteur']
    ]);

    $resultatAuteur = $requete->fetch();
    $title = $resultatAuteur['nom'];

    $requete = $dbh->prepare('SELECT * FROM citations WHERE id_auteur = :id_auteur');
    $requete->execute([
        'id_auteur' => $_GET['id_auteur']
    ]);

    $resultatCitations = $requete->fetchAll();
}

require 'templates/details_auteur.html.php';
