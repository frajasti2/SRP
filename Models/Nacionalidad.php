<?php namespace Models;
	
	 class Nacionalidad
	 {
	 	//atributos
			private $id;
			private $pais;
			private $nacionalidad;
			private $con; 	

	 	public function __construct()
	 	{
	 		$this->con= new Connection();
	 	}

	 	public function set ($atributo, $contenido){
	 		$this->$atributo=$contenido;
	 	}

	 	public function get($atributo){
	 		return $this->$atributo;
	 	}

	 	public function listar(){
	 		$sql="SELECT idnacionalidad, pais FROM nacionalidad";
	 		$datos= $this->con->consultaRetorno($sql);
	 		return $datos;
	 	}	

	 	public function listarProvincia($id){
	 		$sql = "SELECT idprovincia, provincia FROM provincia where idnacionalidad = '".$id."'";

	 		$datos = $this->consultaRetorno($sql);
	 		return $datos;
	 	}

	 	public function listarCiudad($id){
	 		$sql = "select * from canton where idprovincia = ".$id;
	 		$datos = $this->consultaRetorno($sql);
	 		return $datos;
	 	}






	 } 







 ?>