<div id="back"></div>

<div class="login-box">
  
  <div class="login-logo">

    <!--<img src="vistas/img/plantilla/logo-blanco-bloque.png" class="img-responsive">-->
    <a href="#" class="btn btn-info"><h2 class="text-white">ARTICULOS DE LIMPIEZA<br> <b>"ABDIEL"</b></h2></a>
  </div>

  <div class="login-box-body">
    <p class="login-box-msg" style="font-size:19px"><img src="vistas/img/plantilla/icon_lp.png" width="30" height="30"><label for=""><small><small>SISTEMA DE CONTROL Y VENTAS</small></small></label><img src="vistas/img/plantilla/icon_lp.png" width="30" height="30"></p>
    <center></center>
    <form method="post">

      <div class="form-group has-feedback">

        <input type="text" class="form-control" placeholder="Usuario" name="ingUsuario" required>
        <span class="glyphicon glyphicon-user form-control-feedback texto-verde"></span>

      </div>

      <div class="form-group has-feedback">

        <input type="password" class="form-control" placeholder="Contraseña" name="ingPassword" required>
        <span class="glyphicon glyphicon-lock form-control-feedback texto-rojo"></span>
      
      </div>

      <div class="row">
        <div class="col-xs-4"></div>
        <div class="col-xs-4">
                  <button type="submit" class="btn btn-primary btn-block btn-flat">Ingresar</button>    
        </div>

      </div>

      <?php

        $login = new ControladorUsuarios();
        $login -> ctrIngresoUsuario();
        
      ?>

    </form>

  </div>

</div>
