<?php namespace Models; 

	
	class Connection
	{
		
		private $datos = array(
			'host' =>"127.0.0.1",
			'port' =>"5433",
			'user' =>"db_hbo",
			'pass' =>"hpbo.2018",
			'db' =>"SRP" );
		private $link;

		public function __construct()
		{
			  $stringConnection="host=".$this->datos['host']." port=".$this->datos['port']. " dbname=".$this->datos['db']. " user=".$this->datos['user']. " password=".$this->datos['pass'];
			$this->link = pg_connect($stringConnection) or die("Error al conectar con el DB".pg_last_error());
		}

		
		public function consultaSimple($sql){
			$query=pg_query($this->link, $sql);
			if (!$query) 
				echo "Error al ejecutar query";
		}

		public function consultaRetorno($sql){
			$query=pg_query($this->link, $sql);
			if (!$query) 
				echo "Error al ejecutar query";
			else
				return $query;
		}

		 public function __destruct(){
			pg_close($this->link);
		}

	}


 ?>