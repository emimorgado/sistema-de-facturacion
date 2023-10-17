import Image from 'next/image'
import '../css/styles.css';

export default function Productos() {
 return (
    <>
        <h1>Agregar producto</h1>
        <form action=""/>
        <label for="">Codigo</label>
        <input type="number"  id="Codigo"/>
        <br/>
        <label for="">Nombre del producto</label>
        <input type="text" id="Nombre"/>
        <br/>
        <label for="">Cantidad</label>
        <input type="number" id="Cantidad"/>
        <br/>
        <label for="">Descripción</label>
        <input type="text" id="Descripción"/>
        <br/>
        <label for="">Precio unitario</label>
        <input type="number" id="Precio"/>
        <button class="boton-form">Guardar</button>

    </>
 )
}