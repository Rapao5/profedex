function rotarLogo(id){
    const logo = document.getElementById(id);

    logo.style.transform = "rotateY(360deg)";
    logo.style.transition = "1s ease";
}

function reproducirAudio(){
    const audio1 = document.getElementById('audio1');
    const audio2 = document.getElementById('audio2');
    const audio3 = document.getElementById('audio3');
    const audio4 = document.getElementById('audio4');
    const numero = Math.random();

    if(numero < 0.25){
        audio1.play()
    } else if(numero < 0.5){
        audio2.play()
    } else if(numero < 0.75){
        audio3.play()
    } else if(numero >= 0.75){
        audio4.play()
    }
}