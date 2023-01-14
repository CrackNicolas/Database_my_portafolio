use backend_my_portafolio;

insert into persona value(1,"Beltran","ricardonicolasxxxxxxx@gmail.com","Simoca - Tucumán (Argentina)","../../../assets/images/perfil.jpg","Ricardo Nicolas Alejo","Hola mi nombre es Alejo y me apasiona crear aplicaciones ya sean para la web o aplicaciones deskatop. Mi interes en la programacion surgio cuando comence una carrera universitaria donde pude adentrarme a este mundo tan increible donde dejas que tu imaginacion te diga como programar.","Programador Web Full Stack","Algunas de mis reglas al momento de realizar cualquier tipo de sistema es tener muy en cuenta el rendimiento la escalabilidad y la personalizacion entre otros parametros que influyen en la optencion de un sistema de calidad. La calidad esta en el detalle.","386567XXXX");
insert into usuario value(1,'Nico','1234',1);
insert into educacion values
(1,'Produccion de bienes y servicios','2017-12-20','2011-03-05','Escuela Media de la Tuna','../../../assets/images/Escuela_media.jpg',"Bachillerato",1),
(2,'Ingenieria en sistemas de informacion',null,'2018-03-01','Universidad Tecnologia Nacional (UTN)','../../../assets/images/Logo_utn.jpg',"Estudiante avanzado y becario, en diferentes ocaciones he ofrecido mi ayuda a chicos que tenian problemas en la programacion esto sin pedir nada acambio, ya que para mi siempre es un placer programar.",1);

insert into experiencia_laboral values
(1,'Trabaje usando el lenguaje de programacion Java y una base de datos MySql, para la administracion de la base de datos se uso Worbench y para la parte de Java se uso el IDE Apache NetBeans.','Ferreteria Bremen','2021-11-23','2019-06-12','Empleado de mantenimiento del sistema','../../../assets/images/Logo-bremen.png',1),
(2,'Trabaje usando tecnologias como HTML5 con el motor de plantillas handlebars, CSS3 con el Framework Tailwind y JavaScript con el Framework Express.js.','Empresa de control de calidad de calzados','2022-12-10','2022-01-11','Programador de logistica','../../../assets/images/Logo-inspeccionar_de_calzados.webp',1);

insert into pasatiempo values
(1,'Deportes','He sido un deportista profesional, jugando Billar y Snooker, en un futuro me gustaria tambien jugar Bola 9.','icono_pool',1),
(2,'Instrumento','En mis ratos libres me gusta tocar guitarra y teclado.','icono_instrumento',1),
(3,'Otros','En ocaciones tambien me gusta ayudar a otros programadores que apenas estan iniciando en el mundo de la programacion.','icono_otros',1);

insert into red_social values
(1,'xxxxxxxxxxxxxxxxxxxxxxxxx','Email','icono_email',1),
(2,'yyyyyyyyyyyyyyyyyyyyyyyyy','Telefono','icono_telefono',1),
(3,'ccccccccccccccccccccccccc','Linkeding','icono_linkeding',1);

insert into proyecto values
(1,'App web, fabrica de sapatillas con lineas de produccion donde se crean ordenes de produccion con un modelo y color las lineas tienen supervisores de linea y de calidad para que estos realizar el control de calidad de los calzados y notifiquen incidencias en los pares.','https://github.com/','Control de calidad','JavaScript, Mysql, CSS3, HTML5, Tailwind, HandleBards','../../../assets/images/Control_de_calidad.png',1),
(2,'App de escritorio, GUI que cuenta con un analizador lexico y sintactico y una seccion donde podemos ingresar una consulta sql, luego de ejecutar el sistema nos devolvela el analisis del analizador lexico y sintactico seguido de un mansaje de si nuestra consulta es valida.','https://github.com/','Parser','Java, java-cup, java-cup-11a, Jflex','../../../assets/images/Parser.png',1),
(3,'App de escritorio, consiste en la administracion de una empresa que cuenta con pedidos de productos, y toda la administracion de las oficinas de la empresa.','https://github.com/','Clasical Model','Java, Mysql','../../../assets/images/Clasical_model.png',1),
(4,'App de escritorio, tablero con 7 let 2 botones en cada extremo, las luces se encienden con un color azul hasta llegar al extremo y el ultimo let se mantiene en color verde durante un 1s hasta que el jugador presione el boton, si el jugador no presiona el boton antes de tiempo el let cambia a rojo.','https://github.com/','Juego pong','Arduino','../../../assets/images/Juego_pong.png',1),
(5,'App de escritorio, na de las soluciones fue usando grafos y la otra fue usando solo codigo basico, consiste en ingresar o seleccionar un archivo con una porcion de codigo, y al ejecutarlo nos devolvera una lista indicando los tokens.','https://github.com/','Analizador lexico','C, C++','../../../assets/images/Analizador_lexico.png',1),
(6,'App de escritorio, consiste en la administracion de una editorial de libros, que ademas implementa la validacion y uso de ISBNS. Y administracion de libros con su autores correspondientes.','https://github.com/','Editorial de libros','C, C++','../../../assets/images/Editorial_de_libros.png',1),
(7,'App web, consiste en la administracion de una fabrica de zapatillas.','https://github.com/','Fabrica','Next.js, Axios, TypeScript, Mysql, Tailwind, CSS3, HTML5','../../../assets/images/Control_de_calidad_next.png',1),
(8,'App web, consiste en un formulario de preguntas multiusuario. Las cuales se incrementan progresivamente.','https://github.com/','Quiz de preguntas','React, Axios, Mysql, CSS3, HTML5','../../../assets/images/Formulario_de_preguntas.png',1),
(9,'App de escritorio, esta enfocado en la administracion de una ferreteria que cuenta con recursos humanos, compras, ventas, y pago de sueldos, tambien nos presenta todo tipo de reportes.','https://github.com/','Bremen','Java, Mysql','../../../assets/images/Bremen.png',1),
(10,'App web en donde se puede realizar la gestion de imagenes al estilo pinterest y algun otro detalle que yo agregue.','https://github.com/','Pinterest','JavaScript, Express.js, MongoDB, EJS, HandleBards, Bootstrap, CSS3, HTML5','../../../assets/images/Pinterest.png',1),
(11,'App web, esta fue uno de los portafolios que deje a mitad de camino, en otras palabras seria la primera version de mi portafolio.','https://github.com/','Portafolio V1.0','JavaScript, CSS3, HTML5','../../../assets/images/Pinterest.png',1),
(12,'App web de administracion de usuarios, con seguridad para evitar ataques como XSS, CSRF, SQL INJECTION, CODE INJECTION, BRUTE FORCE ROBOTS tambien incluye SSL y el archivo .htaccess','https://github.com/','ABM usuarios','PHP, Mysql, PDO, crypt, CSS3, HTML5','../../../assets/images/Administracion_de_usuarios.png',1);

insert into habilidad values
(1,'uso_actual','HTML5','icono_html5',80,'tecnica',1),
(2,'uso_actual','CSS3','icono_css3',80,'tecnica',1),
(3,'uso_actual','JavaScript','icono_javascript',75,'tecnica',1),
(4,'uso_actual','TypeScript','icono_typescript',85,'tecnica',1),
(5,'uso_actual','Java','icono_java',90,'tecnica',1),
(6,'uso_antiguo','PHP','icono_php',80,'tecnica',1),
(7,'uso_antiguo','C++','icono_c',60,'tecnica',1),
(8,'uso_actual','MySQL','icono_mysql',95,'tecnica',1),
(9,'uso_actual','MongoDB','icono_mongodb',55,'tecnica',1),
(10,'uso_antiguo','Arduino','icono_arduino',45,'tecnica',1),
(11,'uso_antiguo','Python','icono_python',45,'tecnica',1),
(12,'uso_actual','npm','icono_npm',80,'tecnica',1),
(13,'uso_actual','React','icono_react',80,'tecnica',1),
(14,'uso_actual','Bootstrap','icono_bootstrap',90,'tecnica',1),
(15,'uso_actual','Tailwind','icono_tailwind',70,'tecnica',1),
(16,'uso_actual','Next.js','icono_next',75,'tecnica',1),
(17,'uso_actual','Angular','icono_angular',75,'tecnica',1),
(18,'uso_actual','Node.js','icono_node',80,'tecnica',1),
(19,'uso_actual','Creatividad','icono_creatividad',90,'blanda',1),
(20,'uso_actual','Pensamiento crítico','icono_pensamiento_critico',75,'blanda',1),
(21,'uso_actual','Resolver problemas','icono_resolver_problema',80,'blanda',1),
(22,'uso_actual','Trabajo en equipo','icono_trabajo_en_equipo',70,'blanda',1),
(23,'uso_actual','Comunicación','icono_comunicacion',100,'blanda',1),
(24,'uso_actual','Fuerza de voluntad','icono_fuerza_de_voluntad',100,'blanda',1),
(25,'uso_actual','Autodidacta','icono_autodidacta',100,'blanda',1),
(26,'uso_actual','Sociabilidad','icono_sociabilidad',100,'blanda',1),
(27,'uso_actual','Inteligencia emocional','icono_inteligencia_emocional',85,'blanda',1),
(28,'uso_actual','Jira','icono_jira',80,'gestion_de_proyecto',1),
(29,'uso_actual','Trello','icono_trello',60,'gestion_de_proyecto',1),
(30,'uso_actual','Git','icono_git',90,'controlador_de_versiones',1),
(31,'uso_actual','GitHub','icono_git',95,'controlador_de_versiones',1);

