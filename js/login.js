<<<<<<< HEAD
function validarInicioDeSesión(event) {
  // Evitar que el enlace se siga
  event.preventDefault();

  // Obtener los valores de los campos de usuario y contraseña
  var usuario = document.getElementById("username").value;
  var contraseña = document.getElementById("password").value;

  // Definir los valores correctos de usuario y contraseña
  // Puedes cambiarlos según tus preferencias
  var usuarioCorrecto = "admin";
  var contraseñaCorrecta = "1234";

  // Comparar los valores introducidos con los correctos
  if (usuario == usuarioCorrecto && contraseña == contraseñaCorrecta) {
    
    alert("los dato son correctos")
    // Si son iguales, redirigir a la página principal
    window.location.href = "index.html"
  } else {
    // Si no son iguales, mostrar un mensaje de error
    alert("Usuario o contraseña incorrectos");
  }
=======
function validarInicioDeSesión(event) {
  // Evitar que el enlace se siga
  event.preventDefault();

  // Obtener los valores de los campos de usuario y contraseña
  var usuario = document.getElementById("username").value;
  var contraseña = document.getElementById("password").value;

  // Definir los valores correctos de usuario y contraseña
  // Puedes cambiarlos según tus preferencias
  var usuarioCorrecto = "admin";
  var contraseñaCorrecta = "1234";

  // Comparar los valores introducidos con los correctos
  if (usuario == usuarioCorrecto && contraseña == contraseñaCorrecta) {
    
    alert("los dato son correctos")
    // Si son iguales, redirigir a la página principal
    window.location.href = "index.html"
  } else {
    // Si no son iguales, mostrar un mensaje de error
    alert("Usuario o contraseña incorrectos");
  }
>>>>>>> a5ebc81e870a6b2fa147f61aeaa6db68a14cbf63
}