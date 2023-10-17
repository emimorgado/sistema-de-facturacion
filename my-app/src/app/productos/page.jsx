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
          <input type="search" name="busquedadcliente" placeholder="Producto"/>
          <input type="submit" value="Buscar"/>
      
        <table>
            <tr>
              <th>Código</th>
              <th>Cantidad</th>
              <th>Descripción</th>
              <th>Precio unitario</th>
              <th>Borrar</th>
              <th>Editar</th>
            </tr>

            <tr>
              <td>12345</td>
              <td>12345</td>
              <td>Producto 1</td>
              <td>$10.00</td>
              <td><button>Borrar</button></td>
              <td><button>Editar</button></td>
            </tr>

            <tr>
              <td>23456</td>
              <td>2</td>
              <td>Producto 2</td>
              <td>$20.00</td>
              <td><button>Borrar</button></td>
              <td><button>Editar</button></td>
            </tr>

            <tr>
              <td>23456</td>
              <td>2</td>
              <td>Producto 2</td>
              <td>$20.00</td>
              <td><button>Borrar</button></td>
              <td><button>Editar</button></td>
            </tr>

            <tr>
              <td>23456</td>
              <td>2</td>
              <td>Producto 2</td>
              <td>$20.00</td>
              <td><button>Borrar</button></td>
              <td><button>Editar</button></td>
            </tr>

            <tr>
              <td>23456</td>
              <td>2</td>
              <td>Producto 2</td>
              <td>$20.00</td>
              <td><button>Borrar</button></td>
              <td><button>Editar</button></td>
            </tr>

            <tr>
              <td>34567</td>
              <td>3</td>
              <td>Producto 3</td>
              <td>$30.00</td>
              <td><button>Borrar</button></td>
              <td><button>Editar</button></td>
            </tr>
          </table>
          <div class="div-boton">
          <a class="boton-producto" href="agregarproducto.html">Agregar Producto</a>
        </div>
    </>
 )
}