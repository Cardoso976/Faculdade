var titulo = document.querySelector("#titulo");

function mostrarAlerta(){
    alert("Funcional");
    titulo.style.color = "red";
    titulo.textContent = "O texto do título mudou!";
}

titulo.onclick = mostrarAlerta;