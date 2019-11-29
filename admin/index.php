<?php
session_start();
$view = 'index';
$menu = 'users';

include '../config/config.php';
include '../librairies/dblib.php';





include 'tpl/layout.phtml';
?>