<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<form role="form">
	<div class="form-group">
		<label for="direcciones"><spring:message code="localizador.direcciones.label"/></label>
		<textarea id="direcciones" class="form-control" placeholder="<spring:message code="localizador.direcciones.tooltip"/>"></textarea>
	</div>
	<div class="form-group">
		<button type="button" class="btn btn-primary" id="btnBuscar"><spring:message code="label.buscar"/></button>
		<input type="reset" class="btn btn-default" id="btnLimpiar" value="<spring:message code="label.limpiar"/>"/>
	</div>
</form>
<table id="resultados" class="table table-condensed hidden">
	<thead>
		<tr>
			<!-- <th>#</th> -->
			<th><spring:message code="localizador.resultados.terminoBusqueda"/></th>
			<th><spring:message code="localizador.resultados.direccion"/></th>
			<!-- <th>Precisión</th> -->
			<th><spring:message code="localizador.resultados.longitud"/></th>
			<th><spring:message code="localizador.resultados.latitud"/></th>
		</tr>
	</thead>
	<tbody>
	</tbody>
</table>
<script
	src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<script src="/js/localizador.js"></script>