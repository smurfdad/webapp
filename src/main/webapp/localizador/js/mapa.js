var map = null;
var geocoder = null;
var puntos = new Array();
var errores = new Array();
var cuentaPuntos = 0;
var lineas;
    
function initVisualizacion(){
  //Situamos el centro en la puerta del sol de Madrid, Km. 0 de España      
  map.setCenter(new GLatLng(40.416883, -3.703447), 5);
  document.getElementsByName("pbRestaurar")[0].disabled = true;
  map.closeInfoWindow();
}

function load() {
  if (GBrowserIsCompatible()) {
    map = new GMap2(document.getElementById("map"));
    initVisualizacion();        
    map.addControl(new GSmallMapControl()); //Control del desplazamiento y Zoom
    //map.addControl(new GMapTypeControl()); //Control de visualizacion
    geocoder = new GClientGeocoder(); //Objeto para localizar direcciones en el mapa
  }
}
    
function CargaDeDatos(direcciones){
  if (direcciones == ""){
    alert(noHayDireccionesParaBuscar+"\n"+porFavorEscribaAlMenosUna);
    document.getElementsByName("address")[0].focus();
  }else{
    lineas = direcciones.split("\n")
    //alert(direcciones);
    Limpiar(false);
      
    for(i=0; i<lineas.length; i++){
      showAddress(lineas[i]);
    }
    initVisualizacion();
    MostrarResumenTemporizado();
  }
}
    
function showAddress(address) {
  if (geocoder) {
    geocoder.getLatLng(
        address,
        function(point) {
          if (!point) {
            errores[errores.length] = address;
          } else {
            var marker = new GMarker(point);              
            GEvent.addListener(marker, "click", function() {
              document.getElementsByName("pbRestaurar")[0].disabled = false;
              marker.openInfoWindowHtml(address+"<br>Longitud: "+point.lng()+"<br>Latitud: "+point.lat());
              //map.setCenter(new GLatlng(point.lat(),point.lng()),10);
              map.setCenter(new GLatLng(point.lat(), point.lng()), 15);
            });              
            map.addOverlay(marker);                
           
            puntos[puntos.length] = point.lng()+", "+point.lat()+", \""+address+"\"";
          }
        }
    );
  }
}

function MostrarResumen(){
  if (puntos.length > 0){
    //Se han encontrado puntos y mostramos el resultado
    document.getElementById("capaDireccionesLocalizadas").style.visibility="visible";
    document.getElementsByName("direccionesLocalizadas")[0].value=puntos.join("\n");

  }
  if (errores.length){
    document.getElementById("capaDireccionesNoLocalizadas").style.visibility="visible";
    document.getElementsByName("direccionesNoLocalizadas")[0].value=errores.join("\n");
  }  
}
  
function Limpiar(pregunta){
  //Limpiamos los marcadores del mapa
  if (pregunta){
    if (confirm(deseaBorrarLasDireccionesIntroducidas)){
      document.getElementsByName("address")[0].value = "";  
    }
  }
  puntos = new Array();
  errores = new Array();
  document.getElementById("capaDireccionesLocalizadas").style.visibility="hidden";
  document.getElementsByName("direccionesLocalizadas")[0].value="";  
  document.getElementById("capaDireccionesNoLocalizadas").style.visibility="hidden";
  document.getElementsByName("direccionesNoLocalizadas")[0].value="";  
  map.clearOverlays();
  MostrarResumen();
  HabilitacionBotones();
  initVisualizacion();
}
    
function HabilitacionBotones(){
  //document.getElementsByName("pbBuscar")[0].disabled = false;
  if (puntos.length > 0){
    document.getElementsByName("pbLimpiar")[0].disabled = false;
  }else{
    document.getElementsByName("pbLimpiar")[0].disabled = true;
  }
}

function MostrarResumenTemporizado(){
  if ((errores.length + puntos.length) < lineas.length){
    window.setTimeout("MostrarResumenTemporizado();", 1000);
  }else{
    MostrarResumen();
    HabilitacionBotones();
    }
}