<?php
require (__DIR__."/../modelo/profemon.php");
class Controlador{
    public function menu(){
        include(__DIR__."/../vista/index.php");
    }

    public function menugen($gen){
        $lista = Profemon::listarProfemon((int)$gen);
        $generacion = $gen."º generacion";
        $portada = [];
        foreach($lista as $l){
            $profemon = new Profemon($l['id']);
            array_push($portada, $profemon -> primeraEvolucion());
        }
        var_dump($portada);
        include(__DIR__."/../vista/menuGen.php");
    }

    public function menuall(){
        $lista = Profemon::listarAllProfemon();
        $generacion = "Lista completa";
        $portada = [];
        foreach($lista as $l){
            $profemon = new Profemon($l['id']);
            array_push($portada, $profemon -> primeraEvolucion());
        }
        var_dump($portada);
        include(__DIR__."/../vista/menuGen.php");
    }

    public static function pagProf($id){
        $profemon = new Profemon($id);
        $evoluciones = $profemon ->listaEvoluciones();
        $ataques = $profemon -> listaAtaques();
        $frases = $profemon -> listaFrases();
        $nombre = $profemon -> getNombre();
        $generacion = $profemon -> getGeneracion();
        $habilidad = $profemon -> getHabilidad();
        $descripcion = $profemon -> getDescripcion();
        $descripcionHabilidad = $profemon -> getDescripcionHabilidad();
        $biologia = $profemon -> getBiologia();
        include(__DIR__."/../vista/paginaProfemon.php");
    }
}
?>