<form action="/administracion/servicios" method="POST">
  <input type="hidden" id="operacion" name="operacion" value="alta" />
  <formset>
    <label for="nombreservicio">Nombre del servicio</label>
    <input type="text" id="nombreservicio" name="nombreservicio" />
    <input type="submit" value="Enviar" />
  </formset>
</form>