<?php // Inclusion de header.php sur la page
require_once(__DIR__.'/partials/header.php'); ?>
<?php require_once(__DIR__.'/config/database.php') ?>


<main>
  <h1 class="page-title">Bienvenue sur WebfLix !</h1> <br>
  <h2 class="main-subtitle">Merci d'utiliser notre interface afin de visionner les films de votre choix.</h2>
  <div class="separation-page-title"></div>
</main>

<section>
<h2 class="category-style">Catégories <br><br> <?php  
foreach($categories as $categorie){
      echo $categorie['name'].'<br>';

      foreach($movies as $movie){
        if ($movie['category_id'] === $categorie['id'])
           echo '<div class="col-md-3">
                    <div class="card mb-4">
                    <div class="card-img-top-container">
                      <img class="card-img-top card-img-top-zoom-effect" src="assets/'.$movie['cover'].'"alt="Card image cap">
                </div>
                    </div>
                    </div>';
      }
    }

?></h2>
</section>



<?php // Inclusion de footer.php sur la page
require_once(__DIR__.'/partials/footer.php');?>





