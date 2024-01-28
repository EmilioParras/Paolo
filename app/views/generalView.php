<?php

require_once './libs/smarty-4.3.4/libs/Smarty.class.php';

class GeneralView {
        
    private $smarty;

    public function __construct() {
        $this->smarty = new Smarty();
    }

    public function showInicio() {
        $this->smarty->display('inicio.tpl');
    }

    public function showFaq() {
        $this->smarty->display('faq.tpl');
    }

    public function showFormato() {
        $this->smarty->display('formato.tpl');

    }
    
}