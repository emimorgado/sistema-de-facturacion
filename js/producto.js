
    // Esta función se ejecuta cuando se envía el formulario
    function agregarProducto(event) {
      // Evitamos que se recargue la página
      event.preventDefault();
      // Obtenemos los valores de los campos del formulario
      let codigo = $ ("#Codigo").val();
      let nombre  = $("#Nombre").val();
      let cantidad = $("#Cantidad").val();
      let descripcion = $("#Descripcion").val();
      let precio = $ ("#Precio").val();
      // Creamos una fila con los datos del producto
      let fila = 
      `<tr>
      <td>${codigo}</td>
      <td>${nombre}</td>
      <td>${cantidad}</td>
      <td>${descripcion}</td>
      <td>${precio}</td>
      </tr>`;
      // Agregamos la fila al cuerpo de la tabla
      $("#cuerpo").append(fila);
      // Limpiamos los campos del formulario
      $("#formulario")[0].reset();
    }

   