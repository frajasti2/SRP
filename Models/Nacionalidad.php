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

	 	public function listar($sql){
	 		$datos= $this->con->consultaRetorno($sql);
	 		return $datos;
	 	}	






	 } 







 ?>