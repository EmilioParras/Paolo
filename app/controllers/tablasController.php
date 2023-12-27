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
                $equiposTemporada = $this->equiposModel->getEquiposTemporada(1);
                $jugadoresTemporada = $this->jugadoresModel->getJugadoresTemporada(1);
                $this->tablasView->showTabla($equiposTemporada, $allTemporadas);
            } else if($id == 2) {
                $equiposTemporada = $this->equiposModel->getEquiposTemporada(2);
                $jugadoresTemporada = $this->jugadoresModel->getJugadoresTemporada(2);
                $this->tablasView->showTabla($equiposTemporada, $allTemporadas);
            } else if ($id == 3){
                $equiposTemporada = $this->equiposModel->getEquiposTemporada(3);
                $jugadoresTemporada = $this->jugadoresModel->getJugadoresTemporada(3);
                $this->tablasView->showTablaPromesas($equiposTemporada, $allTemporadas);
            }
        }

    


    }