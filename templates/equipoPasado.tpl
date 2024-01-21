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
            <p style="font-size: 42px; margin: 0px;">{$jugador->tag}</p>
            <div class="divJugador">
                <div>
                    <h2 class="avatarJugador">{$jugador->avatar}</h2>
                </div>
            </div>
            <h2>Estadisticas</h2>
            <p style="font-size: 20px;">Goles: {$jugador->golesTemporada}</p>
            <p style="font-size: 20px;">Asistencias: {$jugador->asistenciasTemporada}</p>
            <p style="font-size: 20px;">Vallas: {$jugador->vallasTemporada}</p>
        </div>
        {/foreach}

    </div>
</div>