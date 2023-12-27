Pagina:
1- Header limpio, solamente con el logo.
2- Se podra navegar entre diferentes secciones las cuales son:
	1- Noticias sobre la temporada actual. Por ejemplo: Fichajes, dadas de baja a jugadores, declaraciones, respectivos premios al final 		de la temporada, etc.			
	2- Tablas. En esta seccion se podra navegar entre distintas tablas. Una de ellas la de los equipos con sus partidos jugados, 			ganados, perdidos, goles a favor, goles en contra, etc. 
		Tabla de goleadores, asistidores y valla menos vencida.
	3- Temporadas pasadas. Seccion dedicada a justamente informacion sobre los campeones de las temporadas pasadas. Por ejemplo, en la 		temporada actual que salio campeon Velez, pondria la foto de los campeones y datos sobre su temporada, goleador, asistidor, 		partidos ganados,etc.
	4- Jugadores. Informacion sobre los jugadores de la temporada actual (Goleadores, asistidores, vallas).
	5- Historia. Seccion sobre la historia de FCPG.
3- Footer (Pie de pagina). Informacion con las redes de FCPG.

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
3. temporadasController requiere temporadasModel y temporadasView.



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


----------ERRORES----------

Warning: Undefined property: Smarty_Internal_Undefined::$objMap in C:\xampp\htdocs\PaginaPaolo\libs\smarty-4.3.4\libs\sysplugins\smarty_internal_extension_handler.php on line 132

Fatal error: Uncaught --> Smarty: undefined extension class 'Smarty_Internal_Method_Assgin' <-- thrown in C:\xampp\htdocs\PaginaPaolo\libs\smarty-4.3.4\libs\sysplugins\smarty_internal_undefined.php on line 62

Posibles causas:
1- Mal uso del template para acceder a los datos - (PENDIENTE)