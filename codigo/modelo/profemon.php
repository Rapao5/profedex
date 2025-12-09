<?php
require_once(__DIR__."/conexion.php");
class Profemon{

    private $id;
    private $nombre;
    private $habilidad;
    private $descripcion;
    private $descripcionHabilidad;
    private $biologia;
    private $generacion;

    public function __construct($id) {
        $pdo = Conexion::conectar();

        $stmt = $pdo -> prepare("SELECT * from profemon where id = :id");

        $stmt -> execute([":id" => $id]);

        $profemon = $stmt -> fetch(PDO::FETCH_ASSOC);

        $this -> id = $profemon["id"];
        $this -> nombre = $profemon["nombre"];
        $this -> habilidad = $profemon["habilidad_nombre"];
        $this -> descripcion = $profemon["descripcion"];
        $this -> descripcionHabilidad = $profemon["habilidad_descripcion"];
        $this -> biologia = $profemon["biologia"];
        $this -> generacion = $profemon["id_generacion"];
    }

    public function getId(){ return $this -> id; }
    public function getNombre(){ return $this -> nombre; }
    public function getHabilidad(){ return $this -> habilidad; }
    public function getGeneracion(){ return $this -> generacion; }
    public function getDescripcion(){ return $this -> descripcion; }
    public function getDescripcionHabilidad(){ return $this -> descripcionHabilidad; }
    public function getBiologia(){ return $this -> biologia; }

    public function listaAtaques(){
        $pdo = Conexion::conectar();

        $stmt = $pdo -> prepare("SELECT nombre, descripcion from ataque where id_profemon = :id");

        $stmt -> execute([
            ":id" => $this -> id
        ]);

        return $stmt ->fetchAll(PDO::FETCH_ASSOC);
    }

    public function listaFrases(){
        $pdo = Conexion::conectar();

        $stmt = $pdo -> prepare("SELECT frase from frase where id_profemon = :id");

        $stmt -> execute([
            ":id" => $this -> id
        ]);

        return $stmt ->fetchAll(PDO::FETCH_ASSOC);
    }

    public function listaEvoluciones(){
        $pdo = Conexion::conectar();

        $stmt = $pdo -> prepare("SELECT nombre, evolucion, numero from evolucion where id_profemon = :id");

        $stmt -> execute([
            ":id" => $this -> id
        ]);

        return $stmt ->fetchAll(PDO::FETCH_ASSOC);
    }

    public function primeraEvolucion(){
        $pdo = Conexion::conectar();

        $stmt = $pdo -> prepare("SELECT nombre, evolucion from evolucion where id_profemon = :id and numero = 1");

        $stmt -> execute([
            ":id" => $this -> id
        ]);

        return $stmt ->fetch(PDO::FETCH_ASSOC);
    }

    public static function listarProfemon($gen){
        $pdo = Conexion::conectar();

        $stmt = $pdo -> prepare("SELECT id from profemon where id_generacion=:id");

        $stmt -> execute([":id" => $gen]);

        return $stmt ->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function listarAllProfemon(){
        $pdo = Conexion::conectar();

        $stmt = $pdo -> prepare("SELECT id from profemon");

        $stmt -> execute();

        return $stmt ->fetchAll(PDO::FETCH_ASSOC);
    }
}