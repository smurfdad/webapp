<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title"><spring:message code="localizador.title" /></h3>
	</div>
	<div class="panel-body">
		<spring:message code="localizador.description" />
	</div>
	<div class="panel-footer">
		<a href="/localizador" class="btn btn-default btn-xs" role="button"><span
			class="glyphicon glyphicon-eye-open"></span> <spring:message code="label.ver" /></a>
	</div>
</div>

<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title"><spring:message code="yourinfo.title" /></h3>
	</div>
	<div class="panel-body">
		<spring:message code="yourinfo.description"/>
	</div>
	<div class="panel-footer">
		<a href="/yourinfo" class="btn btn-default btn-xs" role="button"><span
			class="glyphicon glyphicon-eye-open"></span> <spring:message code="label.ver" /></a>
	</div>
</div>