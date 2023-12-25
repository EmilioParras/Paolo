<?php

require_once './app/models/temporadasModel.php';
require_once './app/views/temporadasView.php';   


    class TemporadasController {

        private $temporadasModel;
        private $temporadasView;

        public function __construct() {
            $this->temporadasModel = new TemporadasModel();
            $this->temporadasView = new TemporadasView();
        }

        public function showHome () {
            $allTemporadas = $this->temporadasModel->getAllTemporadas();
            $this->temporadasView->showHome($allTemporadas);
        }

    }
