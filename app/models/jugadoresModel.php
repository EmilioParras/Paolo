<?php

    class JugadoresModel {

        private $db;

        public function __construct() {
            $this->db = new PDO('mysql:host=localhost;'.'dbname=dbpaolo;charset=utf8', 'root', '');
        }

        public function getJugadoresTemporadaGolesConDivision($id) {
            $query = $this->db->prepare("SELECT jugadores.*, equipos.*, equipos.escudoEquipo AS imagen_blob
                                        FROM jugadores
                                        JOIN equipos
                                        ON jugadores.ID_EquipoActual = equipos.ID_equipo
                                        JOIN temporadas
                                        ON equipos.ID_temporadaDeJuego
                                        JOIN divisiones
                                        ON equipos.division = divisiones.numDivision
                                        WHERE temporadas.ID = 9 && divisiones.numDivision = ?  
                                        ORDER BY jugadores.goles DESC
                                        LIMIT 0,5");
            $query->execute([$id]);

            $jugadoresTemporada = $query->fetchAll(PDO::FETCH_OBJ);

            foreach ($jugadoresTemporada as $imagen) {
                $imagenBase64 = base64_encode($imagen->imagen_blob);
                $imagen->escudoEquipo = 'data:image/png;base64,' . $imagenBase64;
            }

            return $jugadoresTemporada;
        }

        public function getJugadoresTemporadaAsistenciasConDivision($id) {
            $query = $this->db->prepare("SELECT jugadores.*, equipos.*, equipos.escudoEquipo AS imagen_blob
                                        FROM jugadores
                                        JOIN equipos
                                        ON jugadores.ID_EquipoActual = equipos.ID_equipo
                                        JOIN temporadas
                                        ON equipos.ID_temporadaDeJuego
                                        JOIN divisiones
                                        ON equipos.division = divisiones.numDivision
                                        WHERE temporadas.ID = 9 && divisiones.numDivision = ?  
                                        ORDER BY jugadores.asistencias DESC
                                        LIMIT 0,5");
            $query->execute([$id]);

            $jugadoresTemporada = $query->fetchAll(PDO::FETCH_OBJ);

            foreach ($jugadoresTemporada as $imagen) {
                $imagenBase64 = base64_encode($imagen->imagen_blob);
                $imagen->escudoEquipo = 'data:image/png;base64,' . $imagenBase64;
            }
            
            return $jugadoresTemporada;
        }

        public function getJugadoresTemporadaVallasConDivision($id) {
            $query = $this->db->prepare("SELECT jugadores.*, equipos.*, equipos.escudoEquipo AS imagen_blob
                                        FROM jugadores
                                        JOIN equipos
                                        ON jugadores.ID_EquipoActual = equipos.ID_equipo
                                        JOIN temporadas
                                        ON equipos.ID_temporadaDeJuego
                                        JOIN divisiones
                                        ON equipos.division = divisiones.numDivision
                                        WHERE temporadas.ID = 9 && divisiones.numDivision = ?  
                                        ORDER BY jugadores.vallas DESC
                                        LIMIT 0,5");
            $query->execute([$id]);

            $jugadoresTemporada = $query->fetchAll(PDO::FETCH_OBJ);

            foreach ($jugadoresTemporada as $imagen) {
                $imagenBase64 = base64_encode($imagen->imagen_blob);
                $imagen->escudoEquipo = 'data:image/png;base64,' . $imagenBase64;
            }
            return $jugadoresTemporada;
        }

        /*-----SE REPITE MUCHISIMO CODIGO. BUSCAR DESPUES UNA SOLUCION MAS RAPIDA PARA HACER ESTAS CONSULTAS.*/

        public function getJugadoresTemporadaGoles($id) {
            $query = $this->db->prepare("SELECT jugadores.*, equipos.*, equipos.escudoEquipo AS imagen_blob, jugadorxtemporada.*
                                        FROM jugadores
                                        JOIN jugadorxtemporada 
                                        ON jugadores.ID = jugadorxtemporada.ID_Jugador
                                        JOIN temporadas 
                                        ON temporadas.ID = jugadorxtemporada.ID_Temporada
                                        JOIN equipos 
                                        ON jugadorxtemporada.ID_equipoTemporada = equipos.ID_equipo
                                        WHERE temporadas.ID = ?
                                        ORDER BY jugadorxtemporada.golesTemporada DESC
                                        LIMIT 0,5");
            $query->execute([$id]);

            $jugadoresTemporada = $query->fetchAll(PDO::FETCH_OBJ);

            foreach ($jugadoresTemporada as $imagen) {
                $imagenBase64 = base64_encode($imagen->imagen_blob);
                $imagen->escudoEquipo = 'data:image/png;base64,' . $imagenBase64;
            }
            return $jugadoresTemporada;
        }

        public function getJugadoresTemporadaAsistencias($id) {
            $query = $this->db->prepare("SELECT jugadores.*, equipos.*, equipos.escudoEquipo AS imagen_blob, jugadorxtemporada.*
                                        FROM jugadores
                                        JOIN jugadorxtemporada 
                                        ON jugadores.ID = jugadorxtemporada.ID_Jugador
                                        JOIN temporadas 
                                        ON temporadas.ID = jugadorxtemporada.ID_Temporada
                                        JOIN equipos 
                                        ON jugadorxtemporada.ID_equipoTemporada = equipos.ID_equipo
                                        WHERE temporadas.ID = ?
                                        ORDER BY jugadorxtemporada.asistenciasTemporada DESC
                                        LIMIT 0,5");
            $query->execute([$id]);

            $jugadoresTemporada = $query->fetchAll(PDO::FETCH_OBJ);

            foreach ($jugadoresTemporada as $imagen) {
                $imagenBase64 = base64_encode($imagen->imagen_blob);
                $imagen->escudoEquipo = 'data:image/png;base64,' . $imagenBase64;
            }
            return $jugadoresTemporada;
        }

        public function getJugadoresTemporadaVallas($id) {
            $query = $this->db->prepare("SELECT jugadores.*, equipos.*, equipos.escudoEquipo AS imagen_blob, jugadorxtemporada.*
                                        FROM jugadores
                                        JOIN jugadorxtemporada 
                                        ON jugadores.ID = jugadorxtemporada.ID_Jugador
                                        JOIN temporadas 
                                        ON temporadas.ID = jugadorxtemporada.ID_Temporada
                                        JOIN equipos 
                                        ON jugadorxtemporada.ID_equipoTemporada = equipos.ID_equipo
                                        WHERE temporadas.ID = ?
                                        ORDER BY jugadorxtemporada.vallasTemporada DESC
                                        LIMIT 0,5");
            $query->execute([$id]);

            $jugadoresTemporada = $query->fetchAll(PDO::FETCH_OBJ);

            foreach ($jugadoresTemporada as $imagen) {
                $imagenBase64 = base64_encode($imagen->imagen_blob);
                $imagen->escudoEquipo = 'data:image/png;base64,' . $imagenBase64;
            }
            return $jugadoresTemporada;
        }

        public function getJugadoresPorEquipo($id) {
            $query = $this->db->prepare("SELECT *
                                        FROM jugadores 
                                        JOIN equipos
                                        ON jugadores.ID_EquipoActual = equipos.ID_equipo
                                        WHERE jugadores.ID_EquipoActual = ?
                                        ORDER BY jugadores.tag ASC");

            $query->execute([$id]);

            $jugadoresEquipo = $query->fetchAll(PDO::FETCH_OBJ);

            return $jugadoresEquipo;
        }


        public function getJugadoresEquipoPasado($idTemporada, $idEquipo) {
            $query = $this->db->prepare("SELECT * FROM jugadores
                                        JOIN jugadorxtemporada
                                        ON jugadorxtemporada.ID_Jugador = jugadores.ID
                                        JOIN temporadas
                                        ON jugadorxtemporada.ID_Temporada = temporadas.ID
                                        JOIN equipos
                                        ON jugadorxtemporada.ID_equipoTemporada = equipos.ID_equipo
                                        WHERE temporadas.ID = ? && equipos.ID_equipo = ?
                                        ORDER BY jugadores.tag ASC");

            $query->execute([$idTemporada, $idEquipo]);

            $jugadoresEquipo = $query->fetchAll(PDO::FETCH_OBJ);

            return $jugadoresEquipo;
        }
    }