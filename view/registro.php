<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Registro</title>
	<script type="text/javascript" src="../js/validarregistro.js"></script>
	
</head>
<body>
	<?php require_once("header.html");?>

	
		<H2>DATOS PERSONALES</H2>
		<hr>
		<div id="info"></div>
		<form name="reg_usuarios" id="reg_usuarios" action="../controller/registrocontroller.php?action=guardar" method="POST" onsubmit="return validar()">
		<div class="col-md-4 col-md-offset-1">
			<label for='nom'>Nombre</label><br>
			<input  type='text' id='nom' name='nom' class='form-control' value=""><br>
			
		
			<label for='ape'>Apellido</label><br><input type='text' id='ape' name='ape' class='form-control' value=""><br>
			
			<label for='gen'>Género</label><br>
			<input type="radio" name="gen" value="1"> Masculino&nbsp;&nbsp;
			<input type="radio" name="gen" value="2"> Femenino<br><br>
		
			<label for='tipo'>Tipo de documento</label><br>
			<select name="tipo" class="form-control" id="tipo">
				<option value="1">Cédula de ciudadanía</option>
				<option value="2">Tarjeta de identidad</option>
				<option value="3">Pasaporte</option>
			</select><br>
		
		
			<label for='num'>Número de documento</label><br><input  type='text' id='num' name='num' class='form-control' value=""><br>
		
		</div>
		<div class="col-md-4 col-md-offset-1">
		
			<label for='fn'>Fecha nacimiento</label><br><input  type='date' id='fn' name='fn' class='form-control' value=""><br>
			<label for='us'>Nombre de usuario</label><br><input  type='text' id='us' name='us' class='form-control' value=""><br>
			<label for='email'>Email</label><br><input  type='email' id='email' name='email' class='form-control' value=""><br>
			<label for='pas'>Contraseña</label><br><input  type='password' id='pas' name='pas' class='form-control' value=""><br>
			<label for='re_pas'>Confirmar Contraseña</label><br><input  type='password' id='re_pas' name='re_pas' class='form-control' value=""><br><br>
			<button type="submit" class="btn btn-success">REGISTRARME</button>
		</div>

		</form>


		<div id='msg' class="col-md-12">
			
		</div>
	
	
</body>

</html>

