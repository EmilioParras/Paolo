<?php

require_once './libs/smarty-4.3.4/libs/Smarty.class.php';

    class TemporadasView {
        
        private $smarty;

        public function __construct() {
            $this->smarty = new Smarty();
        }

       public function showInicio($allTemporadas) {
        $this->smarty->assign('temporadas', $allTemporadas);
        $this->smarty->display('templates/inicio.tpl');
       }

       public function showTemporadas($allTemporadas) {
        $this->smarty->assign('temporadas', $allTemporadas);
        $this->smarty->display('templates/temporadas.tpl');
       }

       public function showFechas() {
        $this->smarty->display('templates/fechas.tpl');
       }

       public function showDatosTemporadaById($jugadoresTemporadaGoles, $jugadoresTemporadaAsist, $jugadoresTemporadaVallas, $jugadoresCampeonesTemporada, $allTemporadas) {
        $this->smarty->assign('temporadas', $allTemporadas);
        $this->smarty->assign('jugadoresGoles', $jugadoresTemporadaGoles);
        $this->smarty->assign('jugadoresAsist', $jugadoresTemporadaAsist);
        $this->smarty->assign('jugadoresVallas', $jugadoresTemporadaVallas);
        $this->smarty->assign('campeones', $jugadoresCampeonesTemporada);
        $this->smarty->display('templates/temporada.tpl');
       }

       public function show($allTemporadas) {
        $this->smarty->assign('temporadas', $allTemporadas);
        $this->smarty->display('templates/temporadaId.tpl');
       }

    }