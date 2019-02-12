<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Registro</title>
</head>
<body>
	<?php require_once("header.html");?>
	<div class="log">
		<form name="login" action="../controller/logincontroller.php?action=gestiontareas" method="POST">
				<div class="col-md-4 col-md-offset-4">
					<label for='us'>Nombre de usuario</label><br>
					<input required type='text' id='us' name='us' class='form-control' value=""><br>
					
				
					<label for='pas'>Contraseña</label><br><input type='password' id='pas' name='pas' class='form-control' value=""><br>

					<input type="submit" name="btn" class="btn btn-success" value="Iniciar sesión">
					
					<div class="danger">
						<?php
						if(isset($_GET['error'])) echo "Error iniciando sesión";
						?>
						<br>
						
					</div>
				
				</div>
				
		</form>		
	</div>

	
	
</body>
</html>

