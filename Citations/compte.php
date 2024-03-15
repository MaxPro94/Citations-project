<?php
session_start();


if (isset($_SESSION['user_id'])) {
    require 'data/db-connect.php';

    $userID = $_SESSION['user_id'];
    $pseudo = $_SESSION['name'];
    $title = "Compte de" . " " . $pseudo;

    $requete = $dbh->prepare('SELECT * FROM utilisateur WHERE id_utilisateur = :id_utilisateur');
    $requete->execute([
        'id_utilisateur' => $userID
    ]);
    $resultat = $requete->fetch();

    $nom = $resultat['nom'];
    $prenom = $resultat['prenom'];
    $mail = $resultat['mail'];
    $droit = $resultat['id_droit'];
    $pwd = $resultat['motdepasse'];

    if ($droit === 1) {
        $droit = "Bellatores (Les nobles (prince, seigneurs, chevaliers)";
    }
    if ($droit === 2) {
        $droit = "Laboratores (Les paysans, les tenanciers/vilains)";
    }
    if ($droit === 3) {
        $droit = "Oratores (Hommes pieux, le clergé)";
    }


    require 'templates/compte.html.php';
}
