<?php
    session_start();
    require(__DIR__."/controlador/controlador.php");

    $accion = $_GET['a'] ?? "menu";

    $gen = $_GET['g'] ?? "";

    $instancia = new Controlador();
    
    if($accion == "menugen" || $accion == "pagProf"){
        $instancia -> $accion($gen);
    } else {
        $instancia -> $accion();
    } 
?>