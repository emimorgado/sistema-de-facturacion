import Image from 'next/image';
import '../css/styles.css';

export default function Login() {
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
<table class="table">
    <tr>

        <th>Numero de factura</th>
        <th>Cliente</th>
        <th>Productos</th>
        <th>Total</th>
        <th>Fecha</th>
    </tr>
        <tr>
            <td>123</td>
            <td>Emily</td>
            <td>Base, Polvo.</td>
            <td>10$</td>
            <td>23/9/23</td>
            
        </tr>
        <tr>
            <td>445</td>
            <td>Lucia</td>
            <td>Base</td>
            <td>4,5$</td>
            <td>23/9/23</td>
        </tr>
        
</table>
    </>
 )
}