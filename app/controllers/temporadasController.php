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

        public function showInicio () {
            $allTemporadas = $this->temporadasModel->getAllTemporadas();
            $this->temporadasView->showInicio($allTemporadas);
        }

        public function showTemporadas() {
            $allTemporadas = $this->temporadasModel->getAllTemporadas();
            $this->temporadasView->showTemporadas($allTemporadas);
        }

        public function showFechas($id) {
            if($id == 1) {
                $this->temporadasView->showFechasNoDisponibles();
                //$this->temporadasView->showFechasPrimera();
            } else if($id == 2) {
                $this->temporadasView->showFechasSegunda();
            } else if ($id == 3){
                $this->temporadasView->showFechasTercera();
            }
        }

        public function showFaq() {
            $this->temporadasView->showFaq();
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
            if ($id == 8) {
                $primera = 1;
                $segunda = 2;
                $tercera = 3; 

                $allTemporadas = $this->temporadasModel->getAllTemporadas();
                $equiposCampeonesT8 = $this->temporadasModel->getJugadoresCampeonesTemporadaT8($primera, $segunda, $tercera);
                $imagenCampeonesT8 = $this->temporadasModel->getImagenCampeonesT8($primera, $segunda, $tercera);
                $jugadoresTemporadaGolesT8 = $this->jugadoresModel->getJugadoresTemporadaGolesT8($primera, $segunda, $tercera);
                $jugadoresTemporadaAsistT8 = $this->jugadoresModel->getJugadoresTemporadaAsistenciasT8($primera, $segunda, $tercera);
                $jugadoresTemporadaVallasT8 = $this->jugadoresModel->getJugadoresTemporadaVallasT8($primera, $segunda, $tercera);
                $equiposTemporadaT8 = $this->equiposModel->getEquiposTemporadabyIdT8($primera, $segunda, $tercera);

                $this->temporadasView->showDatosTemporadaT8($allTemporadas, $equiposCampeonesT8, $imagenCampeonesT8, $jugadoresTemporadaGolesT8, $jugadoresTemporadaAsistT8, $jugadoresTemporadaVallasT8, $equiposTemporadaT8);  

                
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

        public function showDatosTemporada8() {
            $allTemporadas = $this->temporadasModel->getAllTemporadas();

        }

    }
