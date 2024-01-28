<?php

require_once './libs/smarty-4.3.4/libs/Smarty.class.php';
    class TemporadasView {
        
        private $smarty;

        public function __construct() {
            $this->smarty = new Smarty();
        }

       public function showTemporadas($allTemporadas) {
        $this->smarty->assign('temporadas', $allTemporadas);
        $this->smarty->display('templates/temporadas.tpl');
       }

       public function showFechasPrimera() {
        $this->smarty->display('templates/fechasPrimera.tpl');
       }

       public function showFechasSegunda() {
        $this->smarty->display('templates/fechasSegunda.tpl');
       }

       public function showFechasTercera() {
        $this->smarty->display('templates/fechasTercera.tpl');
       }

       public function showFechasNoDisponibles() {
        $this->smarty->display('templates/fechasNoDisponibles.tpl');
       }

       public function showDatosTemporadaById($jugadoresTemporadaGoles, $jugadoresTemporadaAsist, $jugadoresTemporadaVallas, $equipoCampeon, $imagenCampeones, $allTemporadas, $equiposTemporada) {
        $this->smarty->assign('temporadas', $allTemporadas);
        $this->smarty->assign('jugadoresGoles', $jugadoresTemporadaGoles);
        $this->smarty->assign('jugadoresAsist', $jugadoresTemporadaAsist);
        $this->smarty->assign('jugadoresVallas', $jugadoresTemporadaVallas);
        $this->smarty->assign('datosEquipoCampeon', $equipoCampeon);
        $this->smarty->assign('datosTemporada', $imagenCampeones);
        $this->smarty->assign('equipos', $equiposTemporada);
        $this->smarty->display('templates/temporada.tpl');
       }

       public function showDatosTemporada5($jugadoresTemporadaGoles, $jugadoresTemporadaAsist, $jugadoresTemporadaVallas, $equipoCampeon, $imagenCampeones, $allTemporadas, $equiposTemporada) {
        $this->smarty->assign('temporadas', $allTemporadas);
        $this->smarty->assign('jugadoresGoles', $jugadoresTemporadaGoles);
        $this->smarty->assign('jugadoresAsist', $jugadoresTemporadaAsist);
        $this->smarty->assign('jugadoresVallas', $jugadoresTemporadaVallas);
        $this->smarty->assign('datosEquipoCampeon', $equipoCampeon);
        $this->smarty->assign('datosTemporada', $imagenCampeones);
        $this->smarty->assign('equipos', $equiposTemporada);
        $this->smarty->display('templates/temporada5.tpl');
       }



       public function showDatosTemporadaT8($jugadoresGolesTemporada8, $jugadoresAsistenciasTemporada8, $jugadoresVallasTemporada8, $equiposCampeonesT8, $imagenCampeonesT8, $allTemporadas, $equiposTemporadaT8) {
        $this->smarty->assign('temporadas', $allTemporadas);
        $this->smarty->assign('jugadoresGoles', $jugadoresGolesTemporada8);
        $this->smarty->assign('jugadoresAsist', $jugadoresAsistenciasTemporada8);
        $this->smarty->assign('jugadoresVallas', $jugadoresVallasTemporada8);
        $this->smarty->assign('datosEquipoCampeon', $equiposCampeonesT8);
        $this->smarty->assign('datosTemporada', $imagenCampeonesT8);
        $this->smarty->assign('equipos', $equiposTemporadaT8);
        $this->smarty->display('templates/temporada8.tpl');
       }

       public function show() {
        $this->smarty->display('templates/temporadaId.tpl');
       }

       public function showEquipo($jugadoresEquipo, $infoEquipo) {
        $this->smarty->assign('jugadores', $jugadoresEquipo);
        $this->smarty->assign('equipo', $infoEquipo);
        $this->smarty->display('templates/equipo.tpl');
       }

       public function showEquipoPasado($jugadoresEquipo, $infoEquipo) {
        $this->smarty->assign('jugadores', $jugadoresEquipo);
        $this->smarty->assign('equipo', $infoEquipo);
        $this->smarty->display('templates/equipoPasado.tpl');
       }

    }