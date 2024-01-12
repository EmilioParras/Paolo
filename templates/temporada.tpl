{include file="header.tpl"}

<h1 style=" display:flex; justify-content: center; margin-top: 10px;">Temporada </h1>

<div class="contenedorTablas">

    <div class="divTemporadaPrincipal">

        <div class="divEquipoCampeon"> 
            <h2>Equipo Campeón</h2>
            <img src="">
            <p>
            jugador1
            j2
            j2
            </p>
        </div>

        <div class="divEquipos">
            <h2>Equipos de la temporada</h2>
            
        </div>

    </div>

    <table class="tablaEstadisticas">
        <tr>
            <th colspan="2" class="tituloTabla">Goleadores</th>
        </tr>
        <tr>
            <th>Jugador</th>
            <th>Goles</th>
        </tr>
            {foreach from=$jugadoresGoles item=$jugador}
                {if $jugador->golesTemporada>0}
            <tr>    
                <th>{$jugador->tag}</th>
                <th>{$jugador->golesTemporada}</th>
            </tr>
                {/if}
            {/foreach}
    </table>

    <table class="tablaEstadisticas">
        <tr>
            <th colspan="2" class="tituloTabla">Asistidores</th>
        </tr>
        <tr>
            <th>Jugador</th>
            <th>Asistencias</th>
        </tr>
            {foreach from=$jugadoresAsist item=$jugador}
                {if $jugador->asistenciasTemporada>0}
            <tr>    
                <th>{$jugador->tag}</th>
                <th>{$jugador->asistenciasTemporada}</th>
            </tr>
                {/if}
            {/foreach}
    </table>

    <table class="tablaEstadisticas">
        <tr>
            <th colspan="2" class="tituloTabla">Vallas</th>
        </tr>
        <tr>
            <th>Jugador</th>
            <th>Vallas</th>
        </tr>
            {foreach from=$jugadoresVallas item=$jugador}
                {if $jugador->vallasTemporada>0}
            <tr>    
                <th>{$jugador->tag}</th>
                <th>{$jugador->vallasTemporada}</th>
            </tr>
                {/if}
            {/foreach}
    </table>
</div>