function printHTML() { 
    if (window.print) { 
      window.print();
    }
  }
//Login
const loginform = document.querySelector("#loginform")
loginform.addEventListener("submit", (e)=>{
    e.preventDefault()
    const mail= document.querySelector("#mail").value
    const password= document.querySelector("#password").value
    const users= JSON.parse( localStorage.getItem("users"))||[]
    const validuser= users.find(user=> user.mail=== mail && user.password === password)
    if (!validuser) {
        return alert("Mail y/o Contraseña incorrecta!")
    }
    alert(`Hola ${validuser.name}`)
    localStorage.setItem(`login_success`,JSON.stringify(validuser))
    window.location.href= "index.html"
})
//Signup
const signupform = document.querySelector ("#signupform")
signupform.addEventListener("submit", (e)=>{
    e.preventDefault()
    const name= document.querySelector("#name").value;
    const mail= document.querySelector("#mail").value;
    const password= document.querySelector("#password").value; 
    const users = JSON.parse(localStorage.getItem("users")) || []
    const iUsersRegistered = users.find(user => user.mail === mail)
    if (iUsersRegistered){
        return alert("Este correo ya está en uso, pruebe con otra dirección.")
    }
    users.push({name: name, mail: mail, password: password})
    localStorage.setItem('users', JSON.stringify(users))
    alert("Registro Exitoso!")
    window.location.href = "login.html"
})