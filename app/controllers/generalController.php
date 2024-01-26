<?php

require_once './app/views/generalView.php';

    class GeneralController {

        private $generalView;

    public function __construct() {
        $this->generalView = new GeneralView();
        
    }

    public function showInicio() {
        $this->generalView->showInicio();
    }

    public function showFaq() {
        $this->generalView->showFaq();
    }


}