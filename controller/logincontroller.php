<?php
if(isset($_GET['action']) && $_GET['action']=='gestiontareas'){
	
	header('location:../view/gestiontareas.php');
}
else{
header('location:../view/login.php');
}
?>