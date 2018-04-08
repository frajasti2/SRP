<?php  

	// require_once "Config/Autoload.php";
	// Config\Autoload::run();
	
	// $est = new Models\Paciente();
	// //$est->set("id",1);
	// //$datos = $est->view();
	// //print $datos['NOMBRE'];
	
	// $cedula=1725519902;
	// $nombre= 'Francisco';
	// $apellido = 'Simbana';
	// $sexo = 'Masculino';
	// $fechaN = '31/10/1992';
	// $tipoS = 'O+';
	// $lugN = 1;
	// $lugR = 1;
	// $direccion = "Barrio CHilibulo";
	// $telefono = 2610096;

	// $est->set("cedula",$cedula);
	// $est->set("nombre",$nombre);
	// $est->set("apellido",$apellido);
	// $est->set("sexo",$sexo);
	// $est->set("fechaN",$fechaN);
	// $est->set("tipoS",$tipoS);
	// $est->set("lugN",$lugN);
	// $est->set("lugR",$lugR);
	// $est->set("direccion",$direccion);
	// $est->set("telefono",$telefono);

	// $est->add();
	// $datos=$est->listar();

	// while ($row = pg_fetch_row($datos)) {
 //  echo "Id: $row[0]  Nombre: $row[1] apellido: $row[2] sexo: $row[3]";
 //  echo "<br />\n";}

	define('DS', DIRECTORY_SEPARATOR);
	define('ROOT', realpath(dirname(__FILE__)).DS);
	define('URL', "http://localhost/SRP/");


	require_once "Config/Autoload.php";
	Config\Autoload::run();
	require_once "Views/template.php";
	Config\Enrutador::run(new Config\Request());

	




?>