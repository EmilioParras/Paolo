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

        //public function getDatosTemporadaById($id) {
        //    $query = $this->db->prepare(" SELECT * 
        //    FROM equipos
        //    JOIN temporadas ON equipos.ID_temporadaDeJuego = temporadas.ID && equipos.ID = temporadas.ID_equipoCampeon
        //    JOIN jugadorxtemporada ON temporadas.ID = jugadorxtemporada.ID_Temporada
        //    WHERE temporadas.ID = ?");
        //    $query->execute([$id]);
        //    
        //    $datosTemporadaById = $query->fetchAll(PDO::FETCH_OBJ);
        //    return $datosTemporadaById;
        //}

        public function getEquipoCampeonTemporada($id) {
            $query = $this->db->prepare("SELECT * 
            FROM equipos
            JOIN temporadas ON equipos.ID_temporadaDeJuego = temporadas.ID && equipos.ID = temporadas.ID_equipoCampeon
            JOIN jugadorxtemporada ON equipos.ID = jugadorxtemporada.ID_equipoTemporada
            WHERE temporadas.ID = ? ");
            $query->execute([$id]);

            $equipoCampeon = $query->fetchAll(PDO::FETCH_OBJ);
            return $equipoCampeon;
        }

        public function getJugadoresTemporada($id) {
            $query = $this->db->prepare("SELECT * 
            FROM jugadorxtemporada
            JOIN temporadas ON jugadorxtemporada.ID_Temporada = temporadas.ID
            WHERE temporadas.ID = ?");
            $query->execute([$id]);

            $jugadoresTemporada = $query->fetchAll(PDO::FETCH_OBJ);
            return $jugadoresTemporada;
        }
        
    }