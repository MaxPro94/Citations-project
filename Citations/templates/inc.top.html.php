<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <?php if (isset($_SESSION['user_id'])) : ?>
            <a class="navbar-brand">Well, hello <?= $_SESSION['name'] ?></a>
        <?php endif ?>
        <?php if (!isset($_SESSION['user_id'])) : ?>
            <a class="navbar-brand">Well, hello buddy</a>
        <?php endif ?>

        <?php if (isset($_SESSION['user_id'])) : ?>
            <img src="<?= $_SESSION['img'] ?>" width="50" height="50" class="d-inline-block align-top border border-dark rounded mx-2" alt="">
        <?php endif ?>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link active mx-1" aria-current="page" href="/home.php">Acceuil</a>
                <a class="nav-link mx-1" href="/citations.php">Les citations</a>
                <a class="nav-link mx-1" href="/auteurs.php">Les philosophes</a>
                <?php if (!isset($_SESSION['user_id'])) : ?>
                    <a href="/inscription.php" id="hover" class="nav-link">Inscription</a>
                    <a href="/index.php" id="hover" class="nav-link">Connexion</a>
                <?php endif ?>
                <?php if (isset($_SESSION['user_id'])) : ?>
                    <a class="nav-link mx-1" href="/compte.php">Mon compte</a>
                <?php endif ?>
                <?php if (isset($_SESSION['user_id'])) : ?>
                    <a class="nav-link mx-1" href="/deconnexion.php">Déconnexion</a>
                <?php endif ?>

            </div>
        </div>
    </div>
</nav>