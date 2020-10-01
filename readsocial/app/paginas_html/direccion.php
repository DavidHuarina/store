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
	case 'login':
        //require_once "estructura/cool.php";
	    require_once('perfil/index.php');
	break;
	case 'tv':
	    require_once('tv/'.$_GET['chanel'].'.php');
	break;
	//pagina de error
	default:
		require_once('error404.php');
	break;
}
