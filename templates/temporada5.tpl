{include file="header.tpl"}

<h1 style=" display:flex; justify-content: center; margin-top: 10px;">Temporada {foreach from=$datosTemporada item=$numeroTemporada}{$numeroTemporada->numeroTemporada}{/foreach}</h1>

<div class="contenedorTablas">

    <div class="divTemporadaPrincipalT5">

        <div class="divEquipoCampeon"> 
            <h1 style="font-size:56px; margin-bottom:10px;">Equipo Campeón</h1>
            {foreach from=$datosTemporada item=$imagen}
                <img src="{$imagen->imagenCampeones}" style="height: 50%; width:100%;"></img>
            {/foreach}
            <h2 style="margin-top: 10px;">Campeones </h2>
            <div class="jugadoresCampeones">
                {foreach from=$datosEquipoCampeon item=$info}
                    <p style="margin-top: 3px;">{$info->tag}</p>
                {/foreach}
            </div>
        </div>

        <div class="contenedorEquiposT5">
            {foreach from=$equipos item=$equipo}
                <a href="equipoPasado/{foreach from=$datosTemporada item=$numeroTemporada}{$numeroTemporada->numeroTemporada}{/foreach}/{$equipo->ID_equipo}" style="text-decoration: none; color:black;">
                    <div class="infoEquipo">
                        <h4 class="nombreEquipo">{$equipo->nombre}</h4>
                        <img src="{$equipo->escudoEquipo}" style="height: 60px; width:60px; margin-bottom:10px"></img>
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
                {if $jugador->golesTemporada>0}
            <tr>    
                <th><img src="{$jugador->escudoEquipo}" style="height: 25px; width:25px; margin-right:5px;"></img>{$jugador->tag}</th>
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
                <th><img src="{$jugador->escudoEquipo}" style="height: 25px; width:25px; margin-right:5px;"></img>{$jugador->tag}</th>
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
                <th><img src="{$jugador->escudoEquipo}" style="height: 25px; width:25px; margin-right:5px;"></img>{$jugador->tag}</th>
                <th>{$jugador->vallasTemporada}</th>
            </tr>
                {/if}
            {/foreach}
    </table>
</div>

{include file="footer.tpl"}