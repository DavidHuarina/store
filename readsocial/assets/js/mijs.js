function primeraMayuscula(string){
 return string.charAt(0).toUpperCase() + string.slice(1); 
}

$(".section-title .fuente").prepend("Fuente: ");
//Cambiar texto capitalizado en el body para titulos H3 Y H2
/*$(".section-title h3").html(primeraMayuscula($(".section-title h3").html().toLowerCase()));
$(".section-title h2").html(primeraMayuscula($(".section-title h2").html().toLowerCase()));*/