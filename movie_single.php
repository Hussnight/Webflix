<?php
// Inclusion de database.php sur la page
require_once(__DIR__.'/config/database.php');
// Inclusion de header.php sur la page
require_once(__DIR__.'/partials/header.php');

?>
<?php $movie = $query->fetch(); ?>
































<?php // Inclusion de footer.php sur la page
require_once(__DIR__.'/partials/footer.php');?>