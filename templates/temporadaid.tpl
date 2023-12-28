<body>

<div class="row m-0 pt-4">
    <div class="w-50">
            <div class="jumbotron text-center">
            <div style="display: inline-block; justify-content: center; width: auto;">
                <h1>Equipo Campeón</h1>
            </div>
            <img src="./images/campeonesTemporada/campeonT1.png" class="img" style="width: 625px;" alt="Campeones">
            <h4 class="mt-2">Campeones</h4> 
            <p class="lead pb-2">
                {foreach from=$campeones item=$jugador}
                    {$jugador->tag}  
                {/foreach}
            </p>
        </div>
    </div>

    <div class="col-sm-6 w-50 pt-4">
        <div class="row">

            <!-- Tabla 1 -->
            <div class="col-md-4">
                <table class="table table-bordered" style="text-align: center;">
                    <thead>
                    <h4 style="text-align: center;">Goleadores</h4>
                    <tr>
                        <th>Nombre</th>
                        <th>Goles</th>
                    </tr>
                    </thead>
                    <tbody>
                    <!-- Contenido de la tabla 1 -->
                    {foreach from=$jugadoresGoles item=$jugador}
                        <tr>
                            {if $jugador->golesTemporada>0}    
                                <td> {$jugador->tag} </td>
                                <td> {$jugador->golesTemporada} </td>
                            {/if}
                        </tr>
                    {/foreach}
                    </tbody>
                </table>
            </div>

            <!-- Tabla 2 -->
            <div class="col-md-4">
                <table class="table table-bordered" style="text-align: center;">
                    <thead>
                    <h4 style="text-align: center;">Asistidores</h4>
                    <tr>
                        <th>Nombre</th>
                        <th>Asistencias</th>
                    </tr>
                    </thead>
                    <tbody>
                    <!-- Contenido de la tabla 1 -->

                    {foreach from=$jugadoresAsist item=$jugador}
                        <tr>
                            {if $jugador->asistenciasTemporada>0}    
                                <td> {$jugador->tag} </td>
                                <td> {$jugador->asistenciasTemporada} </td>
                            {/if}   
                        </tr>
                    {/foreach}

                    </tbody>
                </table>
            </div>

            <!-- Tabla 3 -->
            <div class="col-md-4">
                <table class="table table-bordered" style="text-align: center;">
                    <thead>
                    <h4 style="text-align: center;">Vallas</h4>
                    <tr>
                        <th>Nombre</th>
                        <th>Vallas</th>
                    </tr>
                    </thead>
                    <tbody>
                    <!-- Contenido de la tabla 1 -->

                    {foreach from=$jugadoresVallas item=$jugador}
                        <tr>
                            {if $jugador->vallasTemporada>0}    
                                <td> {$jugador->tag} </td>
                                <td> {$jugador->vallasTemporada} </td>
                            {/if}
                        </tr>
                    {/foreach}

                    </tbody>
                </table>
            </div>

        </div>
    </div>
</div>


<!-- Enlace a Bootstrap JS (si es necesario) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>