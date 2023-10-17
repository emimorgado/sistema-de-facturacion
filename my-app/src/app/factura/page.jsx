import Image from 'next/image'
import '../css/styles.css';

export default function Login() {
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

<div id="contenedor">
    <div id="central">
        <div id="login">
            <div class="titulo">
                Ingresa tus datos
            </div>
            <form id="loginform">
                <label class="bold">Numero de cedula</label>
                <input type="text" name="usuario" placeholder="Usuario" required/>
                
                <button><a style={{ textDecoration: 'none' }} href="/" type="submit" title="Ingresar" name="Ingresar">Iniciar Factura</a></button>
            </form>
        </div>
    </div>
</div>
    </>
 )
}
