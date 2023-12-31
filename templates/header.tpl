<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Futbol Champagne a lo Paolo Guerrero</title>
    
    <meta charset="utf-8">
    <link rel="icon" href="/images/paoloPng.png" type="image/x-icon">
    <link rel="stylesheet" href="./style.css">
    <link href="https://fonts.cdnfonts.com/css/noto-sans-math" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  </head>
</html>

<header>
    <div class="containerHeader">   

        <div class="divHeader">
            <img width="100px" height="100px" src="./images/paoloPng.png" alt="icono">
        </div>

            <nav class="navMain">
                <ul class="itemsBarraNavegacion">
                    <li>
                        <a href="noticias">Noticias</a>
                    </li>
                    <li>
                        <div class="dropDown"> 
                            <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Tabla</a>
                            <ul class="dropdown-menu">
                                <li><a href="tabla/1">Tabla primera</a></li>
                                <li><a href="tabla/2">Tabla segunda</a></li>
                                <li><a href="tabla/3">Tabla promesas</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="dropDown">
                            <a class="dropdown-toggle"  href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Temporadas</a>
                            <ul class="dropdown-menu">
                                {foreach from=$temporadas item=$temporada}
                                <li><a href="temporada/{$temporada->ID}">Temporada {$temporada->numeroTemporada}</a></li>
                                {/foreach}  
                            </ul> 
                        </div>
                    </li>
                    <li>
                        <a aria-current="page" href="jugadores">Jugadores</a>
                    </li>
                    <li>
                        <a aria-current="page" href="equipos">Equipos y planteles</a>
                    </li>
                    <li>
                        <a aria-current="page" href="equipos">FAQ</a>
                    </li>
                </ul>
            </nav>
    </div>
</header>