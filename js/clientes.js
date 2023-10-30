// Obtener los elementos del DOM
    const tabla = document.getElementById("tabla-clientes");
    const buscador = document.getElementById("buscador-clientes");
    const formulario = document.getElementById("formulario-clientes");
  
    // Crear una variable para almacenar los datos de los clientes
    let clientes = [];
  
    // Crear una función para mostrar los clientes en la tabla
    function mostrarClientes(clientes) {
      const tbody = tabla.getElementsByTagName("tbody")[0];
      tbody.innerHTML = "";
  
      for (const cliente of clientes) {
        const row = document.createElement("tr");
        row.innerHTML = `
          <td>${cliente.id}</td>
          <td>${cliente.name}</td>
          <td>${cliente.email}</td>
          <td>${cliente.phone}</td>
        `;
        tbody.appendChild(row);
      }
    }
  
    // Crear una función para filtrar los clientes por nombre
    function filtrarClientes() {
      const texto = buscador.value.toLowerCase();
      const clientesFiltrados = clientes.filter((cliente) => {
        return cliente.name.toLowerCase().includes(texto);
      });
      mostrarClientes(clientesFiltrados);
    }
  
    // Añadir un evento al buscador para filtrar los clientes al escribir
    buscador.addEventListener("input", filtrarClientes);
  
    // Añadir un evento al formulario para agregar nuevos clientes al enviar
    formulario.addEventListener("submit", (e) => {
      e.preventDefault();
  
      const id = Number(formulario.id.value);
      const name = formulario.name.value;
      const email = formulario.email.value;
      const phone = formulario.phone.value;
  
      const cliente = { id, name, email, phone };
      agregarCliente(cliente);
  
      formulario.reset();
    });
  
    // Obtener los datos de los clientes desde una API ficticia
    fetch("https://jsonplaceholder.typicode.com/users")
      .then((response) => response.json())
      .then((data) => {
        clientes = data;
        mostrarClientes(clientes);
      })
      .catch((error) => {
        console.error(error);
        alert("No se pudieron obtener los datos de los clientes");
      });
  
    // Función para agregar un nuevo cliente al array y a la tabla
    function agregarCliente(cliente) {
      const existe = clientes.some((c) => c.id === cliente.id);
  
      if (!existe) {
        clientes.push(cliente);
        mostrarClientes(clientes);
        alert("Cliente agregado con éxito");
      } else {
        alert("Ya existe un cliente con ese ID");
      }
    }