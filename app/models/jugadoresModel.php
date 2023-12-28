<?php

    class JugadoresModel {

        private $db;

        public function __construct() {
            $this->db = new PDO('mysql:host=localhost;'.'dbname=dbpaolo;charset=utf8', 'root', '');
        }

        public function getJugadoresTemporadaActual($num) {
            $query = $this->db->prepare("SELECT * 
                                        FROM jugadorxtemporada
                                        JOIN temporadas 
                                        ON jugadorxtemporada.ID_Temporada = temporadas.ID
                                        JOIN equipos 
                                        ON jugadorxtemporada.ID_equipoTemporada = equipos.ID
                                        JOIN divisiones 
                                        ON equipos.division = divisiones.ID
                                        WHERE temporadas.ID = 8 AND divisiones.ID = ? ");
            $query->execute([$num]);

            $jugadoresTemporada = $query->fetchAll(PDO::FETCH_OBJ);
            return $jugadoresTemporada;
        }

        public function getJugadoresTemporadaGoles($id) {
            $query = $this->db->prepare("SELECT *
                                        FROM jugadores
                                        JOIN jugadorxtemporada 
                                        ON jugadores.ID = jugadorxtemporada.ID_Jugador
                                        JOIN temporadas 
                                        ON temporadas.ID = jugadorxtemporada.ID_Temporada
                                        WHERE temporadas.ID = ?
                                        ORDER BY jugadorxtemporada.golesTemporada DESC");
            $query->execute([$id]);

            $jugadoresTemporada = $query->fetchAll(PDO::FETCH_OBJ);
            return $jugadoresTemporada;
        }

        public function getJugadoresTemporadaAsistencias($id) {
            $query = $this->db->prepare("SELECT *
                                        FROM jugadores
                                        JOIN jugadorxtemporada 
                                        ON jugadores.ID = jugadorxtemporada.ID_Jugador
                                        JOIN temporadas 
                                        ON temporadas.ID = jugadorxtemporada.ID_Temporada
                                        WHERE temporadas.ID = ?
                                        ORDER BY jugadorxtemporada.asistenciasTemporada DESC");
            $query->execute([$id]);

            $jugadoresTemporada = $query->fetchAll(PDO::FETCH_OBJ);
            return $jugadoresTemporada;
        }

        public function getJugadoresTemporadaVallas($id) {
            $query = $this->db->prepare("SELECT *
                                        FROM jugadores
                                        JOIN jugadorxtemporada 
                                        ON jugadores.ID = jugadorxtemporada.ID_Jugador
                                        JOIN temporadas 
                                        ON temporadas.ID = jugadorxtemporada.ID_Temporada
                                        WHERE temporadas.ID = ?
                                        ORDER BY jugadorxtemporada.vallasTemporada DESC");
            $query->execute([$id]);

            $jugadoresTemporada = $query->fetchAll(PDO::FETCH_OBJ);
            return $jugadoresTemporada;
        }


    }