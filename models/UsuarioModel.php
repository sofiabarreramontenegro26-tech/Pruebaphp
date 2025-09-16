<?php

require_once 'config/database.php';

class Usuario{

    public $db;

    public function __construct(){
        $this->db = database::conectar();
    }

    public $id_usuario;
    public $nombre;
    public $apellido;
    public $email;
    public $password;
    public $rol;
    public $imagen;

    function getId_suario(){
        return $this->id_usuario;
    }

    
    function getNombre(){
        return $this->nombre;
    }

    
    function getApellido(){
        return $this->apellido;
    }
    
    function getEmail(){
        return $this->email;
    }
    
    function getPassword(){
        return $this->password;
    }
    
    function getRol(){
        return $this->rol;
    }
    
    function getImagen(){
        return $this->imagen;
    }

    function setId_usuario($id_usuario){
        $this->id_usuario = $id_usuario;
    }

    function setNombre($nombre){
        $this->nombre = $nombre;
    }

    function setApellido($apellido){
        $this->apellido = $apellido;
    }

    function setEmail($email){
        $this->email = $email;
    }

    function setPassword($password){
        $this->password = $password;
    }

    function setRol($rol){
        $this->rol = $rol;
    }

    function setImagen($imagen){
        $this->imagen = $imagen;
    }


    public function conseguirTodos(){
        echo "IMPRIMIENDO TODOS LOS USUARIOS...";
    }



}