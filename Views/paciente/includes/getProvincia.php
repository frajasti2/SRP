<?php 
	require ('../../../Models/Connection.php');
	$con = new Models\Connection();

	$id_nacionalidad = $_POST['id_pais'];

	$query = "select idprovincia, provincia from provincia WHERE idnacionalidad = ".$id_nacionalidad;
	$resultado = $con->consultaRetorno($query);
	

	$html= "<option value='0'>Seleccionar Provincia</option>";
	  while($row = pg_fetch_row($resultado))
	  {
	  	$html.= "<option value='".$row[0]."'>".$row[1]."</option>";
	  }
	echo $html;
 ?>