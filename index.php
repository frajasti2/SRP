<?php  

	require_once "Config/Autoload.php";
	Config\Autoload::run();

	$est = new Models\Nacionalidad();
	//$est->set("id",1);
	//$datos = $est->view();
	//print $datos['NOMBRE'];
	
	$sql="SELECT * FROM nacionalidad";

	$datos=$est->listar($sql);

	while ($row = pg_fetch_row($datos)) {
  echo "Id: $row[0]  Pais: $row[1] Nacionalidad: $row[2]";
  echo "<br />\n";}

?>