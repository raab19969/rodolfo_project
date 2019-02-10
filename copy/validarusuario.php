<?php
session_start();
require_once("conexion.php");
$usua=$_POST["us"];
$cont=md5($_POST["pas"]);
$_SESSION["usuario"] = $usua;
$_SESSION["contrasena"] = $cont;




$sql=$gbd->prepare("SELECT * FROM usuarios WHERE nom_usuario=:usua AND contrasena=:cont");
$sql->BindParam(':usua',$_SESSION['usuario']);
$sql->BindParam(':cont',$_SESSION['contrasena']);
$sql->execute();
$reg=$sql->fetchAll(PDO::FETCH_ASSOC);
$numrows= $sql->rowCount();
if($numrows==0){
	//print_r($sql);
	//print_r($reg);
	/*print_r($reg[0]);echo "<h1>BD</h1>";
	print($reg[0]['nom_usuario'])."<br>";
	print($reg[0]['contrasena']);
	print "<h1>FORMULARIO</h1>";
	print($usua)."<br>";
	print($cont)."<br>";*/

	//print $reg[0]['nom_usuario'];
	header('location:login.php?error');

}
else{

	$_SESSION["id_usuario"] = $reg[0]['id'];
}




//echo $cont;
?>