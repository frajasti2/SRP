<?php namespace Controllers;

	use Models\Paciente as Paciente;

	class pacienteController{

		private $paciente;

		public function __construct(){
			$this->paciente = new Paciente();
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
				$this->paciente->set("lugN", $_POST['id_lugN']);
				$this->paciente->set("lugR", $_POST['id_lugR']);
				$this->paciente->set("direccion", $_POST['direccion']);
				$this->paciente->set("telefono", $_POST['telefono']);
				$this->paciente->add();
				print "pendiente el header location";

			}
		}
	}

	$paciente = new pacienteController();

 ?>