<?php

require_once './libs/smarty-4.3.4/libs/Smarty.class.php';

class TablasView {
        
    private $smarty;

    public function __construct() {
        $this->smarty = new Smarty();
    }

    public function showTabla($equiposTemporada, $golesTemporada, $asistenciasTemporada, $vallasTemporada) {
        $this->smarty->assign('jugadoresGoles', $golesTemporada);
        $this->smarty->assign('jugadoresAsistencias', $asistenciasTemporada);
        $this->smarty->assign('jugadoresVallas', $vallasTemporada);
        $this->smarty->assign('equipos', $equiposTemporada);
        $this->smarty->display('templates/tablaActual.tpl');
    }

    public function showTablaPromesas($equiposTemporada, $golesTemporada, $asistenciasTemporada, $vallasTemporada) {
        $this->smarty->assign('jugadoresGoles', $golesTemporada);
        $this->smarty->assign('jugadoresAsistencias', $asistenciasTemporada);
        $this->smarty->assign('jugadoresVallas', $vallasTemporada);
        $this->smarty->assign('equipos', $equiposTemporada);
        $this->smarty->display('templates/tablaActual.tpl');
    }

   

}