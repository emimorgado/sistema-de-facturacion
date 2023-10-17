import Image from 'next/image'
import '../css/styles.css';

export default function Login() {
 return (
    <>
      <div id="contenedor">
        <div id="central">
            <div id="login">
                <div class="titulo">
                    Bienvenido a Beauty App!
                </div>
                <form id="loginform"/>
                    <label class="bold">Usuario</label>
                    <input type="text" name="usuario" placeholder="Usuario" required/>
                    
                    <label class="bold" for="">Contraseña</label>
                    <input type="password" placeholder="Contraseña" name="password" required/>
                    
                    <button><a style="text-decoration: none;" href="index.html" type="submit" title="Ingresar" name="Ingresar">Iniciar Sesion</a></button>
            </div>
        </div>
    </div>
    </>
 );
}