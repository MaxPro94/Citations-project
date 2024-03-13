<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>†</title>
    <link rel="stylesheet" href="../assets/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    <?php require 'inc.top.html.php' ?>
    <div class="bg-image" style="background-image: url('/assets/img/temple.bak.jpg'); width: 100%">
        <div class="container">

            <div class="row justify-content-center">

                <div class="col-12 col-md-6 my-5">
                    <div class="card">
                        <img src="<?= $photoAuteur ?>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">"<?= $citation ?>"</h5>
                            <p class="font-weight-bold"><?= $nomAuteur ?></p>
                            <p class="font-weight-bold"><?= $naissanceAuteur . ' ' . '/' . ' ' . $mortAuteur ?></p>
                            <a href="detail.php?id=<?= $id_auteur ?>&id_citation=<?= $id_citation ?>" class="btn btn-primary">Détails</a>
                        </div>
                    </div>
                    <hr>
                    <div class="progress" id="blips">
                        <div class="progress-bar" role="progressbar">
                            <span class="sr-only"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
<?php require 'inc.bottom.html.php' ?>
<script src="/lib-js/progress-bar.js"></script>

</html>