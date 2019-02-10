<?php
if(isset($_GET['action']) && $_GET['action']='guardar'){
	require_once("../model/conexion.php");
	require_once("../model/guardarusuario.php");
	header('location:../view/login.php');
}

else{
	header('location:../view/registro.php');
}

?>