<?php  namespace Views;
	
	$template = new Template();

	class Template
	{
		
		function __construct()
		{
?>
	<!DOCTYPE html>
	<html lang="es">
	<head>
		<meta charset="UTF-8">
		<title>Registro Pacientes</title>
		<link rel="stylesheet" type="text/css" href="<?php echo URL;?>Views/template/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="<?php echo URL;?>Views/template/css/general.css">
	</head>
	<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="#">Gestión Pacientes</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation" style="">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="<?php echo URL; ?>">Inicio <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Pacientes</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Regiones</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Salir</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" placeholder="Buscar" type="text">
      <button class="btn btn-secondary my-2 my-sm-0" type="submit">Buscar</button>
    </form>
  </div>
</nav>


<?php 
		}
	public function __destruct(){
 ?>
	
	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="<?php echo URL; ?>Views/template/js/bootstrap.js"></script>
	</body>
	</html>
<?php
		}
	}


 ?>