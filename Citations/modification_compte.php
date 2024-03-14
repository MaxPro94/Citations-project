<?php

session_start();

if (isset($_POST['button_modif'])) {
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
    }

    require 'templates/modification_compte.html.php';
}

if (isset($_POST['submit_modif'])) {
    require 'data/db-connect.php';
}
