 <header class="main-header">
 	
	<!--=====================================
	LOGOTIPO
	======================================-->
    <a href="inicio" class="logo"> <!--style="background:white !important; color: #0F9FF1 !important;"-->
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><img src="vistas/img/plantilla/icon_lp.png" width="20" height="20"></span><!--<i class="fa fa-shopping-cart"></i><img src="vistas/img/plantilla/icon_c.png" width="20" height="20"> style="background:#1C2833 !important;"-->
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><img src="vistas/img/plantilla/icon_lp.png" width="20" height="20"><b>&nbsp;&nbsp;A.L.</b> ABDIEL</span>
    </a>

	<!--=====================================
	BARRA DE NAVEGACIÓN
	======================================-->
	<nav class="navbar navbar-static-top" role="navigation">
		
		<!-- Botón de navegación -->

	 	<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        	
        	<span class="sr-only">Toggle navigation</span>
      	
      	</a>

		<!-- perfil de usuario -->

		<div class="navbar-custom-menu">
				
			<ul class="nav navbar-nav">
				
				<li class="dropdown user user-menu">
					
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">

					<?php

					if($_SESSION["foto"] != ""){

						echo '<img src="'.$_SESSION["foto"].'" class="user-image">';

					}else{


						echo '<img src="vistas/img/usuarios/default/anonymous.png" class="user-image">';

					}


					?>
						
						<span class="hidden-xs"><?php  echo $_SESSION["nombre"]; ?></span>

					</a>

					<!-- Dropdown-toggle -->

					<ul class="dropdown-menu">
						<li class="user-body">
								<a href="salir" class="btn btn-default btn-block"><i class="fa fa-close"></i> Cerrar Sesión</a>
						</li>

					</ul>

				</li>

			</ul>

		</div>

	</nav>

 </header>