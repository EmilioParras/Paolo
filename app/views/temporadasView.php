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

       public function showDatosTemporadaById($jugadoresTemporadaGoles, $jugadoresTemporadaAsist, $jugadoresTemporadaVallas, $jugadoresCampeonesTemporada, $allTemporadas) {
        $this->smarty->assign('temporadas', $allTemporadas);
        $this->smarty->assign('jugadoresGoles', $jugadoresTemporadaGoles);
        $this->smarty->assign('jugadoresAsist', $jugadoresTemporadaAsist);
        $this->smarty->assign('jugadoresVallas', $jugadoresTemporadaVallas);
        $this->smarty->assign('campeones', $jugadoresCampeonesTemporada);
        $this->smarty->display('templates/header.tpl');
        $this->smarty->display('templates/temporadaId.tpl');
       }

       public function show($allTemporadas) {
        $this->smarty->assign('temporadas', $allTemporadas);
        $this->smarty->display('templates/temporadaId.tpl');
       }

    }