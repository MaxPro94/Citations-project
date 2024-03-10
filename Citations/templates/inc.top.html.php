<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Max-Citations</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link active" aria-current="page" href="/home.php">Acceuil</a>
                <a class="nav-link" href="/citations.php">Les citations</a>
                <a class="nav-link" href="/auteurs.php">Les philosophes</a>
                <?php if (isset($_SESSION['user_id'])) : ?>
                    <p class="nav-link my-0"><?= $_SESSION['name'] ?></p>
                <?php endif ?>
            </div>
        </div>
    </div>
</nav>