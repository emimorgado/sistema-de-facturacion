import Image from 'next/image'
import '../css/styles.css';

export default function Productos() {
 return (
    <>
    <h1>Agregar cliente</h1>
    <form action=""/>
        <label for="">Nombre/Empresa</label>
        <input type="number"  id="Nombre"/>
        <br/>
        <label for="">Usuario</label>
        <input type="text" id="Usuario"/>
        <br/>
        <label for="">Cedula/Rif</label>
        <input type="number" id="Cedula"/>
        <br/>
        <label for="">Direccion</label>
        <input type="text" id="Direccion"/>
        <br/>
        <label for="">Numero Telefonico</label>
        <input type="number" id="Numero"/>
        <button class="boton-form">Guardar</button>

    </>
 )
}