<?php
session_start();
$view = 'addUser';
$menu = 'users';
include '../config/config.php';
include '../librairies/dblib.php';

$username ='';
$email='';
$password='';
$confirmation='';
$firstName='';
$lastName='';
$bio='';
$role='';
$error = '';

try{
    if(array_key_exists('username',$_POST)){
        $username = $_POST['username'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $confirmation = $_POST['confirmation'];
        $firstName = $_POST['firstname'];
        $lastName = $_POST['lastname'];
        $bio = $_POST['bio'];
        $role = $_POST['role'];
    
       
        
    ///////////////////////// FIRST NAME 
       if($firstName == ''){
           $error =  'please fill in the field first name.';
        }
       elseif (!ctype_alpha($firstName))
        {
        $error = "Your first name may only contain alphabetical letters";   
        }
    ///////////////////////// LAST NAME
        if($lastName == ''){
            $error =  'please fill in the field last name.';
        }
        elseif (!ctype_alpha($lastName))
        {
        $error = "Your last name may only contain alphabetical letters";   
        }
    ///////////////////////// PASSWORD   
        $password_hash = password_hash($password, PASSWORD_DEFAULT);
        if($confirmation != $password){
            $error =  'please inser the same password';
        }
        if(strlen($password)<PASSWORD_MIN){
        $error = 'please enter 5 characters min in your password';
        }

        if($error == '')
        {
            $dbh = connexion();
        
            $sth = $dbh->prepare("
            INSERT INTO users(username,email,password,firstname,lastname,bio,created_date,role)
            VALUES(:username, :email, :password, :firstname, :lastname, :bio, :date, :role)
            ");
            
            $date = new DateTime();
            $sth->bindValue(':username',$username); 
            $sth->bindValue(':email',$email);
            $sth->bindValue(':password',$password_hash);
            $sth->bindValue(':firstname',$firstName);
            $sth->bindValue(':lastname',$lastName);
            $sth->bindValue(':bio',$bio);
            $sth->bindValue(':date',$date->format('Y-m-d H:i:s'));
            $sth->bindValue(':role',$role);
            $sth->execute();
            header('Location:listUser.php');
        }
    }
}    

catch(PDOException $e){
    echo"Erreur:".$e->getMessage();
}



    // if($error == '')
    // {
    //     //enregistre dans la base
    //     //redirige sur la liste
    // }


include 'tpl/layout.phtml';

?>