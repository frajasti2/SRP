<?php namespace Controllers;

	use Models\Paciente as Paciente;
	use Models\Nacionalidad as Nacionalidad;

	class pacienteController{

		private $paciente;
		private $nacionalidad;

		public function __construct(){
			$this->paciente = new Paciente();
			$this->nacionalidad = new Nacionalidad();
		}

		public function index(){
			
		}

		public function agregar(){
			if (!$_POST) {
				print "pendiente determinar index para metodo";
			}else{
				$this->paciente->set("cedula", $_POST['cedula']);
				$this->paciente->set("nombre", $_POST['nombre']);
				$this->paciente->set("apellido",$_POST['apellido']);
				$this->paciente->set("sexo",$_POST['sexo']);
				$this->paciente->set("fechaN",$_POST['fechaN']);
				$this->paciente->set("tipoS", $_POST['tipoS']);
				$this->paciente->set("lugN", $_POST['cbx_canton']);
				$this->paciente->set("lugR", $_POST['cbx_ciudad2']);
				$this->paciente->set("direccion", $_POST['direccion']);
				$this->paciente->set("telefono", $_POST['telefono']);
				$datos = $this->paciente->add();
				return $datos;
				print "pendiente el header location";
				header("Location: " . URL . "paciente");

			}
		}

		 public function listar(){
		 	$datos = $this->paciente->buscar($_POST['atributo'] , $_POST['contenido'] );
		 	return $datos;
		 }


		 public function listarPais(){
		 	$datos = $this->nacionalidad->listar();
		 	return $datos;

		 }
	}

	$paciente = new pacienteController();

 ?>