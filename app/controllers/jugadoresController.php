<?php 
require_once './app/views/jugadoresView.php';
require_once './app/models/jugadoresModel.php';

    class JugadoresController {

        private $jugadoresView;
        private $jugadoresModel;

        public function __construct() {
            $this->jugadoresModel = new JugadoresModel();
            $this->jugadoresView = new JugadoresView();
        }

    }