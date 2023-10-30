import Image from 'next/image'
import '../css/styles.css';
import { useEffect, useState } from 'react';

export default function ClientesPage() {
  const [clientes, setClientes] = useState([]);

  useEffect(() => {
    (async () => {
      try {
        const response = await fetch('/api/clientes');
        if (response.ok) {
          const data = await response.json();
          if (data.results) {
            setClientes(data.results);
          }
        }
      } catch (error) {
        console.error('Error al obtener datos de clientes:', error);
      }
    })();
  }, []);
 
  return (
    <>
    <nav class="navegación">
    <ul>
        <li><a href="index.html">Inicio</a></li>
        <li><a href="clientes.html">Clientes</a></li>
        <li><a href="productos.html">Productos</a></li>
        <li><a href="ventas.html">Ventas</a></li>
        <a class="botnCerrar" href="login.html" type="button">Cerrar Sesión</a>
   </ul>
</nav>
<p class="p-p">Buscar por nombre: <input id="buscador-clientes" type="text"/></p>
<table id="tabla-clientes">
  <tr>
    <th>ID</th>
    <th>Nombre</th>
    <th>Email</th>
    <th>Teléfono</th>
  </tr>
  <tbody></tbody>
</table>
<form class="padding-formulario" id="formulario-clientes">
  <label for="id">ID:</label>
  <input id="id" type="number" required/>
  <label for="name">Nombre:</label>
  <input id="name" type="text" required/>
  <label for="email">Email:</label>
  <input id="email" type="email" required/>
  <label for="phone">Teléfono:</label>
  <input id="phone" type="tel" required/>
  <button type="submit">Agregar cliente</button>
</form>

<script src="js/clientes.js"></script>
</>
  );
}