<?php

    class EquiposModel {

        private $db;

        public function __construct() {
            $this->db = new PDO('mysql:host=localhost;'.'dbname=dbpaolo;charset=utf8', 'root', '');
        }

        public function getEquiposTemporada($num) {
            $query = $this->db->prepare ("SELECT *
                                        from equipos 
                                        JOIN temporadas 
                                        ON equipos.ID_temporadaDeJuego = temporadas.ID 
                                        WHERE temporadas.ID = 8 && equipos.division = ?
                                        ORDER BY equipos.puntos DESC, equipos.diferencia");
            $query->execute([$num]);

            $equiposTemporada = $query->fetchAll(PDO::FETCH_OBJ);
            return $equiposTemporada;
        }

        

    }