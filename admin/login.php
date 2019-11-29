<?php
session_start();
include '../config/config.php';
include '../librairies/dblib.php';

$view = 'login';
$menu = 'users';
$error = '';



try{
    if(array_key_exists('email',$_POST)){
        $email = $_POST['email'];
        $password = $_POST['password'];
        $dbh = connexion(); 

        $sth = $dbh->prepare("SELECT idusers,email,password FROM users WHERE email = :email");
        $sth->bindvalue(':email',$email);
        $sth->execute();

        $users = $sth-> fetch(PDO::FETCH_ASSOC);
        $passwordVerify = password_verify($password,$users['password']);
        if($passwordVerify == true){
            $_SESSION['connected'] = true;
            $_SESSION['user'] = ['id'=>$users['id'], 'email'=>$users['email'], 'firstname'=>$users['firstname'],'lastname'=>$users['lastname'], 'role'=>['role']];
            header('Location:index.php');
            exit();
        }
        else{
            $error = 'incorect login';
        }
    }  
} 
catch(PDOException $e){
    echo"Erreur:".$e->getMessage();
}
include 'tpl/layout.phtml';
?>