<?php
$db = new PDO('mysql:host=localhost; dbname=webflix; charset=utf8',  'root', '');

$query = $db->query('SELECT * FROM category');
$categories = $query->fetchAll();

$query = $db->query('SELECT * FROM movie');
$movies = $query->fetchAll();