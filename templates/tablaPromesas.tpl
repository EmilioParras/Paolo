{include file="header.tpl"}

<div class="contenedorTablas">
    <table class="tablaPrincipal">
        <tr>
            <th colspan="10"  class="tituloTabla">Tabla puntos</th>
        </tr>
        <tr>
            <th>#</th>
            <th>Equipo</th>
            <th>Pts</th>
            <th>PJ</th>
            <th>PG</th>
            <th>PE</th>
            <th>PP</th>
            <th>DIF</th>
        </tr>
        {assign var=counter value=1}

        {foreach from=$equipos item=$equipo}
        <tr>
            <td>{counter}</td>
            <td>{$equipo->nombre}</td>
            <td>{$equipo->puntos}</td>
            <td>{$equipo->partidosJugados}</td>
            <td>{$equipo->partidosGanados}</td>
            <td>{$equipo->partidosEmpatados}</td>
            <td>{$equipo->partidosPerdidos}</td>
            <td>{$equipo->diferencia}</td>
        </tr>
    {/foreach}

    </table>

    <table class="tablaEstadisticas">
        <tr>
            <th colspan="2" class="tituloTabla">Goleadores</th>
        </tr>
        
        <tr>
            <th>Jugador</th>
            <th>Goles</th>
        </tr>
        {foreach from=$jugadores item=$jugador}
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
        {foreach from=$jugadores item=$jugador}
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
        {foreach from=$jugadores item=$jugador}
            {if $jugador->vallasTemporada>0}
                <tr>    
                    <th>{$jugador->tag}</th>
                    <th>{$jugador->vallasTemporada}</th>
                </tr>
            {/if}
        {/foreach}
    </table>
</div>