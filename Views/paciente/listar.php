<div class="box-principal">
	<h2 class="titulo">Listado Panciente<hr></h2>
	<div class="jumbotron">
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">Cedula</th>
					<th scope="col">Nombre</th>
					<th scope="col">Fecha Nacimiento</th>
					<th scope="col">Historia Clinica</th>
				</tr>
			</thead>
			<tbody>
				<?php while ($row = pg_fetch_row($datos)) {
					 ?>
				<tr>
					<td><?php echo $row[0] ?></td>
					<td><?php echo $row[1] ?></td>
					<td><?php echo $row[2] ?></td>
					<td><?php echo $row[3] ?></td>
				</tr>
				<?php } ?>
			</tbody>
		</table>
	</div>
</div>