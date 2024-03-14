<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title ?></title>
    <link rel="stylesheet" href="../assets/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>

<body>
    <?php require 'inc.top.html.php' ?>
    <div class="container">
        <div class="row d-flex justify-content-center my-5">
            <div class="col-6">
                <div class="text-center">
                    <h1>Modification du compte</h1>
                </div>
                <form class="my-5" action="" method="POST">
                    <div class="mb-3">
                        <label for="disabledTextInput" class="form-label">Prénom :</label>
                        <input type="text" id="prenom" class="form-control" placeholder="<?= $prenom ?>">
                        <button name="submit_modif_prenom" class="btn btn-warning w-100 my-3" type="submit">Modifier le pseudonyme</button>
                    </div>
                    <div class="mb-3">
                        <label for="disabledTextInput" class="form-label">Nom :</label>
                        <input type="text" id="nom" class="form-control" placeholder="<?= $nom ?>">
                        <button name="submit_modif_nom" class="btn btn-warning w-100 my-3" type="submit">Modifier le pseudonyme</button>
                    </div>
                    <div class="mb-3">
                        <label for="disabledTextInput" class="form-label">Pseudonyme :</label>
                        <input type="text" id="pseudo" class="form-control" placeholder="<?= $pseudo ?>">
                        <button name="submit_modif_pseudo" class="btn btn-warning w-100 my-3" type="submit">Modifier le pseudonyme</button>
                    </div>
                    <div class="mb-3">
                        <label for="disabledTextInput" class="form-label">E-mail :</label>
                        <input type="mail" id="mail" class="form-control" placeholder="<?= $mail ?>">
                        <button name="submit_modif_mail" class="btn btn-warning w-100 my-3" type="submit">Modifier le pseudonyme</button>
                    </div>
                    <div class="mb-3">
                        <label for="disabledTextInput" class="form-label">Mot de passe :</label>
                        <input type="password" id="pwd" class="form-control" placeholder="<?= $pwd ?>">
                        <button name="submit_modif_pwd" class="btn btn-warning w-100 my-3" type="submit">Modifier le pseudonyme</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
    <?php require 'inc.bottom.html.php' ?>
</body>

</html>