<?php

require_once './libs/smarty-4.3.4/libs/Smarty.class.php';

class TablasView {
        
    private $smarty;

    public function __construct() {
        $this->smarty = new Smarty();
    }

    public function showTabla($equiposTemporada, $allTemporadas, $jugadoresTemporada) {
        $this->smarty->assign('temporadas', $allTemporadas);
        $this->smarty->assign('jugadores', $jugadoresTemporada);
        $this->smarty->assign('equipos', $equiposTemporada);
        $this->smarty->display('templates/tablaActual.tpl');
    }

    public function showTablaPromesas($equiposTemporada, $allTemporadas, $jugadoresTemporada) {
        $this->smarty->assign('temporadas', $allTemporadas);
        $this->smarty->assign('jugadores', $jugadoresTemporada);
        $this->smarty->assign('equipos', $equiposTemporada);
        $this->smarty->display('templates/tablaPromesas.tpl');
    }

}