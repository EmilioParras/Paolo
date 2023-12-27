<?php

require_once './libs/smarty-4.3.4/libs/Smarty.class.php';

    class TemporadasView {
        
        private $smarty;

        public function __construct() {
            $this->smarty = new Smarty();
        }

       public function showHome($allTemporadas) {
        $this->smarty->assign('temporadas', $allTemporadas);
        $this->smarty->display('templates/header.tpl');
        $this->smarty->display('templates/noticiaActual.tpl');
       }

       public function showDatosTemporadaById($jugadoresTemporada, $equipoCampeonTemporada) {
        $this->smarty->assgin('jugadores', $jugadoresTemporada);
        $this->smarty->assgin('equipo', $equipoCampeonTemporada);
        $this->smarty->display('templates/temporadaId.tpl');
       }

       public function show($allTemporadas) {
        $this->smarty->assign('temporadas', $allTemporadas);
        $this->smarty->display('templates/temporadaId.tpl');
       }

    }