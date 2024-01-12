<?php

require_once './app/models/temporadasModel.php';
require_once './app/models/jugadoresModel.php';
require_once './app/views/temporadasView.php';   


    class TemporadasController {

        private $temporadasModel;
        private $jugadoresModel;        
        private $temporadasView;

        public function __construct() {
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

        public function showFechas() {
            $this->temporadasView->showFechas();
        }

        public function showEquipos() {
            $equiposTemporada = $this->equiposModel->getEquiposTemporada();
        }

        public function showEquipo($id) {
            
        }

        public function showDatosTemporadaById($id) {
            $allTemporadas = $this->temporadasModel->getAllTemporadas();
            $jugadoresCampeonesTemporada = $this->temporadasModel->getJugadoresCampeonesTemporada($id);
            $jugadoresTemporadaGoles = $this->jugadoresModel->getJugadoresTemporadaGoles($id);
            $jugadoresTemporadaAsist = $this->jugadoresModel->getJugadoresTemporadaAsistencias($id);
            $jugadoresTemporadaVallas = $this->jugadoresModel->getJugadoresTemporadaVallas($id);
            $this->temporadasView->showDatosTemporadaById($jugadoresTemporadaGoles, $jugadoresTemporadaAsist, $jugadoresTemporadaVallas, $jugadoresCampeonesTemporada, $allTemporadas);  
        }


    }
