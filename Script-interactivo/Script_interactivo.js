//Tenemos los siguientes datos:
var pesoEmily = 50;
var alturaEmily = 1.58;

var pesoLucia = 60;
var alturaLucia = 1.63;

/*Con estos datos calcularemos el IMC (Índice de Masa Corporal)*/
var IMCEmily = pesoEmily / (alturaEmily * alturaEmily);
var IMCLucia = pesoLucia / (alturaLucia * alturaLucia);

/*Luego de esto indicaremos si el IMC de Emily es mayor que el de Lucía*/
var comparacion = IMCEmily < IMCLucia;

console.log('IMC de Emily:' + IMCEmily);
console.log('IMC de Lucia:' + IMCLucia);

console.log('¿El IMC de Emily es superior al de Lucia?:' + comparacion);