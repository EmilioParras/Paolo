{include file="header.tpl"}

<div class="contenedorTablas">

    <div class="contenedorTablaPrincipalYEquipos">
    
        <div class="tablaPrincipal">
            <table>
                <tr>
                    <th colspan="10" class="tituloTabla" style="font-size:32px; margin:0; padding:0;">TABLA PUNTOS</th>
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
                        <td><img src="{$equipo->escudoEquipo}" style="margin-right:10px; height: 40px;"></img>{$equipo->nombre}</td>
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
                <a href="equipo/{$equipo->ID_equipo}" style="text-decoration: none; color:black;">
                    <div class="infoEquipo">
                        <div>
                            <h4 class="nombreEquipo">{$equipo->nombre}</h4>
                            <img src="{$equipo->escudoEquipo}" style="height:60px;m"></img>                    
                        </div>
                    </div>
                </a>    
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
            {if $jugador->goles>0}
            <tr>
                <th><img src="{$jugador->escudoEquipo}" style="height: 25px; width:25px; margin-right:5px;"></img>{$jugador->tag}</th>
                <th>{$jugador->goles}</th>
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
        {foreach from=$jugadoresAsistencias item=$jugador}
            {if $jugador->asistencias>0}
            <tr>
                <th><img src="{$jugador->escudoEquipo}" style="height: 25px; width:25px; margin-right:5px;"></img>{$jugador->tag}</th>
                <th>{$jugador->asistencias}</th>
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
            {if $jugador->vallas>0}
            <tr>
                <th><img src="{$jugador->escudoEquipo}" style="height: 25px; width:25px; margin-right:5px;"></img>{$jugador->tag}</th>
                <th>{$jugador->vallas}</th>
            </tr>
            {/if}
        {/foreach}
    </table>
</div>