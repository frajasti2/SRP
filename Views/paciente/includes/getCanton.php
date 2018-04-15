<?php 
	require ('../../../Models/Connection.php');
	$con = new Models\Connection();

	$id_provincia = $_POST['id_provincia'];

	$query = "select idcanton, canton  from canton WHERE idprovincia = ".$id_provincia;
	$resultado = $con->consultaRetorno($query);
	

	$html= "<option value='0'>Seleccionar Ciudad</option>";
	  while($row = pg_fetch_row($resultado))
	  {
	  	$html.= "<option value='".$row[0]."'>".$row[1]."</option>";
	  }
	echo $html;
 ?>