<?php

require_once './libs/smarty-4.3.4/libs/Smarty.class.php';

    class NoticiasView {
        
        private $smarty;

        public function __construct () {
            $this->smarty = new Smarty();
        }

        public function showNoticias() {
            $this->smarty->display('templates/noticia.tpl');
        }
        

    }