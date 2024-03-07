<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>†</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-md-6">
                <div class="card" style="width: 25%">
                    <img src="<?= $photoAuteur ?>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><?= $nomAuteur ?></h5>
                        <p class="card-text"><?= $naissanceAuteur . '/' . $mortAuteur ?></p>
                        <a href="#" class="btn btn-primary">Description</a>
                    </div>
                </div>

            </div>
        </div>
    </div>

</body>

</html>