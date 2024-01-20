{include file="header.tpl"}

<div class="containerPlantel">

    <div class="divImagenEquipo">
        {foreach from=$equipo item=$e}
            <img src="{$e->escudoEquipo}" class="imagenEquipo"></img>
        {/foreach}
    </div>


    <div class="jugadoresEquipo">
        {foreach from=$jugadores item=$jugador}
        <div class="cardJugador">    
            <p style="font-size: 42px;">{$jugador->tag}</p>
            <img src="{$jugador->avatar}" class="jugadorImg"></img>
            <h3>Estadisticas</h3>
            <p>Goles: {$jugador->goles}</p>
            <p>Asistencias: {$jugador->asistencias}</p>
            <p>Vallas: {$jugador->vallas}</p>
        </div>
        {/foreach}

    </div>
</div>