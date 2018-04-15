<?php $pais = $paciente->listarPais(); ?>
<?php $pais2 = $paciente->listarPais(); ?>
<!DOCTYPE html>
<html>


<head>
<script language="javascript" src="<?php echo URL;?>Views/template/js/jquery-3.3.1.min.js"></script>
<body>
<script language="javascript">
	$(document).ready(function(){
				$("#cbx_pais").change(function () {
 
					$('#cbx_canton').find('option').remove().end().append('<option value="whatever"></option>').val('whatever');
					
					$("#cbx_pais option:selected").each(function () {
						id_pais = $(this).val();
						$.post("<?php echo URL; ?>Views/paciente/includes/getProvincia.php", { id_pais: id_pais }, function(data){
							$("#cbx_provincia").html(data);
						});            
					});
				})
			});	

		$(document).ready(function(){
				$("#cbx_provincia").change(function () {
					$("#cbx_provincia option:selected").each(function () {
						id_provincia = $(this).val();
						$.post("<?php echo URL; ?>Views/paciente/includes/getCanton.php", { id_provincia: id_provincia }, function(data){
							$("#cbx_canton").html(data);
						});            
					});
				})
			});

		$(document).ready(function(){
				$("#cbx_pais2").change(function () {
 
					$('#cbx_canton2').find('option').remove().end().append('<option value="whatever"></option>').val('whatever');
					
					$("#cbx_pais2 option:selected").each(function () {
						id_pais = $(this).val();
						$.post("<?php echo URL; ?>Views/paciente/includes/getProvincia.php", { id_pais: id_pais }, function(data){
							$("#cbx_provincia2").html(data);
						});            
					});
				})
			});	

		$(document).ready(function(){
				$("#cbx_provincia2").change(function () {
					$("#cbx_provincia2 option:selected").each(function () {
						id_provincia = $(this).val();
						$.post("<?php echo URL; ?>Views/paciente/includes/getCanton.php", { id_provincia: id_provincia }, function(data){
							$("#cbx_canton2").html(data);
						});            
					});
				})
			});
</script>

</head>
<div class="box-principal">
	<h2 class="titulo">Agregar Paciente</h2>
	<div class="jumbotron">
		<div class="card-hearder">
		<h4>Plantilla de datos</h4>	
		</div>
		<div class="card-body">
			<form action="" method="POST" accept-charset="utf-8">
				<fieldset>
					<div class="form-group">
						<div class="form2-inline-item">
							<label class="exampleInputEmail1">Cedula</label>
		  			<input  class="form-control" name="cedula" placeholder="Ingrese Cedula" type="number">		
						</div>
		 			 
		  			<div class="form2-inline-item">
						<label class="exampleInputEmail1" >Telefono</label>
						<input  class="form-control" name="telefono" placeholder="Ingrese Telefono" type="number" required>
					</div>
				</div>
				<div class="form-group">
					<div class="form3-inline-item">
						<label class="exampleInputEmail1">Apellidos</label>
						<input  class="form-control" name="apellido" placeholder="Ingrese Apellidos" type="text" required>
					</div>
					<div class="form3-inline-item">
						<label class="exampleInputEmail1">Nombres</label>
						<input  class="form-control" name="nombre" placeholder="Ingrese Nombres" type="text" required>
					</div>
					<div class="form3-inline-item">
						<label class="exampleInputEmail1">Tipo Sangre</label>
						<select class="custom-select" name="tipoS">
				      <option selected="">Tipo Sangre</option>
				      <option value="O+">O+</option>
				      <option value="O-">O-</option>
				      <option value="A+">A+</option>
				      <option value="A-">A-</option>
				      <option value="B+">B+</option>
				      <option value="B-">B-</option>
				      <option value="AB+">AB+</option>
				      <option value="AB-">AB-</option>
				    </select>
					</div>
				</div>
					<div class="form-group">
						<div class="form3-inline-item">
							<label class="exampleInputEmail1">Sexo</label>
							<select class="custom-select" name="sexo">
				      <option selected="">Seleccione</option>
				      <option value="Femenino">Femenino</option>
				      <option value="Masculino">Masculino</option>
				    </select>
						</div>
		  			<div class="form3-inline-item">
						<label class="exampleInputEmail1">Fecha Nacimiento</label><input  class="form-control" name="fechaN"  type="date" required>
					</div>
				</div>
			
					<label class="exampleInputEmail1">Lugar de Nacimiento</label>
				
				<div class="form-group">
					
					<div class="form3-inline-item">
						<label class="exampleInputEmail1">Pais</label>
						<select class="custom-select" name="cbx_pais" id="cbx_pais">
							<option value="0">Seleccione Pais</option>}
							option
							<?php while ($row = pg_fetch_row($pais)) {
						     ?>
				      <option value="<?php echo $row[0]; ?>" ><?php echo $row[1];?></option>
				      
				      <?php } ?>
				    </select>
					</div>
					<div class="form3-inline-item">
						<label class="exampleInputEmail1">Provincia</label>
						<select class="custom-select" name="cbx_provincia" id="cbx_provincia">
				    </select>
					</div>
					<div class="form3-inline-item">
						<label class="exampleInputEmail1">Ciudad</label>
						<select class="custom-select" name="cbx_canton" id="cbx_canton">
				    </select>
					</div>

				</div>
				<label class="exampleInputEmail1">Lugar de Residencia</label>
				
				<div class="form-group">
					
					<div class="form3-inline-item">
						<label class="exampleInputEmail1">Pais</label>
						<select class="custom-select" name="cbx_pais2" id="cbx_pais2">
							<option value="0">Seleccione Pais</option>}
							option
							<?php while ($row = pg_fetch_row($pais2)) {
						     ?>
				      <option value="<?php echo $row[0]; ?>" ><?php echo $row[1];?></option>
				      
				      <?php } ?>
				    </select>
					</div>
					<div class="form3-inline-item">
						<label class="exampleInputEmail1">Provincia</label>
						<select class="custom-select" name="cbx_provincia2" id="cbx_provincia2">
				    
				    </select>
					</div>
					<div class="form3-inline-item">
						<label class="exampleInputEmail1">Ciudad</label>
						<select class="custom-select" name="cbx_ciudad2" id="cbx_canton2">
					    </select>
					</div>
				</div>
				<div class="form-group">
					<label class="exampleInputEmail1">Direccion</label>
					<input  class="form-control" name="direccion" placeholder="Ingrese Direccion" type="text" required>	
				</div>
				  <div class="form-group">
				    	 <button type="submit" class="btn btn-success" >Registrar</button>
				        <button type="reset" class="btn btn-warning">Borrar</button>
				    </div>
				</fieldset>				
			</form>
		</div>
	</div>
	</body>		
	</html>