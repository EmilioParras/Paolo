<!DOCTYPE html>
<html lang="en">
<head>
    <base href="{BASE_URL}">
    <link rel="icon" href="/images/iconoPaolo.webp">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Just Us Store</title>
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
            <a class="nav-link text-black" aria-current="page" href="inicio">Inicio</a>
          </li>
          <li class="nav-item">
            <div class="dropdown">
              <a class="btn dropdown-toggle" href="inicio" role="button" data-bs-toggle="dropdown" aria-expanded="false">Zapatillas </a>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                {foreach from=$categorias item=$categoria} 
                  <li><a class="dropdown-item" href="categoria/{$categoria->id}">{$categoria->nombreCategoria}</a></li>
                {/foreach} 
              </ul>
            </div>
          </li>
            {if !$email}    
              <li class="nav-item">
                <a class="nav-link text-black" aria-current="page" href="iniciar-sesion">Login</a>
              </li>
            {else}
              <li class="nav-item ml-auto">
                <a class="nav-link" aria-current="page" href="logout">Logout - {$email} </a>
              </li>
            {/if}
            {if $email}
              <div class="dropdown">
                  <a class="btn dropdown-toggle" href="inicio" role="button" data-bs-toggle="dropdown" aria-expanded="false">Admin Table</a>
                  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                    <li class="nav-item"><a class="nav-link text-black" href="tabla-administrador-zapatillas">Tabla administrador de zapatillas</a></li>
                    <li class="nav-item"><a class="nav-link text-black" href="tabla-administrador-categorias">Tabla administrador de categorias</a></li>
                  </ul>
              </div>
            {/if}  
          </ul>
          <a><img class="d-flex mx-3" width="70px" height="70px" src="./imagenes/icon.png" alt="icono"></a>
      </div>
    </div>
  </nav>
  <!-- Navbar -->

  <div class="p-5 text-center bg-light shadow-lg p-3 mb-5 bg-body rounded">
    <h1 class="display-1 mb-3 text-black">Just Us Store</h1>
  </div>
  
</header>

