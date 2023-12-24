<?php
require_once './app/controllers/jugadoresController.php';
require_once './app/controllers/tablasController.php';
require_once './app/controllers/temporadasController.php';

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

$action = 'inicio';
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}

$params = explode('/', $action);

switch ($params[0]) {
    case 'inicio' :
        $temporadasController = new TemporadasController();
        $temporadasController->showNoticias();
        break;
        
}