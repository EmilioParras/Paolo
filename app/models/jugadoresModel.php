<?php

    class JugadoresModel {

        private $db;

        public function __construct() {
            $this->db = new PDO('mysql:host=localhost;'.'dbname=dbpaolo;charset=utf8', 'root', '');
        }

        public function getJugadoresTemporada($num) {
            $query = $this->db->prepare("SELECT * 
            FROM jugadorxtemporada
            JOIN temporadas 
            ON jugadorxtemporada.ID_Temporada = temporadas.ID
            JOIN equipos 
            ON jugadorxtemporada.ID_equipoTemporada = equipos.ID
            JOIN divisiones 
            ON equipos.division = divisiones.ID
            WHERE temporadas.ID = 8 AND divisiones.ID = ?;");
            $query->execute([$num]);

            $jugadoresTemporada = $query->fetchAll(PDO::FETCH_OBJ);
            return $jugadoresTemporada;
        }

    }