<?php

require_once './libs/smarty-4.3.4/libs/Smarty.class.php';

    class TemporadasView {
        
        private $smarty;

        public function __construct() {
            $this->smarty = new Smarty();
        }

       public function showHome($allTemporadas) {
        $this->smarty->assign('temporadas', $allTemporadas);
        $this->smarty->display('templates/headerOfi.tpl');
        $this->smarty->display('templates/noticiaActual.tpl');
       }

       public function showDatosTemporadaById($jugadoresTemporada) {
        $this->smarty->assgin('jugadores', $jugadoresTemporada);
        $this->smarty->display('templates/temporadaid.tpl');
       }

       public function show() {
        $this->smarty->display('templates/temporadaid.tpl');
       }

    }