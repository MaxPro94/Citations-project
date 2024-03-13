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
        <div class="row">
            <div class="col-12 d-flex justify-content-center">
                <img src="<?= $resultatAuteur['photo'] ?>" class="img-fluid my-4 img-thumbnail" alt="..." style="width: 50%">
                <br>
                <br>
                <div>
                    <p class="display-8 py-4 my-5 mx-4 text-center"><?= $resultatAuteur['biographie'] ?></p>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <?php foreach ($resultatCitations as $resultat) : ?>
            <div class="card text-bg-dark mb-3 my-4">
                <div class="card-header">
                    <h5 class="card-title"><?= $resultatAuteur['prenom'] . ' ' . $resultatAuteur['nom'] ?></h5>
                </div>
                <div class="card-body">
                    <p><?= $resultat['citation'] ?></p>
                    <br>
                    <p class="card-text"><?= $resultat['explication'] ?></p>
                </div>
            </div>
        <?php endforeach ?>
    </div>



    <?php require 'inc.bottom.html.php' ?>
</body>

</html>