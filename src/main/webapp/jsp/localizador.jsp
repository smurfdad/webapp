
<form role="form">
	<div class="form-group">
		<label for="direcciones">Direcciones</label>
		<textarea id="direcciones" class="form-control"></textarea>
	</div>
	<div class="form-group">
		<button type="button" class="btn btn-primary" id="btnBuscar">Buscar</button>
		<input type="reset" class="btn btn-default" id="btnLimpiar" value="Limpiar"/>
	</div>
</form>
<table id="resultados" class="table">
	<thead>
		<tr>
			<!-- <th>#</th> -->
			<th>Term. Buqueda</th>
			<th>Direcci�n</th>
			<!-- <th>Precisi�n</th> -->
			<th>Longitud</th>
			<th>Latitud</th>
		</tr>
	</thead>
	<tbody>
	</tbody>
</table>
<script
	src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<script src="/js/localizador.js"></script>