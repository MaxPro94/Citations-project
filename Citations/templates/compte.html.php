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
        <div class="row d-flex justify-content-center align-items-center">
            <div class="col-12  my-3">
                <h1 class="text-center">Welcome home <?= $prenom . " " . $nom ?></h1>
                <h4 class="mt-5">Votre image de profil :</h4>
                <div class="d-flex justify-content-center align-items-center">
                    <img class="img-fluid img-thumbnail my-4" src="<?= $img ?>" alt="">
                    <p class="text-center p-4"><?= $resultat_img['description'] ?></p>
                </div>
                <h3 class="mt-5">Vous faites parti des <?= $droit ?></h3>
                <div class="my-4">
                    <form action="/modification_compte.php" method="POST">
                        <button name="button_modif" class="btn btn-warning" type="submit">Modifier mon compte</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <?php require 'inc.bottom.html.php' ?>
</body>

</html>