<?php
require 'data/db-connect.php';
if (isset($_POST['submit_login_connex'])) {
    $errors = [];

    if (empty($_POST['email']) || strlen($_POST['email']) <= 1) {
        $errors['email'] = "Le champs e-mail doit être remplie et doit comporter plus d'un caractère.";
    }

    if (empty($_POST['password'])) {
        $errors['password'] = "Le champs mot de passe doit êtrer renseigner.";
    }

    if (empty($errors)) {
        $email = $_POST['submit_login_connex'];
        $pwd = $_POST['password'];

        $requete = $dbh->prepare("SELECT * FROM utilisateur WHERE mail = '$email'");
        $requete->execute();
        $utilisateur = $requete->fetch();

        if ($utilisateur) { // Si la variable utilisateur est true (elle devient true si un resultat est renvoyer apres la requete) 
            if (password_verify($pwd, $utilisateur['motdepasse'])) {
                session_start();
                $_SESSION['user_id'] = $utilisteur['id_utilisateur'];
                $_SESSION['name'] = $utilisteur['nom_compte'];

                header('Location: home.php');
            }
        }
    }
}




require 'templates/home.html.php';
