<?php
switch ($_GET['page']) {
	//pagina de inicio
    case 'inicio':
        //require_once "estructura/cool.php";
	    require_once('inicio/index.php');
	break;
	//pagina de usuario
    
     //paginas de prueba
	case 'pagina_a':
        //require_once "estructura/cool.php";
	    require_once('perfil/index.php');
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