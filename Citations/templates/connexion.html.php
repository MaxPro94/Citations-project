<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bienvenue !</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-12 col-md-4">
                <h1>Connexion</h1>
                <form action="verif_form.php" method="POST">
                    <label for="email" class="form-label">Email:</label>
                    <input required type="email" class="form-control" name="email" id="email" placeholder="MarcAurele@gmail.ro">
                    <br>
                    <label for="password" class="form-label">Mot de passe:</label>
                    <input required type="password" class="form-control" name="password" id="password">
                    <br>
                    <button type="submit" class="btn btn-primary" name="submit_login_connex">
                </form>
                <br>
                <a href="inscription.php">Vous n'avez pas de compte ?</a>

            </div>
        </div>
    </div>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</html>