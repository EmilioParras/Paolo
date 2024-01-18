{include file="header.tpl"}

<div class="containerPlantel">

    <div class="imagenEquipo">
    {foreach from=$equipo item=$e}
        <img src="{$e->escudoEquipo}" style="height: 150px; width:150px; margin:15px"></img>
    {/foreach}

    </div>

    <div>
        {foreach from=$jugadores item=$jugador}
            <p>{$jugador->tag}</p>
        {/foreach}
    </div>
</div>