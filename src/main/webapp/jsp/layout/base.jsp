<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="titleKey">
	<tiles:getAsString name="title" />
</c:set>
<!DOCTYPE html>
<html>
<head>
<meta content='width=device-width, initial-scale=1.0' name='viewport' />
<title><spring:message code="app.name" /> <spring:message code="${titleKey}" /></title>
<!-- Latest compiled and minified CSS -->
<link
	href='//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css'
	rel='stylesheet' type='text/css' />
<!-- Latest compiled and minified JavaScript -->
<script src='//code.jquery.com/jquery.js' type='text/javascript'></script>
<script
	src='//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js'
	type='text/javascript'></script>
</head>
<body>
	<div class='section' id='cabecera'>
	<tiles:insertAttribute name="header" />
	</div>
	<div class='container'>
		<div class='row'>
			<div class='col-md-9 section' id='principal'>
				<h2>
					<spring:message code="${titleKey}" />
				</h2>
				<tiles:insertAttribute name="body" />
			</div>
			<div class='col-md-3 section' id='lateral'>
				<tiles:insertAttribute name="lateral" />
			</div>
		</div>
		<div class='well well-sm text-center section' id='pie'>
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
	<tiles:insertAttribute name="analitycs" />
</body>
</html>