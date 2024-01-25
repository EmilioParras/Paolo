{include file="header.tpl"}

<body>

    <div class="grid-container-faq">


    <div class="faq-container">
        <div class="divFaq" id="section1">
            <img class="imagenFaq" src="./images/imgFaq/torneosFaq.png">
            <button class="botonFaq" onclick="toggleContent('content1')">VER MÁS</button>
            <div class="contenidoOcultoFaq" id="content1">
                <p class="pContenidoFaq">
                ・Los torneos, son eventos oficiales organizados por C.A.F.C con el objetivo de traer diversión a nuestros usuarios y unir a la comunidad mediante estos eventos.<br>
                ・El formato de los torneos pueden ir variando cada temporada, por lo que, este FAQ no reflejara todo lo que pudo haber cambiado desde su publicación. Se recomiendan leer los canales de ⁠〔📖〕formato, ⁠〔📖〕reglamento y ⁠〔🔔〕anuncios de nuestro discord para estar al tanto de todo a día de hoy.<br>
                ・¿Cómo me inscribo a los torneos?<br>
                    Para participar en uno de estos deberás dirigirte a la sección de ⁠⁠⁠〔🔔〕anuncios y cuando abran inscripciones tendrás que reaccionar al " ✅ ". Una vez hecho eso no entraras al torneo directamente. Los participantes son elegidos mediante un grupo de comisión.
                    Igualmente estarás tomado en cuenta en la lista de fichajes.<br>
                ・¿Cómo participo si no me inscribí?<br>
                    SI NO te inscribiste a tiempo o no fuiste seleccionado para jugar el torneo, aun puedes participar de este. Puedes mandar un mensaje en ⁠〔🔎〕buscar-equipo y si a algún equipo le faltan jugadores existe la posibilidad de que se fijen allí para buscar nuevos jugadores.<br>
                ¿Qué son las TIERS?<br>
                    ・Las tiers básicamente determinan tu nivel, un ejemplo, X (TIER 1) es mucho mas habilidoso que Y (TIER 11), cuanto mas bajo sea tu tier significa que sos "mejor" que los que estén por debajo tuyo. Cada equipo tiene un jugador de cada tier.<br>
                ・¿Quienes determinan las TIERS?<br>
                    ・Las personas que determinan las TIERS son las que forman parte de la comision de tierlist si quieres formar parte de esta no dudes en postularte.<br>
                ・¿Puedo crear un equipo?<br>
                    ・NO, por ahora no se puede crear tus propios equipos.    
                
                </p>
            </div>
        </div>
    </div>   

        <div class="faq-container">
            <div class="divFaq" id="section2">
                <img class="imagenFaq" src="">
                <button class="botonFaq" onclick="toggleContent('content2')">VER MÁS</button>
                <div class="contenidoOcultoFaq" id="content2">
                    <p class="pContenidoFaq">Contenido oculto de la sección 2</p>
                </div>
            </div>
        </div>

        <div class="faq-container">
            <div class="divFaq" id="section3">
                <img class="imagenFaq" src="">
                <button class="botonFaq" onclick="toggleContent('content3')">VER MÁS</button>
                <div class="contenidoOcultoFaq" id="content3">
                    <p class="pContenidoFaq">Contenido oculto de la sección 2</p>
                </div>
            </div>
        </div>

        <div class="faq-container">
            <div class="divFaq" id="section4">
                <img class="imagenFaq" src="">
                <button class="botonFaq" onclick="toggleContent('content4')">VER MÁS</button>
                <div class="contenidoOcultoFaq" id="content4">
                    <p class="pContenidoFaq">Contenido oculto de la sección 2</p>
                </div>
            </div>
        </div>    

    </div>




    <script>
        function toggleContent(contentId) {
            var content = document.getElementById(contentId);
            content.classList.toggle('active');
        }

        var allContents = document.querySelectorAll('.contenidoOcultoFaq');
        allContents.forEach(function (item) {
        if (item.id !== contentId) {
            item.classList.remove('active');
        }
    });
    </script>

{include file="footer.tpl"}