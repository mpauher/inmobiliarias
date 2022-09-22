<?php
require_once('./classes/dbConnection.php');

$db = new DBConnection('localhost','root','password','nivelacion', 3306);
$db->connect();
