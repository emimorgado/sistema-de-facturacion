import Image from 'next/image'
import '../css/styles.css';

export default function Productos() {
 return (
    <>
    <nav class="navegación">
    <ul>
        <li><a href="index.html">Inicio</a></li>
        <li><a href="usuarios.html">Usuarios</a></li>
        <li><a href="clientes.html">Clientes</a></li>
        <li><a href="productos.html">Productos</a></li>
        <li><a href="ventas.html">Ventas</a></li>
        <a class="botnCerrar" href="login.html" type="button">Cerrar Sesión</a>
   </ul>
</nav>
    </>
 )
}