<?php
require_once 'app/db/conect.php';
require_once 'app/functions_php/functionGeneral.php';
set_time_limit(0);
session_start();
$_SESSION['log_success']=true;
if(isset($_SESSION['log_success'])){
  require_once 'app/paginas_html/layout.php';
}else{
  header("location:login.php");
}