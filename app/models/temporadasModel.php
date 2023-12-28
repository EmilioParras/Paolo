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

        public function getJugadoresCampeonesTemporada() {
            $query = $this->db->prepare("SELECT *
                                        FROM jugadores
                                        JOIN jugadorxtemporada
                                        ON jugadores.ID = jugadorxtemporada.ID_Jugador
                                        JOIN temporadas
                                        ON jugadorxtemporada.ID_Temporada = temporadas.ID && jugadorxtemporada.ID_equipoTemporada = temporadas.ID_equipoCampeon");
            $query->execute([]);

            $equipoCampeon = $query->fetchAll(PDO::FETCH_OBJ);
            return $equipoCampeon;
        }
        
    }