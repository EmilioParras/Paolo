<?php

class FechasModel {

    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=dbpaolo;charset=utf8', 'root', '');
    }

    public function getFechas($id) {
        $query = $this->db->prepare("SELECT ");

        $query->execute[$id];

        $fechas = $query->fetchAll(PDO::FETCH_OBJ);
        return $fechas;
    }

}