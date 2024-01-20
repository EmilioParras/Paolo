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
                                        ON jugadorxtemporada.ID_equipoTemporada = equipos.ID_equipo
                                        JOIN divisiones
                                        ON equipos.division = divisiones.numDivision
                                        WHERE temporadas.ID = 9 && divisiones.numDivision = ?
                                        ORDER BY jugadorxtemporada.vallasTemporada DESC, jugadores.tag
                                        LIMIT 0,5");
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
                                        ON jugadorxtemporada.ID_equipoTemporada = equipos.ID_equipo
                                        JOIN divisiones
                                        ON equipos.division = divisiones.numDivision
                                        WHERE temporadas.ID = 9 && divisiones.numDivision = ?
                                        ORDER BY jugadorxtemporada.asistenciasTemporada DESC, jugadores.tag
                                        LIMIT 0,5");
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
                                        ON jugadorxtemporada.ID_equipoTemporada = equipos.ID_equipo
                                        JOIN divisiones
                                        ON equipos.division = divisiones.numDivision
                                        WHERE temporadas.ID = 9 && divisiones.numDivision = ?
                                        ORDER BY jugadorxtemporada.vallasTemporada DESC, jugadores.tag
                                        LIMIT 0,5");
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
                                        ORDER BY jugadorxtemporada.golesTemporada DESC
                                        LIMIT 0,5");
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
                                        ORDER BY jugadorxtemporada.asistenciasTemporada DESC
                                        LIMIT 0,5");
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
                                        ORDER BY jugadorxtemporada.vallasTemporada DESC, jugadores.tag
                                        LIMIT 0,5");
            $query->execute([$id]);

            $jugadoresTemporada = $query->fetchAll(PDO::FETCH_OBJ);
            return $jugadoresTemporada;
        }

        public function getJugadoresPorEquipo($id) {
            $query = $this->db->prepare("SELECT jugadores.*, jugadores.avatar AS imagen_blob
                                        FROM jugadores 
                                        JOIN equipos
                                        ON jugadores.ID_EquipoActual = equipos.ID_equipo
                                        WHERE jugadores.ID_EquipoActual = ?
                                        ORDER BY jugadores.tag ASC");

            $query->execute([$id]);

            $jugadoresEquipo = $query->fetchAll(PDO::FETCH_OBJ);

            foreach ($jugadoresEquipo as $jugador) {
                $imagenBase64 = base64_encode($jugador->imagen_blob);
                $jugador->avatar = 'data:image/png;base64,' . $imagenBase64;
            }
            return $jugadoresEquipo;
        }

    }