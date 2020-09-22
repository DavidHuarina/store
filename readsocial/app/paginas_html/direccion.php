<?php
switch ($_GET['page']) {
	//pagina de inicio
    case 'inicio':
        //require_once "estructura/cool.php";
	    require_once('inicio/index.php');
	break;
	//pagina de usuario
    
     //paginas de prueba
	case 'sobre_nosotros':
        //require_once "estructura/cool.php";
	    require_once('inicio/sobre_nosotros.php');
	break;
	case 'pagina_b':
        //require_once "estructura/cool.php";
	    require_once('perfil/lista_usuarios.php');
	break;
	//pagina de error
	default:
		require_once('error404.php');
	break;
}