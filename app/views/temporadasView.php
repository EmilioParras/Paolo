<?php

require_once './libs/smarty-4.3.4/libs/Smarty.class.php';

    class TemporadasView {
        
        private $smarty;

        public function __construct() {
            $this->smarty = new Smarty();
        }

        public function showAllTemporadas($allTemporadas) {
            $this->smarty->assign('temporadas', $allTemporadas);
            $this->smarty->display('templates/header.tpl');
        }

    }