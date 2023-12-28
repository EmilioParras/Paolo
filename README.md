Pagina:


ANOTACIONES MIAS: 

----------CONTROLLERS----------


1. jugadoresController maneja la seccion jugadores que pasaron por paolo.
2. tablasController maneja las tablas actuales tanto de equipos como de estadisticas de jugadores.
3. temporadasController maneja las consultas a temporadas anteriores tanto de equipos campeones como de estadisticas de jugadores.


----------MODELS----------


1. jugadoresModel va a manejar las consultas sobre las estadisticas de los jugadores que pasaron por paolo y sobre las estadisticas de los jugadores en esta temporada.
2. equiposModel va a manejar las consultas sobre los equipos.
3. temporadasModel va a hacer consulta a todo lo que sea por temporadas pasadas. Por ejemplo el equipo campeon de la temporada 1 y la tabla con las estadisticas de los jugadores de esa temporada.


----------VIEWS----------


1. jugadoresView muestra las estadisticas de todos los jugadores que pasaron por paolo.
2. noticiasView muestra las noticias actuales de la temproada actual.
3. tablasView va a desplegar 2 opciones. Tabla de equipos actual y tabla de estadisticas de la temporada actual.
4. temporadasView se va a encargar de mostrar las temporadas de la 1 a la 8 de paolo con el equipo campeon y sus tabla de estadisticas.


----------REQUIRE ONCE DE CONTROLLERS----------


1. jugadoresController requiere solamente jugadoresModel y jugadoresView.
2. tablasController requiere equiposModel, jugadoresModel y tablasView.
3. temporadasController requiere temporadasModel, temporadasView y jugadoresModel.



----------ANOTACIONES SOBRE CONSULTAS SQL----------

-----CONSULTA 1-----
SELECT equipos.ID, equipos.nombre, equipos.ID_temporadaDeJuego from equipos JOIN temporadas ON equipos.ID_temporadaDeJuego = temporadas.ID WHERE temporadas.ID = X 
ME DEVUELVE TODOS LOS EQUIPOS CUYO ID_temporadaDeJuego sea = a 1 OSEA TODOS LOS EQUIPOS QUE JUGARON LA TEMPORADA X


-----CONSULTA 2-----
SELECT * 
FROM equipos
JOIN temporadas ON equipos.ID_temporadaDeJuego = temporadas.ID && equipos.ID = temporadas.ID_equipoCampeon
JOIN jugadorxtemporada ON equipos.ID = jugadorxtemporada.ID_equipoTemporada
WHERE temporadas.ID = X 
ME DEVUELVE EL EQUIPO Y LOS JUGADORES CAMPEONES DE LA TEMPORADA X


-----CONSULTA 3-----
SELECT * 
FROM equipos
JOIN temporadas ON equipos.ID_temporadaDeJuego = temporadas.ID && equipos.ID = temporadas.ID_equipoCampeon
JOIN jugadorxtemporada ON temporadas.ID = jugadorxtemporada.ID_Temporada
WHERE temporadas.ID = X
ME DEVUELVE EL EQUIPO CAMPEON DE LA TEMPORADA X Y TODOS SUS JUGADORES

-----CONSULTA 4-----
SELECT * 
FROM jugadorxtemporada
JOIN temporadas 
ON jugadorxtemporada.ID_Temporada = temporadas.ID
JOIN equipos 
ON jugadorxtemporada.ID_equipoTemporada = equipos.ID
JOIN divisiones 
ON equipos.division = divisiones.ID
WHERE temporadas.ID = 8 AND divisiones.ID = X
JUGADORES DE LA TEMPORADA ACTUAL QUE JUEGUE EN X DIVISION

----------ANOTACIONES TEMPORADAS---------

Temporada 1: Completa.

Temporada 2:

Temporada 3:

Temporada 4:

Temporada 5:

Temporada 6:

Temporada 7:

Temporada 8: