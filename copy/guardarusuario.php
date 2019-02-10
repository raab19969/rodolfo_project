<?php
require_once("conexion.php");
$nom=$_POST["nom"];
$ape=$_POST["ape"];
$gen=$_POST["gen"];
//$tipo=$_POST["tipo"];
$num=$_POST["num"];
$fn=$_POST["fn"];
$us=$_POST["us"];
$pas=md5($_POST["pas"]);
$email=$_POST["email"];
$re_pas=$_POST["re_pas"];

$sentencia=$gbd->prepare("INSERT INTO `usuarios`(`nombre`, `apellido`,`genero`,`num_documento`,`fecha_nac`,`nom_usuario`,`contrasena`,`email`) VALUES (:nom,:ape,:gen,:num,:fn,:us,:pas,:email)");
 $sentencia->BindParam(':nom',$nom);
 $sentencia->BindParam(':ape',$ape);
 $sentencia->BindParam(':gen',$gen);
 //$sentencia->BindParam(':tipo',$tipo);
 $sentencia->BindParam(':num',$num);
 $sentencia->BindParam(':fn',$fn);
 $sentencia->BindParam(':us',$us);
 $sentencia->BindParam(':pas',$pas);
 $sentencia->BindParam(':email',$email);
 $sentencia->execute();

   header("location:login.php");
?>

