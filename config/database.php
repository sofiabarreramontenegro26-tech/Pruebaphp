<?php

class database{
    public static function conectar(){
        
        $conexion = new mysql("localhost","root","tienda1");

        $conexion->query("SET NAMES 'uft-8'");
    }

}