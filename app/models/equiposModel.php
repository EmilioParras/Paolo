<?php

    class EquiposModel {

        private $db;

        public function __construct() {
            $this->db = new PDO('mysql:host=localhost;'.'dbname=dbpaolo;charset=utf8', 'root', '');
        }

        public function getEquiposTemporadaTabla($num) {
            $query = $this->db->prepare("SELECT equipos.*, temporadas.*, equipos.escudoEquipo AS imagen_blob
                                        FROM equipos
                                        JOIN temporadas ON equipos.ID_temporadaDeJuego = temporadas.ID 
                                        WHERE temporadas.ID = 9 AND equipos.division = ?
                                        ORDER BY equipos.puntos DESC, equipos.diferencia");
            $query->execute([$num]);
            $equiposTemporada = $query->fetchAll(PDO::FETCH_OBJ);
        
            foreach ($equiposTemporada as $equipo) {
                $imagenBase64 = base64_encode($equipo->imagen_blob);
                $equipo->escudoEquipo = 'data:image/png;base64,' . $imagenBase64;
            }
        
            return $equiposTemporada;
        }

        public function getEquiposTemporadabyId($id) {
            $query = $this->db->prepare("SELECT equipos.*, temporadas.*, equipos.escudoEquipo AS imagen_blob
                                        FROM equipos
                                        JOIN temporadas ON equipos.ID_temporadaDeJuego = temporadas.ID 
                                        WHERE temporadas.ID = ?
                                        ORDER BY equipos.nombre");
            $query->execute([$id]);
            $equiposTemporada = $query->fetchAll(PDO::FETCH_OBJ);
        
            foreach ($equiposTemporada as $equipo) {
                $imagenBase64 = base64_encode($equipo->imagen_blob);
                $equipo->escudoEquipo = 'data:image/png;base64,' . $imagenBase64;
            }
        
            return $equiposTemporada;
        }

        public function getEquiposTemporada() {
            $query = $this->db->prepare ("SELECT *
                                        from equipos 
                                        JOIN temporadas 
                                        ON equipos.ID_temporadaDeJuego = temporadas.ID 
                                        WHERE temporadas.ID = 9
                                        ORDER BY equipos.division, equipos.diferencia");
            $query->execute();
            $equiposTemporada = $query->fetchAll(PDO::FETCH_OBJ);
            return $equiposTemporada;
        }

        public function getEquipoId($id) {
            $query = $this->db->prepare ("SELECT equipos.*, equipos.escudoEquipo AS imagen_blob
                                        FROM equipos 
                                        WHERE equipos.ID_equipo = ?");
            $query->execute([$id]);
            $equipo = $query->fetchAll(PDO::FETCH_OBJ);

            foreach ($equipo as $infoEquipo) {
                $imagenBase64 = base64_encode($infoEquipo->imagen_blob);
                $infoEquipo->escudoEquipo = 'data:image/png;base64,' . $imagenBase64;
            }

            return $equipo;
        }
        

    }