<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Les citations</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>

<body>
    <?php require 'templates/inc.top.html.php' ?>
    <div class="container">
        <?php foreach ($resultats as $resultat) : ?>
            <div class="card text-bg-dark mb-3 my-4">
                <div class="card-header">
                    <h5 class="card-title"><?= $resultat['prenom'] . ' ' . $resultat['nom'] ?></h5>

                </div>
                <div class="card-body">
                    <p><?= $resultat['citation'] ?></p>
                    <br>
                    <p class="card-text"><?= $resultat['explication'] ?></p>
                </div>
            </div>
        <?php endforeach ?>
    </div>

</body>
<?php require 'templates/inc.bottom.html.php' ?>

</html>