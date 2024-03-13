<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Les philosophes</title>
    <link rel="stylesheet" href="../assets/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    <?php require 'inc.top.html.php' ?>
    <div class="container">
        <h1 class="my-5">Les philosophes</h1>

        <?php foreach ($resultats as $resultat) : ?>

            <div class="card mb-3 my-5">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="<?= $resultat['photo'] ?>" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title"><?= $resultat['nom'] ?></h5>
                            <h5 class="card-title"><?= $resultat['prenom'] ?></h5>
                            <br>
                            <br>
                            <br>
                            <p class="card-text"><?= $resultat['description'] ?></p>
                            <br>
                            <br>
                            <p class="card-text"><small class="text-body-secondary"><?= $resultat['date_start'] . ' ' . '/' . ' ' . $resultat['date_end'] ?></small></p>
                            <a href="details_auteur.php?id=<?= $resultat['id_auteur'] ?>" class="btn btn-primary">Détails</a>
                        </div>
                    </div>
                </div>
            </div>
        <?php endforeach ?>
    </div>
</body>

</html>