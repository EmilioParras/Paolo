<!DOCTYPE html>
<html lang="en">
<head>
  <title>Futbol Champagne a lo Paolo Guerrero</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="/style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

  <div class="p-5 text-center" style="background: linear-gradient(to bottom right, #E6C60E, #736307)">
    <img width="100px" height="100px" src="./images/paoloPng.png" alt="icono">
  </div>

  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <div class="container-fluid" style=" justify-content: center;">
      <ul class="navbar-nav m-1">
        <li class="nav-item">
          <a class="nav-link actuve text-white" href="noticias">Noticias</a>
        </li>
        <li class="nav-item">
          <div class="dropdown">
            <a class="dropdown-toggle text-white text-decoration-none m-1" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Tabla</a>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="tabla/1">Tabla primera</a></li>
                <li><a class="dropdown-item" href="tabla/2">Tabla segunda</a></li>
                <li><a class="dropdown-item" href="tabla/3">Tabla promesas</a></li>
            </ul>
          </div>
        </li>
        <div class="dropdown">
          <a class="dropdown-toggle text-white text-decoration-none m-1" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Temporadas</a>
          <ul class="dropdown-menu">
            {foreach from=$temporadas item=$temporada}
              <li><a class="dropdown-item" href="temporada/{$temporada->ID}">Temporada {$temporada->numeroTemporada}</a></li>
            {/foreach}  
          </ul> 
        </div>
        <li class="nav-item active">
          <a class="nav-link text-white" aria-current="page" href="jugadores">Jugadores</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link text-white" aria-current="page" href="equipos">Equipos y planteles</a>
        </li>
      </ul>
    </div>
  </nav>

  {block name="contenido"}
    
  {/block}