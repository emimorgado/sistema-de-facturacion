function goBack() {
    window.history.back(); // Esta función de JavaScript te lleva a la página anterior
  }
// Variables globales
const productos = [];

// Función para agregar un producto a la tabla
function agregarProducto() {
    const nombreProducto = prompt("Ingrese el nombre del producto:");
    const cantidad = parseInt(prompt("Ingrese la cantidad:"));
    const precio = parseFloat(prompt("Ingrese el precio:"));

    if (nombreProducto && !isNaN(cantidad) && !isNaN(precio)) {
        const total = cantidad * precio;

        // Agregar el producto al arreglo
        productos.push({
            nombre: nombreProducto,
            cantidad,
            precio,
            total
        });

        // Actualizar la tabla de productos
        actualizarTablaProductos();
    } else {
        alert("Ingrese valores válidos para el producto.");
    }
}

// Función para actualizar la tabla de productos
function actualizarTablaProductos() {
    const tablaProductos = document.querySelector("#tabla-productos tbody");
    tablaProductos.innerHTML = "";

    productos.forEach((producto, index) => {
        const row = tablaProductos.insertRow();
        row.innerHTML = `
            <td>${producto.nombre}</td>
            <td>${producto.cantidad}</td>
            <td>${producto.precio}</td>
            <td>${producto.total}</td>
            <td><button onclick="eliminarProducto(${index})">Eliminar</button></td>
        `;
    });
}

// Función para eliminar un producto
function eliminarProducto(index) {
    productos.splice(index, 1);
    actualizarTablaProductos();
}

// Función para ver la factura
function verFactura() {
    // Calcular el total de la factura
    const totalFactura = productos.reduce((total, producto) => total + producto.total, 0);

    // Mostrar los datos del cliente
    const nombreCliente = document.querySelector("#nombre-cliente").value;
    const emailCliente = document.querySelector("#email-cliente").value;
    const telefonoCliente = document.querySelector("#telefono-cliente").value;
    const direccionCliente = document.querySelector("#direccion-cliente").value;

    // Crear un objeto factura
    const factura = {
        cliente: {
            nombre: nombreCliente,
            email: emailCliente,
            telefono: telefonoCliente,
            direccion: direccionCliente
        },
        productos: productos,
        total: totalFactura
    };

    // Mostrar la factura en la consola
    console.log("Factura Generada:", factura);
}

// VER FACTURA
// Función para ver la factura e imprimir
function verFactura() {
  // Calcular el total de la factura
  const totalFactura = productos.reduce((total, producto) => total + producto.total, 0);

  // Mostrar los datos del cliente
  const nombreCliente = document.querySelector("#nombre-cliente").value;
  const emailCliente = document.querySelector("#email-cliente").value;
  const telefonoCliente = document.querySelector("#telefono-cliente").value;
  const direccionCliente = document.querySelector("#direccion-cliente").value;

  // Crear un objeto factura
  const factura = {
      cliente: {
          nombre: nombreCliente,
          email: emailCliente,
          telefono: telefonoCliente,
          direccion: direccionCliente
      },
      productos: productos,
      total: totalFactura
  };

  // Crear una ventana emergente con los detalles de la factura
  const facturaWindow = window.open('', 'Factura', 'width=600,height=400,scrollbars=yes');
  facturaWindow.document.write('<html><head><title>Factura</title></head><body>');

  facturaWindow.document.write('<h1>Factura</h1>');

  facturaWindow.document.write('<h2>Datos del Cliente</h2>');
  facturaWindow.document.write('<p><strong>Cliente:</strong> ' + factura.cliente.nombre + '</p>');
  facturaWindow.document.write('<p><strong>Email:</strong> ' + factura.cliente.email + '</p>');
  facturaWindow.document.write('<p><strong>Teléfono:</strong> ' + factura.cliente.telefono + '</p>');
  facturaWindow.document.write('<p><strong>Dirección:</strong> ' + factura.cliente.direccion + '</p>');

  facturaWindow.document.write('<h2>Productos</h2>');
  facturaWindow.document.write('<table border="1">');
  facturaWindow.document.write('<thead><tr><th>Producto</th><th>Cantidad</th><th>Precio</th><th>Total</th></tr></thead>');
  facturaWindow.document.write('<tbody>');

  factura.productos.forEach(function(producto) {
      facturaWindow.document.write('<tr>');
      facturaWindow.document.write('<td>' + producto.nombre + '</td>');
      facturaWindow.document.write('<td>' + producto.cantidad + '</td>');
      facturaWindow.document.write('<td>' + producto.precio + '</td>');
      facturaWindow.document.write('<td>' + producto.total + '</td>');
      facturaWindow.document.write('</tr>');
  });

  facturaWindow.document.write('</tbody>');
  facturaWindow.document.write('</table>');

  facturaWindow.document.write('<p><strong>Total a Pagar:</strong> ' + factura.total + '</p>');

  facturaWindow.document.write('</body></html>');

  // Imprimir la factura
  facturaWindow.print();
}


