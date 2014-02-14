<%@ page import="org.apache.commons.lang.StringEscapeUtils" %>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/css/standard-css-default-ltr-ltr.css">
    <link rel="stylesheet" type="text/css" href="/css/overlay.css">
    <title>Smurf Dad Pack :: Your Info 11</title>    
  </head>
  <body id="body" class=" es">
    <div id="sites-page-toolbar">
      <div id="sites-status" class="sites-status" style="display: none;">
        <div id="sites-notice" class="sites-notice"></div>
      </div>
    </div>
    <div id="sites-chrome-everything" style="direction: ltr;">
      <div id="sites-chrome-page-wrapper">
        <div id="sites-chrome-page-wrapper-inside">
          <!-- Inicio titulo del site -->
          <jsp:include page="/jsp/titulo.jsp" flush="true"/>
          <!-- Fin titulo del site -->
          <div id="sites-chrome-main-wrapper">
            <div id="sites-chrome-main-wrapper-inside">
              <table id="sites-chrome-main" class="sites-layout-hbox" cellspacing="0">
                <tbody>
                  <tr>
                    <td id="sites-canvas-wrapper">
                      <div id="sites-canvas">
                        <div id="goog-ws-editor-toolbar-container"> </div>
                        <div id="title-crumbs" style="">
                      </div>
                      <h3 id="sites-page-title-header" style="" align="left">
                        <span id="sites-page-title" dir="ltr">Your Info</span>
                      </h3>

                      <div id="sites-canvas-main" class="sites-canvas-main">
                        <div id="sites-canvas-main-content">
                          <div class="sites-layout-name-two-column-hf sites-layout-vbox">
                            <div class="sites-layout-tile sites-tile-name-header">
                              <div dir="ltr">Esta es tu informaci&oacute;n p&uacute;blica que podemos leer</div>
                            </div>
                            <table class="sites-layout-hbox" cellspacing="0">
                              <tbody>
                                <tr>
                                  <td class="sites-layout-tile sites-tile-name-content-1">
                                    <div dir="ltr">
                                      <dl>
                                        <dt>IP P&uacute;blica</dt>
                                        <dd><%=request.getRemoteAddr()%></dd>
                                        <dt>Informaci&oacute;n Regional</dt>
                                        <dd><%=StringEscapeUtils.escapeHtml(request.getLocale().getDisplayCountry(request.getLocale()))%></dd>
                                        <dd><%=StringEscapeUtils.escapeHtml(request.getLocale().getDisplayLanguage(request.getLocale()))%></dd>
                                      </dl>                                    
                                    </div>
                                  </td>
                                  <td class="sites-layout-tile sites-tile-name-content-2">
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                            <div class="sites-layout-tile sites-tile-name-footer">
                              <div dir="ltr"></div>
                            </div>
                          </div>
                        </div> 
                      </div> 
                      <div id="sites-canvas-bottom-panel"></div>
                      </div> 
                    </td>
                  </tr>
                </tbody>
              </table> 
            </div> 
          </div> 
          <div id="sites-chrome-footer-wrapper">
            <div id="sites-chrome-footer-wrapper-inside">
              <div id="sites-chrome-footer">
                <div class="sites-subfooter">
                  <p>
                    <!-- Inicio titulo del site -->
                    <jsp:include page="/jsp/pie.jsp" flush="true"/>
                    <!-- Fin titulo del site -->
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div> 
      </div> 
    </div> 
  </body>
</html>