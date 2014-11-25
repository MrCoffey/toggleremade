
var inicioConteo,
idTimeout,
cronometro = document.querySelector("#cronometro"),
botonReiniciar = document.querySelector("#botonReiniciar");

function zeroIzq(n){
return n.toString().replace(/^(d)$/,"0$1");
}

function formatoSegundos(s){
return zeroIzq(Math.floor(s / 3600))+":"+zeroIzq(Math.floor(s%3600 / 60))+":"+zeroIzq(Math.floor((s%3600)%60));
}

function actualizar(){
var dif = Date.now() - inicioConteo;
dif = Math.round(dif / 1000);
cronometro.innerHTML = formatoSegundos(dif);
idTimeout = setTimeout(actualizar,1000);
}

function iniciar(){
clearTimeout(idTimeout);
inicioConteo = Date.now();
actualizar();
}

botonReiniciar.onclick = function(){
iniciar();
}

iniciar();