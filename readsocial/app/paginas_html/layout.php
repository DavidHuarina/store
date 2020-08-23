<?php 
if(isset($_GET['page'])){
  require "estructura/head.php";
  require "estructura/navbar.php";
  require "direccion.php";   
  require "estructura/footer.php";
  require "estructura/end.php";   
}else{
  require "error404.php";
} 
