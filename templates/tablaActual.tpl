{include file="header.tpl"}

<div class="contenedorTablas">

    <div class="contenedorTablaPrincipalYEquipos">
    
        <div class="tablaPrincipal">
            <table>
                <tr>
                    <th colspan="10"  class="tituloTabla">Tabla puntos</th>
                </tr>
                
                <tr>
                    <th>#</th>
                    <th>Equipo</th>
                    <th>Pts</th>
                    <th>PJ </th>
                    <th>PG</th>
                    <th>PE</th>
                    <th>PP</th>
                    <th>GF</th>
                    <th>GC</th>
                    <th>DIF</th>
                </tr>
                {assign var=counter value=1}
                {foreach from=$equipos item=$equipo}
                    <tr>
                        <td>{counter}</td>
                        <td><img src="{$equipo->escudoEquipo}" style="margin-right:5px; height: 20px; width:20px;"></img>{$equipo->nombre}</td>
                        <td>{$equipo->puntos}</td>
                        <td>{$equipo->partidosJugados}</td>
                        <td>{$equipo->partidosGanados}</td>
                        <td>{$equipo->partidosEmpatados}</td>
                        <td>{$equipo->partidosPerdidos}</td>
                        <td>{$equipo->golesFavor}</td>
                        <td>{$equipo->golesEnContra}</td>
                        <td>{$equipo->diferencia}</td>
                    </tr>
                {/foreach}
            </table>
        </div>
        
        <div class="contenedorEquipos">
            {foreach from=$equipos item=$equipo}
                <div class="infoEquipo">
                    <h4>{$equipo->nombre}</h4>
                    <a href="equipo/{$equipo->ID_equipo}"><img src="{$equipo->escudoEquipo}" style="height: 50px; width:50px;"></img></a>
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
        {foreach from=$jugadores item=$jugador}
            <tr>
                <th>{$jugador->tag}</th>
                <th>{$jugador->golesTemporada}</th>
            </tr>
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
            <tr>
                <th>{$jugador->tag}</th>
                <th>{$jugador->asistenciasTemporada}</th>
            </tr>
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
            <tr>
                <th>{$jugador->tag}</th>
                <th>{$jugador->vallasTemporada}</th>
            </tr>
        {/foreach}
    </table>
</div>