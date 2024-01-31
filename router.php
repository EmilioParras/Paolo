<?php
require_once './app/controllers/tablasController.php';
require_once './app/controllers/temporadasController.php';
require_once './app/controllers/generalController.php';

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

$action = 'tabla/1';
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}

$params = explode('/', $action);

switch ($params[0]) {
    case 'tabla' :
        $tablasController = new TablasController();
        $id = $params [1];
        $tablasController->showTabla($id);
        break;
    case 'temporadas' :
        $temporadasController= new TemporadasController();
        $temporadasController->showTemporadas();
        break;    
    case 'temporada' :
        $temporadasController= new TemporadasController();
        $id = $params[1];
        $temporadasController->showDatosTemporadaById($id);
        break;
    case 'formato' : 
        $generalController = new GeneralController();
        $generalController->showFormato();
        break;    
    case 'equipo' :
        $temporadasController = new TemporadasController();
        $id = $params[1];
        $temporadasController->showEquipo($id);
        break;
    case 'equipoPasado' :
        $temporadasController = new TemporadasController();
        $idTemporada = $params[1];
        $idEquipo = $params[2];
        $temporadasController->showEquipoPasado($idTemporada,$idEquipo);  
        break;  
    case 'fechas' :
        $temporadasController = new TemporadasController();
        $id = $params[1];
        $temporadasController->showFechas($id);
        break;
    default:
        echo('error 404 not found');
        break;    
        
        
}