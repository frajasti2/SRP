<div class="box-principal">
	<h2 class="titulo">Buscar Paciente<hr></h2>
	<div class="jumbotron">
			<div class="card-hearder">
				<h4>Buscar Paciente</h4>
			</div>
			<div class="card-body">
			<form action="<?php echo URL; ?>paciente/listar" method="POST">
			<fieldset>
				  <div class="form-group">
				    <select class="custom-select" name="atributo" required>
				      <option value="">Seleccione un filtro</option>
				      <option value="apellido">Apellidos</option>
				      <option value="nombre">Nombres</option>
				      <option value="cedula">Cedula</option>
				    </select>
  				</div>
		  		<div class="form-group has-success">
		 			 <label class="form-control-label" for="inputSuccess1">Ingrese Datos</label>
		  			<input  class="form-control is-valid" name="contenido" type="text" required>
				</div>
				<button  type="submit" class="btn btn-primary" >Buscar</button>
			</fieldset>
			</form>
			</div>
	</div>
	
</div>