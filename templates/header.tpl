<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Futbol Champagne a lo Paolo Guerrero</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>


<header>
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-white">
    <div class="container-fluid">
      <button
        class="navbar-toggler"
        type="button"
        data-mdb-toggle="collapse"
        data-mdb-target="#navbarExample01"
        aria-controls="navbarExample01"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarExample01">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item active">
            <a class="nav-link text-black" aria-current="page" href="noticias">Noticias</a>
          </li>
          <li class="nav-item">
            <div class="dropdown">
              <a class="btn dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Tabla</a>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                  <li><a class="dropdown-item" href="tablaActual">Tabla actual</a></li>
                  <li><a class="dropdown-item" href="tablaJugadoresActual">Tabla Estadisticas</a></li>
              </ul>
            </div>
          </li>
              <div class="dropdown">
                  <a class="btn dropdown-toggle" href="inicio" role="button" data-bs-toggle="dropdown" aria-expanded="false">Temporadas</a>
                  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                    {foreach from=$temporadas item=$temporada}
                      <li class="nav-item"><a class="nav-link text-black" href="temporada/{$temporada->id}">Temporada {$temporada->numeroTemporada}</a></li>
                    {/foreach}  
                    </ul>
              </div>
          <li class="nav-item active">
            <a class="nav-link text-black" aria-current="page" href="noticias">Jugadores</a>
          </li>
          </ul>
          
          <a><img class="d-flex mx-3" width="70px" height="70px" src="/images/iconoPaolo.jpg" alt="iconoPaolo"></a>
      </div>
    </div>
  </nav>
  <!-- Navbar -->

  <div class="p-5 text-center bg-light shadow-lg p-3 mb-5 bg-body rounded">
    <h1 class="display-1 mb-3 text-black">Futbol Champagne a lo Paolo Guerrero</h1>
  </div>
  
</header>

