<?php

require_once './libs/smarty-4.3.4/libs/Smarty.class.php';

class TablasView {
        
    private $smarty;

    public function __construct() {
        $this->smarty = new Smarty();
    }

}