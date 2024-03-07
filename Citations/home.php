<?php
require 'data/db-connect.php';

$requete = $dbh->prepare("SELECT * FROM citation ORDER BY RAND() LIMIT 1");
$requete->execute();

$resultat = $requete->fetch();

if ($resultat) {
    $citation = $resultat['citation'];
    $id_auteur = $resultat['id_auteur'];

    if (!empty($citation) && !empty($auteur)) {
        $requeteAuteur = $dbh->prepare("SELECT auteur.nom, auteur.date_start, auteur.date_end, auteur.photo FROM auteur JOIN citations WHERE citations.$id_auteur = auteur.id_auteur;");
        $requeteAuteur->execute();
        $resultatAuteur->fetch();

        $nomAuteur = $requeteAuteur['nom'];
        $naissanceAuteur = $requeteAuteur['date_start'];
        $mortAuteur = $requeteAuteur['date_end'];
        $photoAuteur = $requeteAuteur['photo'];
    }
}

require 'templates/home.html.php';
