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

        public function getJugadoresCampeonesTemporada($id) {
            $query = $this->db->prepare("SELECT *
                                        FROM jugadores
                                        JOIN jugadorxtemporada
                                        ON jugadorxtemporada.ID_Jugador = jugadores.ID
                                        JOIN equipos
                                        ON jugadorxtemporada.ID_equipoTemporada = equipos.ID_equipo
                                        JOIN temporadas
                                        ON temporadas.ID_equipoCampeon = equipos.ID_equipo
                                        WHERE temporadas.ID = ?
                                        ORDER BY jugadores.tag ASC");
            $query->execute([$id]);

            $equipoCampeon = $query->fetchAll(PDO::FETCH_OBJ);
            return $equipoCampeon;
        }

        public function getImagenCampeones($id) {
            $query = $this->db->prepare("SELECT temporadas.*, imagenCampeones AS imagen_blob
                                        FROM temporadas
                                        WHERE temporadas.ID = ?");
            $query->execute([$id]);

            $equipoCampeon = $query->fetchAll(PDO::FETCH_OBJ);

            foreach ($equipoCampeon as $imagen) {
                $imagenBase64 = base64_encode($imagen->imagen_blob);
                $imagen->imagenCampeones = 'data:image/png;base64,' . $imagenBase64;
            }

            return $equipoCampeon;
        }

        /*----------CONSULTAS PARA LA TEMPORADA 8*/

        public function getJugadoresCampeonesTemporadaT8( $primera, $segunda, $tercera) {
            $query = $this->db->prepare("SELECT *
                                        FROM jugadores
                                        JOIN jugadorxtemporada
                                        ON jugadorxtemporada.ID_Jugador = jugadores.ID
                                        JOIN equipos
                                        ON jugadorxtemporada.ID_equipoTemporada = equipos.ID_equipo
                                        JOIN temporadas
                                        ON temporadas.ID_equipoCampeon = equipos.ID_equipo
                                        WHERE temporadas.ID = 8
                                        ORDER BY jugadores.tag ASC");
            $query->execute([$id, $primera, $segunda, $tercera]);

            $equipoCampeon = $query->fetchAll(PDO::FETCH_OBJ);
            return $equipoCampeon;
        }
    }