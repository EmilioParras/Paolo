<?php

require_once './app/models/temporadasModel.php';
require_once './app/models/jugadoresModel.php';
require_once './app/models/equiposModel.php';
require_once './app/views/temporadasView.php';   


    class TemporadasController {

        private $equiposModel;
        private $temporadasModel;
        private $jugadoresModel;        
        private $temporadasView;

        public function __construct() {
            $this->equiposModel = new EquiposModel();
            $this->temporadasModel = new TemporadasModel();
            $this->jugadoresModel = new JugadoresModel();
            $this->temporadasView = new TemporadasView();
        }

        public function showTemporadas() {
            $allTemporadas = $this->temporadasModel->getAllTemporadas();
            $this->temporadasView->showTemporadas($allTemporadas);
        }

        public function showFechas($id) {
            if($id == 1) {
                $this->temporadasView->showFechasNoDisponibles();
            } else if($id == 2) {
                $this->temporadasView->showFechasSegunda();
            } else if ($id == 3){
                $this->temporadasView->showFechasTercera();
            }
        }


        public function showEquipo($id) {
            $equipo = $this->equiposModel->getEquipoId($id);
            $jugadoresEquipo = $this->jugadoresModel->getJugadoresPorEquipo($id);
            $this->temporadasView->showEquipo($jugadoresEquipo, $equipo);   
        }

        public function showEquipoPasado($idTemporada, $idEquipo) {
            $infoEquipo = $this->equiposModel->getEquipoId($idEquipo);
            $jugadoresEquipo = $this->jugadoresModel->getJugadoresEquipoPasado($idTemporada, $idEquipo);
            $this->temporadasView->showEquipoPasado($jugadoresEquipo, $infoEquipo);   
        }

        public function showDatosTemporadaById($id) {
                if ($id == 5) {
                    $allTemporadas = $this->temporadasModel->getAllTemporadas();
                $equipoCampeon = $this->temporadasModel->getJugadoresCampeonesTemporada($id);
                $imagenCampeones = $this->temporadasModel->getImagenCampeones($id);
                $jugadoresTemporadaGoles = $this->jugadoresModel->getJugadoresTemporadaGoles($id);
                $jugadoresTemporadaAsist = $this->jugadoresModel->getJugadoresTemporadaAsistencias($id);
                $jugadoresTemporadaVallas = $this->jugadoresModel->getJugadoresTemporadaVallas($id);
                $equiposTemporada = $this->equiposModel->getEquiposTemporadabyId($id);
                $this->temporadasView->showDatosTemporada5($jugadoresTemporadaGoles, $jugadoresTemporadaAsist, $jugadoresTemporadaVallas, $equipoCampeon, $imagenCampeones, $allTemporadas, $equiposTemporada); 
                } else {
                    $allTemporadas = $this->temporadasModel->getAllTemporadas();
                    $equipoCampeon = $this->temporadasModel->getJugadoresCampeonesTemporada($id);
                    $imagenCampeones = $this->temporadasModel->getImagenCampeones($id);
                    $jugadoresTemporadaGoles = $this->jugadoresModel->getJugadoresTemporadaGoles($id);
                    $jugadoresTemporadaAsist = $this->jugadoresModel->getJugadoresTemporadaAsistencias($id);
                    $jugadoresTemporadaVallas = $this->jugadoresModel->getJugadoresTemporadaVallas($id);
                    $equiposTemporada = $this->equiposModel->getEquiposTemporadabyId($id);
                    $this->temporadasView->showDatosTemporadaById($jugadoresTemporadaGoles, $jugadoresTemporadaAsist, $jugadoresTemporadaVallas, $equipoCampeon, $imagenCampeones, $allTemporadas, $equiposTemporada); 
                }
           
        }

        /*---------SECCION PARA LA TEMPORADA 8---------*/

        public function showDatosTemporada8() {
            $allTemporadas = $this->temporadasModel->getAllTemporadas(); //ANDA
            $equiposCampeonesT8 = $this->temporadasModel->getJugadoresCampeonesTemporada8(); //ANDA
            $imagenCampeonesT8 = $this->temporadasModel->getImagenCampeonesT8(); //AND
            $jugadoresGolesTemporada8 = $this->jugadoresModel->getJugadoresTemporada8Goles(); //ANDA
            $jugadoresAsistenciasTemporada8 = $this->jugadoresModel->getJugadoresTemporada8Asistencias(); //ANDA
            $jugadoresVallasTemporada8 = $this->jugadoresModel->getJugadoresTemporada8Vallas(); //ANDA
            $equiposTemporadaT8 = $this->equiposModel->getEquiposTemporadabyIdT8();

            $this->temporadasView->showDatosTemporadaT8($allTemporadas, $equiposCampeonesT8, $imagenCampeonesT8, $jugadoresGolesTemporada8, $jugadoresAsistenciasTemporada8, $jugadoresVallasTemporada8, $equiposTemporadaT8);  

        }

}
