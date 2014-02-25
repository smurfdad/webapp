<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<form role="form">
	<div class="form-group">
		<label for="direcciones"><spring:message code="localizador.direcciones"/></label>
		<textarea id="direcciones" class="form-control" placeholder="Introduzca una dirección por línea"></textarea>
	</div>
	<div class="form-group">
		<button type="button" class="btn btn-primary" id="btnBuscar">Buscar</button>
		<input type="reset" class="btn btn-default" id="btnLimpiar" value="Limpiar"/>
	</div>
</form>
<table id="resultados" class="table hidden">
	<thead>
		<tr>
			<!-- <th>#</th> -->
			<th>Term. Buqueda</th>
			<th>Dirección</th>
			<!-- <th>Precisión</th> -->
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