<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<dl>
	<dt><spring:message code="yourinfo.ippublica" /></dt>
	<dd><c:out value="${ip}"/></dd>
	<dt><spring:message code="yourinfo.informacionRegional" /></dt>
	<dd><spring:message code="yourinfo.pais" />: <c:out value="${pais}"/></dd>
	<dd><spring:message code="yourinfo.idioma" />: <c:out value="${idioma}"/></dd>
</dl>
