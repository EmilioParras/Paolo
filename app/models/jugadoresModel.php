<?php

    class JugadoresModel {

        private $db;

        public function __construct() {
            $this->db = new PDO('mysql:host=localhost;'.'dbname=dbpaolo;charset=utf8', 'root', '');
        }

        public function getJugadoresTemporadaGolesConDivision($id) {
            $query = $this->db->prepare("SELECT *
                                        FROM jugadorxtemporada
                                        JOIN jugadores
                                        ON jugadorxtemporada.ID_Jugador = jugadores.ID
                                        JOIN temporadas
                                        ON jugadorxtemporada.ID_Temporada = temporadas.ID
                                        JOIN equipos
                                        ON jugadorxtemporada.ID_equipoTemporada = equipos.ID
                                        JOIN divisiones
                                        ON equipos.division = divisiones.numDivision
                                        WHERE temporadas.ID = 9 && divisiones.numDivision = ?
                                        ORDER BY jugadorxtemporada.vallasTemporada DESC, jugadores.tag");
            $query->execute([$id]);

            $jugadoresTemporada = $query->fetchAll(PDO::FETCH_OBJ);
            return $jugadoresTemporada;
        }

        public function getJugadoresTemporadaAsistenciasConDivision($id) {
            $query = $this->db->prepare("SELECT *
                                        FROM jugadorxtemporada
                                        JOIN jugadores
                                        ON jugadorxtemporada.ID_Jugador = jugadores.ID
                                        JOIN temporadas
                                        ON jugadorxtemporada.ID_Temporada = temporadas.ID
                                        JOIN equipos
                                        ON jugadorxtemporada.ID_equipoTemporada = equipos.ID
                                        JOIN divisiones
                                        ON equipos.division = divisiones.numDivision
                                        WHERE temporadas.ID = 9 && divisiones.numDivision = ?
                                        ORDER BY jugadorxtemporada.asistenciasTemporada DESC, jugadores.tag");
            $query->execute([$id]);

            $jugadoresTemporada = $query->fetchAll(PDO::FETCH_OBJ);
            return $jugadoresTemporada;
        }

        public function getJugadoresTemporadaVallasConDivision($id) {
            $query = $this->db->prepare("SELECT *
                                        FROM jugadorxtemporada
                                        JOIN jugadores
                                        ON jugadorxtemporada.ID_Jugador = jugadores.ID
                                        JOIN temporadas
                                        ON jugadorxtemporada.ID_Temporada = temporadas.ID
                                        JOIN equipos
                                        ON jugadorxtemporada.ID_equipoTemporada = equipos.ID
                                        JOIN divisiones
                                        ON equipos.division = divisiones.numDivision
                                        WHERE temporadas.ID = 9 && divisiones.numDivision = ?
                                        ORDER BY jugadorxtemporada.vallasTemporada DESC, jugadores.tag");
            $query->execute([$id]);

            $jugadoresTemporada = $query->fetchAll(PDO::FETCH_OBJ);
            return $jugadoresTemporada;
        }

        /*-----SE REPITE MUCHISIMO CODIGO. BUSCAR DESPUES UNA SOLUCION MAS RAPIDA PARA HACER ESTAS CONSULTAS.*/

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
                                        ORDER BY jugadorxtemporada.vallasTemporada DESC, jugadores.tag");
            $query->execute([$id]);

            $jugadoresTemporada = $query->fetchAll(PDO::FETCH_OBJ);
            return $jugadoresTemporada;
        }


    }