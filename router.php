<?php
require_once './app/controllers/jugadoresController.php';
require_once './app/controllers/tablasController.php';
require_once './app/controllers/temporadasController.php';

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

$action = 'noticias';
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
} else {
    $action = 'noticias';
}

$params = explode('/', $action);

switch ($params[0]) {
    case 'noticias' :
        $temporadasController = new TemporadasController();
        $temporadasController->showHome();
        break;
    case 'tabla' :
        $tablasController = new TablasController();
        $id = $params[1];
        $tablasController->showTabla($id);
        break;
    case 'temporada' :
        $temporadasController = new TemporadasController();
        $id = $params[1];
        $temporadasController->show();
        break;
    default:
    echo('error 404 not found');
    break;

        
}