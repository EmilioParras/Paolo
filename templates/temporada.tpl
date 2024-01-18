{include file="header.tpl"}

<h1 style=" display:flex; justify-content: center; margin-top: 10px;">Temporada {foreach from=$datosTemporada item=$numeroTemporada}{$numeroTemporada->numeroTemporada}{/foreach}</h1>

<div class="contenedorTablas">

    <div class="divTemporadaPrincipal">

        <div class="divEquipoCampeon"> 
            <h2>Equipo Campeón</h2>
            {foreach from=$datosTemporada item=$imagen}
                <img src="{$imagen->imagenCampeones}" style="height: 250px; width:250px; margin-bottom:20px"></img>
            {/foreach}
            {foreach from=$datosEquipoCampeon item=$info}
                <p>{$info->tag}</p>
            {/foreach}
        </div>

        <div class="contenedorEquipos">
        {foreach from=$equipos item=$equipo}
            <div class="infoEquipo">
                <h4>{$equipo->nombre}</h4>
                <a href="equipo/{$equipo->ID_equipo}"><img src="{$equipo->escudoEquipo}" style="height: 60px; width:60px; margin-bottom:20px"></img></a>
            </div>
        {/foreach}    
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