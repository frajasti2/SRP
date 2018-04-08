<?php namespace Config;

	class Enrutador{
		public static function run(Request $request){
			$controlador = $request->getControlador()."Controller";
			$ruta = ROOT . "Controllers". DS.$controlador.".php";

			$metodo = $request->getMetodo();
			if($metodo == "index.php")
				$metodo = "index";

			$argumento = $request->getArgumento();
			if(is_readable($ruta)){
				require_once $ruta;
				$motrar = "Controllers\\".$controlador;
				$controlador = new $motrar;
				if(!isset($argumento)){
					$datos = call_user_func(array($controlador, $metodo));
				}else{
					$datos = call_user_func_array($controlador, $metodo, $agumento);
				}
			}

			//Cargar vista
			$ruta = ROOT."Views".DS.$request->getControlador().DS.$request->getMetodo().".php";
			if(is_readable($ruta))
				require_once $ruta;
			else
				print "No se encontro la vista";

		}
	}

 ?>