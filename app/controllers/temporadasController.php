<?php

require_once './app/models/temporadasModel.php';
require_once './app/views/jugadoresPorTemporada.php';
require_once './app/views/temporadasView.php';
require_once './app/views/noticiasView.php';


    class TemporadasController {

        private $temporadasModel;
        private $jugadoresPorTemporadaView;
        private $temporadasView;
        private $noticiasView;

        public function __construct () {
            $this->temporadasModel = new TemporadasModel();
            $this->jugadoresPorTemporadaView = new JugadoresPorTemporadaView();
            $this->temporadasView = new TemporadasView();
            $this->noticiasView = new NoticiasView();
        }

        public function showNoticias() {
            $this->noticiasView->showNoticias();
        }

    }