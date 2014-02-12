<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/css/standard-css-default-ltr-ltr.css">
    <link rel="stylesheet" type="text/css" href="/css/overlay.css">
    <title>Smurf Dad Pack::Localizador de Coordenadas de Direcciones en Google Maps</title>
    
      <script src="http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=true&amp;key=ABQIAAAAwuNMgzcNlgo3Jaaq6QxWmRRNHOHotT280p9mhSN8JOL1enBGtxRtOrFQtItC2aTH3EZja44FEKGByw" type="text/javascript"></script>
      <script type="text/javascript">
        //Literales
        var noHayDireccionesParaBuscar = "No hay direcciones para buscar.";
        var porFavorEscribaAlMenosUna = "Por favor, escriba al menos una.";
        var deseaBorrarLasDireccionesIntroducidas = "Desea borrar las direcciones introducidas?";
      </script>
    <script language="javascript" src="/localizador/js/mapa.js" type="text/javascript"></script>      
  </head>
  <body id="body" class=" es" onload="load()" onunload="GUnload()">
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
                        <span id="sites-page-title" dir="ltr">Localizador de Coordenadas de Direcciones en Google Maps</span>
                      </h3>

                      <div id="sites-canvas-main" class="sites-canvas-main">
                        <html:form action="/localizador/mapa">  
                          <div id="sites-canvas-main-content">
                            <div class="sites-layout-name-two-column-hf sites-layout-vbox">
                              <div class="sites-layout-tile sites-tile-name-header">
                                <div dir="ltr"><!-- ¿Botones de configuracion? --></div>
                              </div>
                              <table class="sites-layout-hbox" cellspacing="0">
                                <tbody>
                                  <tr>
                                    <td class="sites-layout-tile sites-tile-name-content-1">
                                      <div dir="ltr"><div id="map" style="width: 400px; height: 300px"></div></div>
                                    </td>
                                    <td class="sites-layout-tile sites-tile-name-content-2">
                                      <div dir="ltr">
                                        <b>Direcciones a buscar</b><br/>
                                        <textarea name="address" cols="60" rows="14" onchange="HabilitacionBotones()"></textarea><br/>
                                        <input type="button" name="pbBuscar" onclick="CargaDeDatos(document.getElementsByName('address')[0].value)" value="Buscar"/>
                                        <input type="button" name="pbLimpiar" onclick="Limpiar(true)" disabled="true" value="Limpiar"/>    
                                        <input type="button" name="pbRestaurar" onclick="initVisualizacion();" disabled="true" value="Restaurar"/>
                                      </div>
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                              <div class="sites-layout-tile sites-tile-name-footer">
                                <div dir="ltr">
                                    <table>
                                      <tr>
                                        <td>
                                          <div id="capaDireccionesLocalizadas" style="visibility: hidden;">
                                          <b>Direcciones Localizadas</b><br/>
                                            <textarea name="direccionesLocalizadas" cols="60" rows="14" onchange="HabilitacionBotones()"></textarea>
                                          </div>
                                        </td>
                                        <td>
                                          <div id="capaDireccionesNoLocalizadas" style="visibility: hidden;">
                                          <b>Direcciones no localizadas</b><br/>
                                            <textarea name="direccionesNoLocalizadas" cols="60" rows="14" onchange="HabilitacionBotones()"></textarea>
                                          </div>
                                        </td>
                                      </tr>
                                    </table>
                                </div>
                              </div>
                            </div>
                          </div> 
                        </html:form>
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