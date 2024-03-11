<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Détails</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    <?php require 'templates/inc.top.html.php' ?>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-md-6 my-5">
                <div class="card">
                    <img src="<?= $resultat_auteur['photo'] ?>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><?= $resultat_auteur['prenom'] . ' ' . $resultat_auteur['nom'] ?></h5>
                        <p class="font-weight-bold"><?= $resultat_auteur['date_start'] . ' ' . '/' . ' ' . $resultat_auteur['date_end'] ?></p>
                        <p class="card-text"><?= $resultat_auteur['description'] ?></p>
                    </div>
                </div>
            </div>
            <?php foreach ($resultats_citations as $citations) : ?>
                <div class="card border-dark mb-3 my-4">
                    <div class="card-header"><?= $citations['citation'] ?></div>
                    <div class="card-body">
                        <p class="card-text"><?= $citations['explication'] ?></p>
                        <p class="card-text"><?= $resultat_auteur['nom'] ?></p>
                    </div>
                </div>
            <?php endforeach ?>

        </div>
    </div>



    <?php require 'templates/inc.bottom.html.php' ?>
</body>

</html>