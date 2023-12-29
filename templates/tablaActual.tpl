{include file="templates/header.tpl"}

<div class="container">
  <div class="row text-center">
    <div class="col text-center bg-dark m-1">
            <div class="text-white display-5">Tabla Puntos</div>
            <table class="table table-striped table-bordered table-responsive ">
            <thead>
                <tr class="text-center">
                    <th scope="col">#</th>
                    <th scope="col">Equipo</th>
                    <th scope="col">Pts</th>
                    <th scope="col">PJ</th>
                    <th scope="col">PG</th>
                    <th scope="col">PE</th>
                    <th scope="col">PP</th>
                    <th scope="col">GF</th>
                    <th scope="col">GC</th>
                    <th scope="col">DIF</th>
                </tr>
            </thead>
            <tbody>
                {foreach from=$equipos item=$infoEquipo}
                    <tr>
                    <th scope="row">{$infoEquipo@iteration}</th>
                        <td>{$infoEquipo->nombre}</td>
                        <td>{$infoEquipo->puntos}</td>
                        <td>{$infoEquipo->partidosJugados}</td>
                        <td>{$infoEquipo->partidosGanados}</td>
                        <td>{$infoEquipo->partidosEmpatados}</td>
                        <td>{$infoEquipo->partidosPerdidos}</td>
                        <td>{$infoEquipo->golesFavor}</td>
                        <td>{$infoEquipo->golesEnContra}</td>
                        <td>{$infoEquipo->diferencia}</td>
                    </tr>
                {/foreach}
            </tbody>
        </table>

    </div>
  </div>
</div>

<div class="container">
    <div class="row">

        <div class="col-md-4">
            <div class="col text-center bg-dark m-1">
                <div class="text-white display-5">Goleadores</div>
                <table class="table table-striped table-bordered table-responsive ">
                    <thead>
                        <tr class="text-center">
                            <th scope="col">Nombre</th>
                            <th scope="col">Goles</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach from=$equipos item=$infoEquipo}
                        <tr>
                            <td>{$infoEquipo->nombre}</td>
                            <td>{$infoEquipo->puntos}</td>
                        </tr>
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>

        <div class="col-md-4">
            <div class="col text-center bg-dark m-1">
                <div class="text-white display-5">Asistidores</div>
                <table class="table table-striped table-bordered table-responsive ">
                    <thead>
                        <tr class="text-center">
                            <th scope="col">Nombre</th>
                            <th scope="col">Asistencias</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach from=$equipos item=$infoEquipo}
                        <tr>
                            <td>{$infoEquipo->nombre}</td>
                            <td>{$infoEquipo->puntos}</td>
                        </tr>
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>

        <div class="col-md-4">
            <div class="col text-center bg-dark m-1">
                <div class="text-white display-5">Vallas</div>
                <table class="table table-striped table-bordered table-responsive ">
                    <thead>
                        <tr class="text-center">
                            <th scope="col">Nombre</th>
                            <th scope="col">Vallas</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach from=$equipos item=$infoEquipo}
                        <tr>
                            <td>{$infoEquipo->nombre}</td>
                            <td>{$infoEquipo->puntos}</td>
                        </tr>
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>

    </div>
</div>
