<?php namespace Models; 

	
	class connection
	{
		
		private $datos = array(
			'host' =>"",
			'port' =>"",
			'user' =>"",
			'pass' =>"",
			'db' =>"" );
		private $link;

		public function __construct()
		{
			$this->link=conexion();
		}

		function conexion(){
			$stringConnection="host='$this->datos['host']' port='$this->datos['port']' dbname='$this->datos['db']' user='$this->datos['user']' password='$this->datos['pass']'";
			
			$link=pg_connect($stringConnection);
			return $link;
		}

		public function consultaSimple($sql){
			$query=pg_query($this->link, $sql);
			if (!query) 
				echo "Error al ejecutar";
		}

		public function consultaRetorno($sql){
			$query=pg_query($this->link, $sql);
			if (!query) 
				echo "Error al ejecutar";
			else
				return $query;
		}

		 public function __destruct(){
			pg_close($this->link);
		}

	}


 ?>