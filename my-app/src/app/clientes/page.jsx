import Image from 'next/image'
import '../css/styles.css';

export default function Productos() {
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
<form action class="boton-busqueda" method="post" target="_blank"/>

    <p class="boton-busqueda"/>
      <input type="search" name="busquedadcliente" placeholder="Clientes"/>
      <input type="submit" value="Buscar"/>
  

<table class="table">
    <tr>
        <th>Nombre/Empresa</th>
        <th>Usuario</th>
        <th>Cedula/Rif</th>
        <th>Direccion</th>
        <th>Numero Telefonico</th>
        <th>Eliminar</th>
        <th>Editar</th>
    </tr>
        <tr>
            <td>Emily Morgado</td>
            <td>EmilyM</td>
            <td>30.699.955</td>
            <td>Propatria</td>
            <td>0414 152 6120</td>
            <td><button>Editar</button></td>
            <td><button>Eliminar</button></td>
        </tr>

        <tr>
            <td>Lucia Spina</td>
            <td>luciaS</td>
            <td>30871648</td>
            <td>Gato Negro</td>
            <td>0414 152 6120</td>
            <td><button>Editar</button></td>
            <td><button>Eliminar</button></td>
        </tr>
</table>
        <div class="div-boton">
            <a class="boton-producto" href="agregarcliente.html">Agregar cliente</a>
          </div>
    </>
 )
}