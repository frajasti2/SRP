<?php namespace Models;

	class Paciente
	{
		//atributos
		private $cedula;
		private $nombre;
		private $apellido;
		private $sexo;
		private $fechaN;
		private $tipoS;
		private $lugN;
		private $lugR;
		private $direccion;
		private $telefono;
		private $con;


		public function __construct()
		{
			$this->con = new Connection();
		}

		public function set ($atributo, $contenido){
			$this->$atributo = $contenido;
		}

		public function get ($atributo){
			return $this->$atributo;
		}

		public function listar(){
			$sql = "select * from paciente";
			$datos = $this->con->consultaRetorno($sql);
			return $datos;
		}

		public function add(){
			$sql = "select insert_paciente($this->cedula, '$this->nombre','$this->apellido', '$this->sexo', '$this->fechaN','$this->tipoS',$this->lugN, $this->lugR,'$this->direccion',$this->telefono)";
			$datos = $this->con->consultaSimple($sql);
		}




	}





 ?>