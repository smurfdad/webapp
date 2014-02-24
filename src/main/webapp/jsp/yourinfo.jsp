<%@ page import="org.apache.commons.lang.StringEscapeUtils"%>
<dl>
	<dt>IP P&uacute;blica</dt>
	<dd><%=request.getRemoteAddr()%></dd>
	<dt>Informaci&oacute;n Regional</dt>
	<dd><%=StringEscapeUtils.escapeHtml(request.getLocale().getDisplayCountry(request.getLocale()))%></dd>
	<dd><%=StringEscapeUtils.escapeHtml(request.getLocale().getDisplayLanguage(request.getLocale()))%></dd>
</dl>
