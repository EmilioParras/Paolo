<?php

    class TemporadasModel {

        private $db;

        public function __construct() {
            $this->db = new PDO('mysql:host=localhost;'.'dbname=dbpaolo;charset=utf8', 'root', '');
        }

        public function getAllTemporadas() {
            $query = $this->db->prepare("SELECT * FROM temporadas");
            $query->execute();

            $allTemporadas = $query->fetchAll(PDO::FETCH_OBJ);
            return $allTemporadas;
        }

        
    }