<?php
// Inclusion de header.php sur la page
require_once(__DIR__.'/config/database.php');
require_once(__DIR__.'/partials/header.php');

?>


<main>
  <h1 class="page-title">Bienvenue sur WebfLix !</h1> <br>
  <h2 class="main-subtitle">Merci d'utiliser notre interface afin de visionner les films de votre choix.</h2>
  <div class="separation-page-title"></div>
</main>

<section>
<h2 class="category-style">Catégories</h2> <br><br> <?php  
foreach($categories as $categorie){
      echo '<h3 style="margin-left: 30px; font-size: 20px ; color: lightgrey; ">'.$categorie['name'].'</h3>'.'<br>';

      foreach($movies as $movie){
        if ($movie['category_id'] === $categorie['id'])
           echo '
           <div class="global">
           <div class="text-center"><a href="movie_single.php?id='.$movie['id'].'"><img class="img-taille card-img-top card-img-top-zoom-effect" src="assets/'.$movie['cover'].'"alt="Card image cap"><br> </a></div>
            
           
           </div>';
          }echo '<br>'.'<br>'.'<br>';             
                    
        }
                
       
                  

?>
</section>



<?php // Inclusion de footer.php sur la page
require_once(__DIR__.'/partials/footer.php');?>





