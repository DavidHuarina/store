<?php
session_start();

$_SESSION['log_success']=true;

header("location:index.php?page=inicio");