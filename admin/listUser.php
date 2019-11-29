<?php
session_start();
include '../config/config.php';
include '../librairies/dblib.php';

$view = 'listUser';
$menu = 'users';


try{
    $dbh = connexion();
        
        $sth = $dbh->prepare("SELECT * FROM users ORDER BY idusers");
    $sth->execute();
    $users = $sth->fetchAll(PDO::FETCH_ASSOC); 
}
catch(PDOException $e){
    echo"Erreur:".$e->getMessage();
}
include 'tpl/layout.phtml';
?>