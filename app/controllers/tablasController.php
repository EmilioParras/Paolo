<?php
require_once './console.php';
require_once './app/models/jugadoresModel.php';
require_once './app/models/equiposModel.php';
require_once './app/views/tablasView.php';
require_once './app/models/temporadasModel.php';

    class TablasController {

        private $jugadoresModel;
        private $equiposModel;
        private $tablasView;
        private $temporadasModel;

        public function __construct() {
            $this->jugadoresModel = new JugadoresModel();
            $this->equiposModel = new EquiposModel();
            $this->tablasView = new TablasView();
            $this->temporadasModel = new TemporadasModel();
        }

        public function showTabla($id) {
            $allTemporadas = $this->temporadasModel->getAllTemporadas();
            if($id == 1) {
                $equiposTemporada = $this->equiposModel->getEquiposTemporadaTabla(1);
                $golesTemporada = $this->jugadoresModel->getJugadoresTemporadaGolesConDivision(1);
                $asistenciasTemporada = $this->jugadoresModel->getJugadoresTemporadaAsistenciasConDivision(1);
                $vallasTemporada = $this->jugadoresModel->getJugadoresTemporadaVallasConDivision(1);
                $this->tablasView->showTabla($equiposTemporada, $golesTemporada, $asistenciasTemporada, $vallasTemporada);
            } else if($id == 2) {
                $equiposTemporada = $this->equiposModel->getEquiposTemporadaTabla(2);
                $golesTemporada = $this->jugadoresModel->getJugadoresTemporadaGolesConDivision(2);
                $asistenciasTemporada = $this->jugadoresModel->getJugadoresTemporadaAsistenciasConDivision(2);
                $vallasTemporada = $this->jugadoresModel->getJugadoresTemporadaVallasConDivision(2);
                $this->tablasView->showTabla($equiposTemporada, $golesTemporada, $asistenciasTemporada, $vallasTemporada);
            } else if ($id == 3){
                $equiposTemporada = $this->equiposModel->getEquiposTemporadaTabla(3);
                $golesTemporada = $this->jugadoresModel->getJugadoresTemporadaGolesConDivision(3);
                $asistenciasTemporada = $this->jugadoresModel->getJugadoresTemporadaAsistenciasConDivision(3);
                $vallasTemporada = $this->jugadoresModel->getJugadoresTemporadaVallasConDivision(3);
                $this->tablasView->showTablaPromesas($equiposTemporada, $golesTemporada, $asistenciasTemporada, $vallasTemporada);
            }
        }

    


    }