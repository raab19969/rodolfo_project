<?php
require_once("../model/validarusuario.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/estilo.css">
	<title>Document</title>
</head>
<body>
	<div class="container col-md-12">
		<div class="panel panel-default">
            	
                <div class="panel-heading">
                	LISTA DE TAREAS<span class="pull-right"><?php echo $_SESSION['usuario'];?><a href="logout.php">Cerrar Sesión</a></span>

                </div>
               
				<div class="panel-body">
					<?php

					$sql=$gbd->prepare("SELECT * FROM tareas WHERE usuario=:usua");
					$sql->BindParam(':usua',$_SESSION['id_usuario']);
					$sql->execute();
					$reg=$sql->fetchAll(PDO::FETCH_ASSOC);
					$numrows= $sql->rowCount();
										
					?>
                	<table class="table table-hover table-striped">
                		<thead>
                			<tr>
                				<th>Acciones</th>
                				<th>Descripción</th>
                                <th>Responsable</th>
                                <th>Fecha de Publicacion</th>
                                <th>Fecha de Recordatorio</th>
                			</tr>
                		</thead>
                		<tbody>
							<?php
							for ($i=0; $i < $numrows; $i++)
							{
								echo '<tr><td>'.
								'<a href="#">'.'<i class="glyphicon glyphicon-edit"></i><i class="glyphicon glyphicon-remove"></i></a>'.
								'<td>'.	$reg[$i]['descripcion'].'<td>'. $reg[$i]['responsable'].'<td>'. $reg[$i]['fecha_publicacion'].'<td>'. $reg[$i]['fecha_recordatorio'].'</td></tr>';

							}

							?>

                			<!--<tr>
                				<td>
                					<a href="#">
                					<i class="glyphicon glyphicon-edit"></i>
                					<i class="glyphicon glyphicon-remove"></i>
                					</a>
                				</td>
                				<td>tarea N°1</td>
                			</tr>-->
                		</tbody>
                	</table>


                </div>
                
                <div class="panel-footer">
                	
                	XYZ
                </div>
            	
                	
            </div>
	</div>	
</body>
</html>