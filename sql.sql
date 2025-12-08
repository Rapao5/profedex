create database if not exists profedex;

use profedex;

create table if not exists generacion(
    id int primary key auto_increment,
    nombre varchar(255)
);

create table if not exists profemon(
    id int primary key auto_increment,
    nombre varchar(255),
    tipo varchar(255),
    habilidad_nombre varchar(255),
    habilidad_descripcion varchar(1000),
    biologia varchar(1000),
    descripcion varchar(1000),
    id_generacion int,
    foreign key(id_generacion) references generacion(id)
);

create table if not exists frase(
    id int primary key auto_increment,
    id_profemon int,
    frase varchar(255),
    foreign key(id_profemon) references profemon(id)
);

create table if not exists ataque(
    id int primary key auto_increment,
    id_profemon int,
    nombre varchar(255),
    descripcion varchar(1000),
    foreign key(id_profemon) references profemon(id)
);

create table if not exists evolucion(
    id int primary key auto_increment,
    id_profemon int,
    numero int,
    nombre varchar(255),
    evolucion varchar(255),
    foreign key(id_profemon) references profemon(id)
);
INSERT INTO generacion (nombre) VALUES ("Generación 1");
INSERT INTO generacion (nombre) VALUES ("Generación 2");

INSERT INTO profemon (nombre, tipo, habilidad_nombre, habilidad_descripcion, biologia, descripcion, id_generacion)
VALUES 
('Carlos',
 'Eléctrico',
 'Persuasión',
 'Carlos se ajusta las gafas y te da una explicación técnica tan convincente que pierdes las ganas de luchar. Efecto: El rival queda Confundido y se ataca a sí mismo creyendo que ha cometido un ''Error de Sintaxis''. Si el rival es una máquina, este ataque hace el doble de daño (hackeo social).',
 'Su cerebro funciona como un procesador de 128 núcleos. Utiliza su oratoria para convencer a los alumnos de que los ordenadores lentos ''van bien'' y es solo su imaginación. La energía estática de su barba aumenta cuando tiene que explicar por quinta vez cómo se guarda un archivo.',
 'Carlos es una leyenda en Totana. Se cuenta que una vez arregló un servidor caído solo hablándole suavemente y usando su movimiento Persuasión. Si te cruzas con él y llevas un cable mal enrollado, sentirá una perturbación en la fuerza y te soltará una descarga correctiva.',
 1
);

INSERT INTO profemon (nombre, tipo, habilidad_nombre, habilidad_descripcion, biologia, descripcion, id_generacion)
VALUES 
('Klara',
 'Fuego/Agua',
 'Presión',
 'Klara libera una densa nube de vapor ardiente mientras mira fijamente al rival y le pregunta: ''¿Has pedido permiso para ir al baño?''. Efecto: El ambiente se vuelve pesado e irrespirable (como un día de humedad en Mazarrón). El rival se siente tan agobiado por la presión de la fecha de entrega que su Velocidad baja drásticamente y pierde turnos por ''ansiedad de compilación''.',
 'Su cuerpo funciona como un sistema de refrigeración líquida viviente. El lado naranja procesa datos a velocidades cuánticas, generando un calor inmenso, mientras que el lado azul hace circular fluidos helados para evitar el colapso del sistema. Se alimenta de ''cookies'' de navegador y de la humedad de la brisa marina.',
 'Klara es la única criatura capaz de programar bajo el sol de agosto en Mazarrón sin sudar. Se dice que el código que escribe con su mano de fuego es tan eficiente que, si no lo enfría rápidamente con su mano de agua, el papel o la pantalla se derretirían al instante. Sus alumnos saben que si su llama brilla mucho, es que ha encontrado un bug difícil.',
 1
);

INSERT INTO profemon (nombre, tipo, habilidad_nombre, habilidad_descripcion, biologia, descripcion, id_generacion)
VALUES 
('Final',
 'Dragon/Fuego',
 'Me voy',
 'Cuando sus PS bajan a la mitad o el combate se vuelve aburrido, Final empieza a recoger sus cosas. Tiene un 30% de probabilidad al final de cada turno de retirarse automáticamente del combate (cambiando por otro compañero) o de volverse Invulnerable durante un turno porque, mentalmente, ''ya no está ahí''.',
 'Su piel escamosa es resistente a altas temperaturas, una adaptación necesaria para sobrevivir a los veranos murcianos y al calor de los servidores que protege. Su coleta actúa como una antena receptora de señales Wi-Fi; si se le eriza, es que ha detectado un malware cerca. Siempre lleva sudadera para ocultar sus puertos de conexión biológicos.',
 'Final es un Profemón brillante pero volátil que habita en las zonas cálidas de Murcia. Es famoso entre el alumnado por la ''Gran Crisis del Medio Curso'', un evento legendario donde casi abandona la docencia para irse a vivir al monte, pero regresó misteriosamente al día siguiente. Si le ves suspirar y mirar hacia la puerta, cuidado: está calculando la ruta de escape más rápida.',
 1
);

INSERT INTO profemon (nombre, tipo, habilidad_nombre, habilidad_descripcion, biologia, descripcion, id_generacion)
VALUES 
('Dani Dani',
 'Agua',
 'Paso',
 'Dani Dani es tan fluido que los problemas le resbalan. Los ataques que causan problemas de estado (quemaduras, parálisis o estrés por exámenes) rebotan en su cuerpo de agua y no le afectan. Además, tiene probabilidad de esquivar ataques físicos simplemente porque ''no le apetece recibir el golpe''.',
 'Su cuerpo está compuesto por un 90% de agua salada del Mediterráneo y un 10% de refrigerante líquido industrial de alta calidad. No tiene huesos ni estructura sólida, lo que le permite colarse por los cables de fibra óptica para viajar instantáneamente. Cuando se ríe, genera pequeñas mareas en un radio de cinco metros.',
 'Este Profemón ha viajado por las redes de todo el mundo, desde los servidores de Tokio hasta los cibercafés de Águilas. Su filosofía de vida es ''si funciona, no lo toques''. Es famoso por dar sus clases de Sistemas con una tranquilidad pasmosa; si un alumno se agobia, Dani Dani simplemente le salpica un poco de agua marina para que se relaje.',
 1
);

INSERT INTO profemon (nombre, tipo, habilidad_nombre, habilidad_descripcion, biologia, descripcion, id_generacion)
VALUES 
('Marta',
 'Psíquico',
 'Solo de batería',
 'Al entrar en combate, Marta empieza a tocar un ritmo mental ensordecedor. Esto impide que cualquier Profemón en el campo pueda dormirse (inmune al sueño) y aumenta la potencia de los ataques basados en sonido un 50%.',
 'La gema de su frente actúa como un metrónomo místico, marcando el ritmo perfecto de sus clases. No necesita caminar; levita para no ensuciarse el vestido con la tiza. Se alimenta de la energía mental que gastan sus alumnos intentando conjugar los Phrasal Verbs correctamente.',
 'Marta parece una criatura serena y silenciosa, pero es pura fachada. Es la fundadora del grupo ''Mañana no hay clase'', famoso en todo Jumilla. Utiliza sus poderes telequinéticos para tocar la batería con seis baquetas a la vez sin tocarlas con las manos. Se dice que sus solos son tan intensos que han llegado a fermentar el vino de las bodegas cercanas antes de tiempo.',
 1
);

INSERT INTO profemon (nombre, tipo, habilidad_nombre, habilidad_descripcion, biologia, descripcion, id_generacion)
VALUES 
('Raquel',
 'Tierra/Planta',
 'Esporas Somníferas',
 'El temario de Raquel es tan denso que suelta constantemente un polvillo sedante. Cualquier Profemón que la toque o la ataque físicamente tiene un 30% de probabilidad de caer Dormido al instante, soñando con nóminas y contratos indefinidos.',
 'Su cuerpo está formado por arcilla compacta y sedimentos de las minas de Mazarrón, lo que le otorga una defensa física envidiable. Las hojas que brotan de su cabeza actúan como sensores de peligro; vibran cuando alguien está a punto de tener un accidente laboral. Se dice que sus gafas son irrompibles y le permiten detectar la letra pequeña de cualquier contrato a kilómetros de distancia.',
 'Raquel es la protectora de la seguridad laboral en Mazarrón. A pesar de su aspecto adorable y pequeño, es increíblemente resistente y estricta con las normas. Si ve a un alumno sin el equipo de protección adecuado (EPIs), libera sus esporas para dormirlo y evitar que se haga daño. Siempre lleva un caramelo para premiar a quien sepa calcular su base de cotización.',
 1
);

INSERT INTO profemon (nombre, tipo, habilidad_nombre, habilidad_descripcion, biologia, descripcion, id_generacion)
VALUES 
('Antonio',
 'Planta',
 'Mano celestial',
 'Gracias a sus reflejos de portero, Antonio puede interceptar cualquier ataque que sea un proyectil (bolas, rayos, rocas) con una mano gigante de energía vegetal. Tiene un 50% de probabilidad de anular completamente el daño de esos ataques y quedarse con el objeto lanzado.',
 'Su piel verde está cargada de clorofila adaptada al clima tropical de la costa granadina. Las hojas de su cabeza actúan como un radar para detectar balones aéreos y cambios en la legislación laboral. Sus pies anchos y garras fuertes le permiten enraizarse al suelo para que ningún delantero (ni ningún inspector de trabajo) pueda derribarlo.',
 'Conocido como el ''Gigante Amable'' de Motril. Antonio es incapaz de poner un parte negativo; prefiere dialogar y regalar fruta a los alumnos revoltosos. En el campo de fútbol es una muralla infranqueable; se dice que trata el balón con el mismo cuidado con el que explica las nóminas. Su sonrisa tranquila calma a los estudiantes antes de los exámenes finales.',
 2
);

INSERT INTO profemon (nombre, tipo, habilidad_nombre, habilidad_descripcion, biologia, descripcion, id_generacion)
VALUES 
('Cipriano',
 'Veneno',
 'Rapidez',
 'Cipriano habla y se mueve tan deprisa que siempre ataca primero. Además, sus explicaciones son tan veloces que el rival tiene un 30% de probabilidad de quedar Confundido al intentar procesar tanta información en tan poco tiempo.',
 'Su piel de color púrpura segrega una toxina leve que se activa con el estrés de los fallos de servidor. Su cresta roja le proporciona aerodinámica para moverse por el aula (y la pista) sin resistencia al viento. Nunca suelta su raqueta, que utiliza tanto para jugar como para señalar errores en la pizarra digital desde la otra punta de la clase.',
 'Cipriano es una leyenda en la Facultad de Informática de Murcia. Es capaz de configurar un clúster de Kubernetes y ganar un set de tenis al mismo tiempo. Sus alumnos temen sus clases no por la dificultad, sino porque explica el temario de un mes en 15 minutos. Si le ves ajustarse las gafas y levantar la raqueta, prepárate: viene una pregunta de examen a la velocidad del sonido.',
 2
);

INSERT INTO profemon (nombre, tipo, habilidad_nombre, habilidad_descripcion, biologia, descripcion, id_generacion)
VALUES 
('Sergio',
 'Acero',
 'Restauración',
 'Sergio trata a sus compañeros de equipo como si fueran un PORSCHE averiado. Al final de cada turno, restaura un 1/16 de los PS de los aliados de tipo Acero o Eléctrico y elimina el óxido (cura el estado de Quemadura o Parálisis).',
 'Su cuerpo no es sólido, sino que está compuesto por una mezcla de ectoplasma y aceite de motor usado de alta calidad. Su característico bigote está formado por limaduras de hierro magnetizadas. Flota sobre pilas de chatarra absorbiendo la ''historia'' de los objetos metálicos viejos para fortalecer su propia estructura espectral.',
 'Sergio es un espíritu perfeccionista que habita en los talleres de Totana. Como profesor de Diseño Web, aplica la misma paciencia al código que a los coches antiguos: odia los atajos modernos y prefiere picar código a mano, ''como se hacía antes''. Si tu página web no es responsiva, te perseguirá en sueños haciendo ruidos de motor gripado hasta que la arregles.',
 2
);

INSERT INTO profemon (nombre, tipo, habilidad_nombre, habilidad_descripcion, biologia, descripcion, id_generacion)
VALUES 
('Marina',
 'Volador',
 'Cuerpo llama',
 'Su temperatura corporal es altísima debido al procesamiento de datos en segundo plano. Si un rival le hace un ataque de contacto (la toca), tiene un 30% de probabilidad de sufrir Quemaduras. Efecto fuera de combate: Si llevas a Marina en tu equipo, los ''Huevos'' (proyectos de alumnos) eclosionan (compilan) el doble de rápido.',
 'Marina es la encargada de traer los nuevos ''paquetes'' de software al mundo. Aunque su aspecto es dulce y su peinado azul sugiere calma, no te dejes engañar: es una profesora de DAW2. Si no optimizas tus consultas a la base de datos, su temperatura interna sube tanto que puede freír un disco duro con solo mirarlo. Dicen que el saco que lleva nunca se vacía, siempre hay más frameworks que aprender dentro.',
 'A pesar de ser un ave migratoria, Marina nunca se aleja de las salas de servidores. Sus plumas azules actúan como disipadores de calor, pero su núcleo siempre está ardiendo a 90ºC. Utiliza el pico largo y naranja para ''picotear'' código malicioso (bugs) directamente de la nube. Incuba los proyectos de fin de grado bajo su ala hasta que están listos para salir a producción.',
 2
);

INSERT INTO profemon (nombre, tipo, habilidad_nombre, habilidad_descripcion, biologia, descripcion, id_generacion)
VALUES 
('Samuel',
 'Normal',
 'Teletrasporte',
 'Samu es imposible de atrapar. Tiene una Evasión altísima de base. Cada vez que recibe un ataque físico, tiene un 50% de probabilidad de desmaterializarse y aparecer detrás del rival sin recibir daño, sonriendo y ajustándose las gafas.',
 'Su anatomía está diseñada para la eficiencia máxima. Sus grandes orejas captan errores de sintaxis a kilómetros de distancia. Se cree que no camina, sino que ejecuta micro-teletransportes constantes para moverse, lo que explica por qué nunca llega tarde, pero tampoco nadie lo ve llegar. Se alimenta de barritas energéticas y de código limpio.',
 'Samu es el Profemón más enigmático de la facultad. Nadie sabe dónde vive ni qué hace en su tiempo libre, aunque la medalla de oro que siempre lleva al cuello sugiere que es campeón de algún deporte que la humanidad aún no conoce. Explica Python con tal velocidad que los alumnos no saben si ha escrito el código en la pizarra o simplemente lo ha hecho aparecer con la mente.',
 2 
);
INSERT INTO profemon (nombre, tipo, habilidad_nombre, habilidad_descripcion, biologia, descripcion, id_generacion)
VALUES 
('Klara',
 'Fuego/Agua',
 'Presión',
 'Klara libera una densa nube de vapor ardiente mientras mira fijamente al rival y le pregunta: ''¿Has pedido permiso para ir al baño?''. Efecto: El ambiente se vuelve pesado e irrespirable (como un día de humedad en Mazarrón). El rival se siente tan agobiado por la presión de la fecha de entrega que su Velocidad baja drásticamente y pierde turnos por ''ansiedad de compilación''.',
 'Su cuerpo funciona como un sistema de refrigeración líquida viviente. El lado naranja procesa datos a velocidades cuánticas, generando un calor inmenso, mientras que el lado azul hace circular fluidos helados para evitar el colapso del sistema. Se alimenta de ''cookies'' de navegador y de la humedad de la brisa marina.',
 'Klara es la única criatura capaz de programar bajo el sol de agosto en Mazarrón sin sudar. Se dice que el código que escribe con su mano de fuego es tan eficiente que, si no lo enfría rápidamente con su mano de agua, el papel o la pantalla se derretirían al instante. Sus alumnos saben que si su llama brilla mucho, es que ha encontrado un bug difícil.',
 2
);
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (1, "Consultas", "Carlos se ajusta las gafas con severidad, abre su libro de golpe y proyecta en el aire una pizarra holográfica llena de ejercicios complejos (JOINs anidados, subconsultas imposibles...). Mira fijamente al rival y le dice con voz tronadora: 'Sacad una hoja. Quiero estas veinte consultas resueltas y optimizadas... ¡YA!'");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (1, "Página de la ONU", "Carlos proyecta un holograma gigante de la web oficial de las Naciones Unidas (con todos sus menús desplegables y miles de enlaces) y cruza los brazos con severidad. Mira al rival por encima de las gafas y ordena: 'Quiero una réplica exacta, 'pixel perfect' y responsive. Tenéis una hora'");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (1, "Velocidad extrema", "Carlos cierra su libro de golpe, se convierte en un borrón amarillo de pura electricidad y desaparece de la vista. Se mueve tan rápido que es capaz de ir a su mesa, corregir 30 exámenes y volver para golpearte antes de que tú hayas terminado de parpadear.");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (2, "Examen sorpresa", "Klara junta sus manos de fuego y agua con una palmada fuerte que suena como un portazo. De repente, una densa niebla de vapor cubre el campo de batalla y, de la nada, empiezan a llover hojas de examen ardiendo y mojadas sobre la cabeza del oponente.");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (2, "Permiso para el baño", "Klara bloquea el paso con una mirada fulminante. Su lado de agua empieza a hervir violentamente debido a la furia de su lado de fuego, creando una nube de vapor hirviendo alrededor de ella. Con voz tranquila pero aterradora, pregunta: '¿Quién te ha dejado salir?'");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (2, "Voy a hacerme un café", "Klara ignora completamente al rival por un turno. Genera agua pura con su mano azul y la hierve instantáneamente con su mano de fuego, sintetizando un café expreso de alta concentración en segundos. Se lo bebe de un trago con una mirada de satisfacción.");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (3, "POO", "Final se ajusta las gafas y empieza a invocar diagramas de clases y flechas de herencia que giran violentamente alrededor del rival. De repente, instancia un 'Objeto' gigante y abstracto de puro código Java que cae del cielo, aplastando al enemigo bajo el peso de la abstracción y el polimorfismo.");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (3, "Ponerse la capucha", "Final agarra los bordes de su sudadera gris y se cala la capucha lentamente hasta cubrirse la cabeza, dejando solo visibles sus gafas brillando en la penumbra. El ambiente se oscurece como si estuviera programando de madrugada con todas las luces apagadas.");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (3, "Patocracia", "Final sonríe maliciosamente bajo su capucha e invoca una pista de carreras holográfica frente al rival. Dos patitos de goma pixelados aparecen en la línea de salida: uno lleva un cartel que dice 'Semana que viene' y el otro, en rojo parpadeante, dice 'MAÑANA'. Los patos salen disparados en una carrera frenética hacia el enemigo.");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (4, "Preguntale a Antonio", "Dani Dani se encoge de hombros mostrando sus músculos de agua, pone cara de 'eso no es de mi asignatura' y señala hacia un lado. De repente, invoca un holograma espectral de Antonio que aparece de la nada con un chaleco reflectante.");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (4, "Cabezazo cen", "Dani Dani bosteza, señala al enemigo con desgana y murmura: 'Iker, remata tú que yo estoy cansado'. De repente, un alumno llamado Iker sale disparado desde la espalda de Dani como un misil humano, volando en horizontal con la frente por delante y brillando con una energía caótica.");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (4, "Nítido", "Dani Dani detiene el combate un momento, se pasa la mano de agua por el 'pelo' y su cuerpo entero se filtra instantáneamente. El agua turbia se vuelve cristalina, pura y brillante. Posa como un culturista, suelta un destello cegador con su sonrisa y dice con total satisfacción: '¡Nítido!'");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (5, "Reading", "Marta levita y su tercer ojo brilla intensamente. De repente, proyecta frente a los ojos del rival un texto en inglés académico de cinco páginas, con letra minúscula y sin párrafos, sobre la 'reproducción del escarabajo pelotero en el siglo XIX'");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (5, "Speaking", "Marta hace aparecer de la nada un micrófono de pie espectral justo delante de la boca del rival y un foco de luz cegador lo ilumina solo a él. Todo el campo de batalla se queda en un silencio sepulcral, esperando una respuesta. Marta se cruza de brazos y levanta una ceja, esperando.");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (5, "Listening", "Marta hace brillar su gema y materializa unos auriculares espectrales que se ajustan a la fuerza en las orejas del rival. A continuación, reproduce la 'Pista 3': una conversación entre dos pastores escoceses grabada con mala calidad, con mucho ruido de fondo y viento.");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (6, "Cambio de sitio", "Raquel se ajusta las gafas, señala al rival con su dedo de arcilla y, con voz de autoridad absoluta, dice: 'Tú, ahí no te callas. Coge tus cosas y vete a primera fila'. El suelo de tierra bajo el oponente se mueve como una cinta transportadora y se lo lleva lejos.");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (6, "Caramelos de café", "Raquel mete la mano en un bolsillo que parece no tener fondo (o rompe una roca cercana revelando que está rellena de dulces) y saca un puñado de esos caramelos duros, oscuros y de envoltorio dorado. Con una sonrisa maternal, los lanza como si fuera una metralleta hacia la boca del rival.");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (6, "Nóminas", "Raquel saca una calculadora de piedra, teclea furiosamente y hace caer una losa gigante de roca sobre el rival. La losa está grabada con una nómina llena de deducciones complejas, retenciones del 20% y un 'Salario Neto' minúsculo.");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (7, "Padel + Cerveza", "Antonio hace aparecer mágicamente una pala de pádel en una mano y una caña bien fría en la otra. Primero, le pega un raquetazo a una bola de energía verde que rebota en una pared invisible y golpea al rival. Inmediatamente después, ignora el combate por un segundo, se seca el sudor de la frente y se bebe la cerveza de un trago con un sonoro '¡Ahhh!'");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (7, "Fichas de la unidad 4", "Antonio sonríe inocentemente y saca de la nada un taco de folios inusualmente grueso y mal grapado. Los lanza al aire y se multiplican mágicamente, creando una ventisca de papel blanco y hojas verdes que envuelve al rival.");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (7, "Examen dificil", "Antonio pone cara muy seria, se cruza de brazos y anuncia con voz grave: 'Este va a ser el examen más difícil del curso' El rival se cubre aterrorizado esperando un golpe brutal. Antonio le lanza suavemente una hoja de papel donde solo hay una pregunta: '¿Cómo te llamas? (10 puntos)'");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (8, "Examen sorpresa", "Cipriano lanza un taco de folios al aire como si fuera a realizar un servicio. Con un movimiento borroso de su brazo, golpea cada hoja con su raqueta, enviando los exámenes hacia el rival como si fueran shurikens a 200 km/h. Los papeles brillan con un aura morada tóxica.");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (8, "PosgreSQL", "Cipriano lanza la pelota al aire, pero esta se transforma en un icono gigante de base de datos (un cilindro azul y pesado). Con un grito de esfuerzo y un movimiento de raqueta fulminante, le pega un 'smash' que envía la base de datos completa a la velocidad de la luz contra la cabeza del rival");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (8, "Practica express", "Cipriano mira su reloj de muñeca frenéticamente, grita '¡Cierro la entrega en 5 minutos!' y su cuerpo se rodea de un aura de velocidad pura. Empieza a disparar una lluvia de pelotas de tenis a quemarropa, y cada bola lleva escrita una tarea urgente: 'Sube el servidor', 'Arregla el CSS', 'Reinicia el Docker'");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (9, "CSS", "Sergio se alisa el bigote, mira al rival con desaprobación estética y murmura: 'Te falta diseño'. Acto seguido, lanza chorros de 'pintura espectral' y corchetes { } de acero brillante que cubren al enemigo como si lo estuviera maquetando o pintando un coche en el taller.");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (9, "Refranero español", "Sergio se detiene en seco, levanta un dedo espectral y se atusa el bigote con aire solemne. Con voz de ultratumba, recita un dicho popular (como 'Vísteme despacio, que tengo prisa' o 'En casa de herrero, cuchillo de palo'). Las palabras se materializan en el aire como enormes letras de hierro oxidado y caen pesadamente sobre la cabeza del rival.");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (9, "Palante-Patras", "Sergio hace levitar la pila de chatarra y piezas oxidadas sobre la que flota, dándole la forma cruda de un chasis de coche clásico. Haciendo un ruido espectral de motor acelerando ('¡Ruuun, ruuuun!'), embiste con la masa metálica hacia delante contra el rival. Justo después, hace el sonido de meter marcha atrás ('¡Piii, piii, piii!') y arrastra violentamente toda la chatarra hacia atrás, pasando sobre el enemigo por segunda vez.");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (10, "MVC", "Marina ejecuta una secuencia perfecta de tres golpes: primero aplasta al rival con el pesado saco de datos que lleva en el pico, luego lo ciega con un destello azul de su plumaje y finaliza con un picotazo lógico que conecta todo el daño en un solo error fatal de sistema.");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (10, "View", "Marina despliega sus alas de golpe y proyecta una luz cegadora que 'renderiza' instantáneamente el campo de batalla con una interfaz visual perfecta. El brillo es tan intenso que deslumbra al rival, quemándole con el calor residual del servidor mientras le muestra lo único que importa: el resultado final que ve el usuario.");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (11, "Paciencia", "Samu frena en seco su frenético ritmo habitual y se cruza de brazos con una calma sobrenatural, cerrando los ojos tras sus gafas. Su figura se vuelve semitransparente y la realidad parece ralentizarse a su alrededor, obligando al rival a esperar desesperadamente a que el profesor 'aparezca' o se materialice de nuevo, consumiendo su energía atacando al aire mientras Samu simplemente... no está.");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (12, "Examen sorpresa", "Klara junta sus manos de fuego y agua con una palmada fuerte que suena como un portazo. De repente, una densa niebla de vapor cubre el campo de batalla y, de la nada, empiezan a llover hojas de examen ardiendo y mojadas sobre la cabeza del oponente.");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (12, "Permiso para el baño", "Klara bloquea el paso con una mirada fulminante. Su lado de agua empieza a hervir violentamente debido a la furia de su lado de fuego, creando una nube de vapor hirviendo alrededor de ella. Con voz tranquila pero aterradora, pregunta: '¿Quién te ha dejado salir?'");
INSERT INTO ataque (id_profemon, nombre, descripcion)
VALUES (12, "Voy a hacerme un café", "Klara ignora completamente al rival por un turno. Genera agua pura con su mano azul y la hierve instantáneamente con su mano de fuego, sintetizando un café expreso de alta concentración en segundos. Se lo bebe de un trago con una mirada de satisfacción.");




aaaaa