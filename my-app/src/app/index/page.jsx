import Image from 'next/image'
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

    <main class="main">
        <p class="parrafo-principal">Bienvenido a Beuty app, gracias por visitarnos si desea seguir con su facturacion, por favor presiona el botón "Facturar" </p>
        
            <a href="factura.html" class="botnCerrar color-a" type="submit">Facturar</a>
        </main>

    </>
 )
}
