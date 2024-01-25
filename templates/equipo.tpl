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
                    <p class="avatarJugador" style="font-size: 52px;">{$jugador->avatar}</p>
                </div>
            </div>
            <h2>Estadisticas</h2>
            <p style="font-size: 20px;">Goles: {$jugador->goles}</p>
            <p style="font-size: 20px;">Asistencias: {$jugador->asistencias}</p>
            <p style="font-size: 20px;">Vallas: {$jugador->vallas}</p>
        </div>
        {/foreach}
    </div>
</div>

{include file="footer.tpl"}