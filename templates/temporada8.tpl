{include file="header.tpl"}


<h1 style=" display:flex; justify-content: center; margin-top: 10px;">Temporada 8. Primera.</h1>

    <div class="contenedorTablas">
    
        <div class="divTemporadaPrincipal">
    
            <div class="divEquipoCampeon"> 
                <h1 style="font-size:56px; margin-bottom:10px;">Equipo Campeón</h1>
                {foreach from=$datosTemporada item=$imagen}
                    {if $imagen->division == 1}
                        <img src="{$imagen->imagenCampeones}" style="height: 450px; width:520px;"></img>
                    {/if}
                {/foreach}
                <div class="jugadoresCampeones">
                    {foreach from=$datosEquipoCampeon item=$info}
                        {if $info->division == 1}
                            <p style="margin-top: 3px;">{$info->tag}</p>
                        {/if}
                    {/foreach}
                </div>
            </div>
    
            <div class="contenedorEquipos">
                {foreach from=$equipos item=$equipo}
                    {if $equipo->division == 1}
                    <a href="equipoPasado/{foreach from=$datosTemporada item=$numeroTemporada}{$numeroTemporada->numeroTemporada}{/foreach}/{$equipo->ID_equipo}" style="text-decoration: none; color:black;">
                        <div class="infoEquipo">
                            <h4 class="nombreEquipo">{$equipo->nombre}</h4>
                            <img src="{$equipo->escudoEquipo}" style="height: 60px; width:60px; margin-bottom:10px"></img>
                        </div>
                    </a>
                    {/if}
                {/foreach}    
            </div>
        </div>
    </div>



{include file="footer.tpl"}