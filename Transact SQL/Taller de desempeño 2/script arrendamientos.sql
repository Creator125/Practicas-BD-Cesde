CREATE DATABASE Inmobiliaria;
USE Inmobiliaria;


CREATE TABLE Administradores(
	Id_Administrador INT NOT NULL PRIMARY KEY ,
	Apellidos VARCHAR(15) NOT NULL,
	Nombres VARCHAR(15) NOT NULL,
	Direccion VARCHAR(30) NOT NULL,
	Celular INT NOT NULL,
	Correo VARCHAR(255) NOT NULL,
	Nombre_Contacto VARCHAR(30) NOT NULL,
	Celular_Contacto INT NOT NULL
);


CREATE TABLE Arrendatarios(
	Id_Arrendatarios INT NOT NULL PRIMARY KEY,
	Cedula_arrenda INT NOT NULL,
	Apellidos VARCHAR(25) NOT NULL,
	Nombres VARCHAR(25) NOT NULL,
	Correo VARCHAR(255) NOT NULL,
	Celular INT NOT NULL,
	Telefono_Fijo INT NULL,
	Nombre_Empresa VARCHAR(25) NULL,
	Telefono_Empresa INT NULL,
	Carta_Laboral VARCHAR(2) NOT NULL,
	Certificado_Ingresos VARCHAR(2) NOT NULL
);

CREATE TABLE Asesores(
	id_Cedula_empleado INT NOT NULL PRIMARY KEY,
	Apellido VARCHAR(40) NOT NULL,
	Nombre VARCHAR(40) NOT NULL,
	Direccion VARCHAR(40) NOT NULL,
	Celular INT NOT NULL,
	Correo VARCHAR(255) NOT NULL,
	Nombre_Contacto VARCHAR(40) NOT NULL,
	Celular_Contacto INT NOT NULL
);


CREATE TABLE Clientes(
	Id_Cliente INT NOT NULL PRIMARY KEY,
	Cedula_cliente INT NULL,
	Nombre VARCHAR(30) NOT NULL,
	Apellido VARCHAR(30) NOT NULL,
	Carta_laboral VARCHAR(2) NOT NULL,
	Certificado_Independiente VARCHAR(2) NOT NULL,
	Salario INT NOT NULL
);


CREATE TABLE Contratos(
	Id_Contratos INT NOT NULL PRIMARY KEY,
	Fecha_Contrato DATETIME NOT NULL,
	Id_Sede INT NULL,
	Id_fiador INT NULL,
	Id_inmuebles INT NULL,
	Id_Arrendatarios INT NULL
);


CREATE TABLE Fiadores(
	Id_fiador INT NOT NULL PRIMARY KEY,
	Cedula_fiador INT NULL,
	Apellidos VARCHAR(25) NOT NULL,
	Nombres VARCHAR(25) NOT NULL,
	Carta_Laboral VARCHAR(2) NOT NULL,
	Salario INT NOT NULL,
	Certificado_Propiedad VARCHAR(2) NOT NULL
);


CREATE TABLE Inmuebles(
	Id_inmuebles INT NOT NULL PRIMARY KEY,
	direccion VARCHAR(25) NOT NULL,
	barrio VARCHAR(15) NOT NULL,
	Numero_Habitaciones INT NOT NULL,
	servicio_Gas VARCHAR(2) NOT NULL,
	servicio_Energia VARCHAR(2) NOT NULL,
	garaje VARCHAR(2) NOT NULL,
	Valor_Arriendo INT NOT NULL,
	Disponibilidad VARCHAR(2) NOT NULL,
	Tipo_Inmueble VARCHAR(20) NOT NULL,
	Observaciones VARCHAR(40) NULL,
	Id_Cedula_propietario INT NULL
);


CREATE TABLE Propietarios(
	Id_Cedula_propietario INT NOT NULL PRIMARY KEY,
	Apellido VARCHAR(40) NOT NULL,
	Nombre VARCHAR(40) NOT NULL,
	Direccion VARCHAR(30) NOT NULL,
	Celular INT NOT NULL,
	Correo VARCHAR(255) NOT NULL,
	Numero_Cuenta INT NOT NULL,
	Tipo_Cuenta VARCHAR(20) NOT NULL,
	Matricula_Casa INT NOT NULL
);


CREATE TABLE Sedes(
	Id_Sede INT NOT NULL PRIMARY KEY,
	Id_Administrador INT NULL,
	Nombre VARCHAR(30) NOT NULL,
	Direccion VARCHAR(35) NOT NULL,
	Barrio VARCHAR(25) NOT NULL,
	Telefono INT NOT NULL
);


CREATE TABLE Solicitudes(
	idSolicitud INT NOT NULL PRIMARY KEY,
	Id_inmuebles INT NULL,
	Id_Cliente INT NULL,
	Fecha_Solicitud DATETIME NOT NULL,
	Estado_Solicitud VARCHAR(20) NOT NULL
);


CREATE TABLE Usuarios(
	Id_Usuario INT NOT NULL PRIMARY KEY,
	Cedula INT NOT NULL,
	Correo VARCHAR(255) NOT NULL,
	Telefono INT NOT NULL,
	Nombre_Empresa VARCHAR(20) NOT NULL,
	Independiente VARCHAR(20) NOT NULL
);


CREATE TABLE Visitas(
	id_Solicitud INT NOT NULL PRIMARY KEY,
	id_Cedula_empleado INT NULL,
	Id_Usuario INT NULL,
	Id_inmuebles INT NULL
);

INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (1, N'Gariff', N'Monro', N'414 Dorton Alley', 34875141, N'mgariff0@state.gov', N'Monro Gariff', 32549889);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (2, N'Leicester', N'Linea', N'152 La Follette Crossing', 36240301, N'lleicester1@zdnet.com', N'Linea Leicester', 35026482);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (3, N'Longridge', N'Eveline', N'459 Havey Trail', 33689820, N'elongridge2@fda.gov', N'Eveline Longridge', 30542634);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (4, N'Guidetti', N'Blayne', N'83 Center Hill', 33631541, N'bguidetti3@pagesperso-orange.fr', N'Blayne Guidetti', 33951772);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (5, N'Hrus', N'Dare', N'72 Everett Park', 30965531, N'dhrus4@jigsy.com', N'Dare Hrus', 39453838);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (6, N'de Keep', N'Cristen', N'234 Pankratz Point', 36236042, N'cde5@latimes.com', N'Cristen de Keep', 34277982);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (7, N'Radke', N'Vyky', N'300 Lindbergh Parkway', 35720114, N'vradke6@free.fr', N'Vyky Radke', 31015245);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (8, N'Hansard', N'Sonja', N'42954 Elgar Pass', 32338638, N'shansard7@apple.com', N'Sonja Hansard', 33858057);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (9, N'Van Arsdalen', N'Harlin', N'03 Paget Hill', 34377749, N'hvan8@netvibes.com', N'Harlin Van Arsdalen', 34216507);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (10, N'Peasegod', N'Ambrosi', N'75 Kings Trail', 37131243, N'apeasegod9@hp.com', N'Ambrosi Peasegod', 38993997);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (11, N'Pes', N'Jackie', N'72 Elgar Terrace', 35243812, N'jpesa@ebay.co.uk', N'Jackie Pes', 32665847);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (12, N'Balthasar', N'Dwain', N'716 Miller Place', 35712756, N'dbalthasarb@imdb.com', N'Dwain Balthasar', 35793437);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (13, N'Pender', N'Cherry', N'101 Dahle Junction', 36957133, N'cpenderc@geocities.jp', N'Cherry Pender', 31415194);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (14, N'Burgwyn', N'Drucie', N'51216 Graceland Park', 33518063, N'dburgwynd@admin.ch', N'Drucie Burgwyn', 38649529);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (15, N'Mollene', N'Carling', N'9718 Del Sol Alley', 37477289, N'cmollenee@webmd.com', N'Carling Mollene', 35312649);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (16, N'Patrono', N'Catherin', N'603 Caliangt Alley', 30899668, N'cpatronof@stanford.edu', N'Catherin Patrono', 30765254);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (17, N'Bidder', N'Sascha', N'6 Alpine Trail', 31390225, N'sbidderg@live.com', N'Sascha Bidder', 31023089);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (18, N'Howlings', N'Opalina', N'3091 Kings Pass', 38024113, N'ohowlingsh@icq.com', N'Opalina Howlings', 38072711);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (19, N'Blint', N'Fayre', N'05 Dryden Avenue', 39437497, N'fblinti@google.cn', N'Fayre Blint', 34849312);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (20, N'Cattlemull', N'Whitman', N'58 Melrose Circle', 35615112, N'wcattlemullj@imageshack.us', N'Whitman Cattlemull', 36221999);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (21, N'Pauluzzi', N'Carole', N'19530 Debs Park', 36312521, N'cpauluzzik@bluehost.com', N'Carole Pauluzzi', 37260470);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (22, N'Hartrick', N'Danell', N'6497 Dennis Parkway', 34875110, N'dhartrickl@ifeng.com', N'Danell Hartrick', 38287345);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (23, N'Enevoldsen', N'Michel', N'12 Hanover Alley', 36904018, N'menevoldsenm@mashable.com', N'Michel Enevoldsen', 35480270);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (24, N'Fullegar', N'Doll', N'74 3rd Parkway', 34500729, N'dfullegarn@nasa.gov', N'Doll Fullegar', 37863379);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (25, N'Floyed', N'Rosene', N'600 Badeau Point', 33150743, N'rfloyedo@acquirethisname.com', N'Rosene Floyed', 31859981);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (26, N'Filan', N'Katya', N'6 Westridge Lane', 38132492, N'kfilanp@washingtonpost.com', N'Katya Filan', 32277203);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (27, N'Lanbertoni', N'Hillel', N'97 Valley Edge Plaza', 30049194, N'hlanbertoniq@irs.gov', N'Hillel Lanbertoni', 38959526);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (28, N'Bukowski', N'Bathsheba', N'4 Gina Parkway', 32949397, N'bbukowskir@sogou.com', N'Bathsheba Bukowski', 35626172);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (29, N'Sanford', N'Lulu', N'326 Norway Maple Avenue', 31753734, N'lsanfords@ted.com', N'Lulu Sanford', 32875703);
INSERT INTO Administradores (Id_Administrador, Apellidos, Nombres, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (30, N'Castanaga', N'Ralina', N'30 Carberry Parkway', 35466070, N'rcastanagat@soundcloud.com', N'Ralina Castanaga', 36691852);

INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (1, 21922197, N'Wenderoth', N'Jarrid', N'jwenderoth0@patch.com', 33252581, 2136303, N'Jabbertype', 2175051, N'NO', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (2, 16820860, N'Flippini', N'Evelin', N'eflippini1@lulu.com', 31599872, 2544925, N'Devpoint', 2249189, N'SI', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (3, 23931486, N'McGuggy', N'Raimund', N'rmcguggy2@smugmug.com', 34907956, 2039969, N'Voonyx', 2420615, N'NO', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (4, 59795316, N'De Moreno', N'Sean', N'sdemoreno3@cnn.com', 39722001, 2024515, N'Izio', 2504673, N'NO', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (5, 48560835, N'Tatum', N'Renault', N'rtatum4@hibu.com', 34523851, 2538098, N'Lajo', 2770825, N'NO', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (6, 31548412, N'Owain', N'Godfrey', N'gowain5@netscape.com', 34880600, 2863010, N'Riffpath', 2467686, N'SI', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (7, 56602058, N'Tace', N'Patty', N'ptace6@typepad.com', 39560231, 2137370, N'Nlounge', 2559799, N'NO', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (8, 57309035, N'Courcey', N'Danya', N'dcourcey7@scientificamerican.com', 34282104, 2178162, N'Fivechat', 2601391, N'NO', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (9, 56777093, N'Stennes', N'Basilio', N'bstennes8@wunderground.com', 36402383, 2919835, N'Linkbridge', 2882977, N'NO', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (10, 18344734, N'Arpur', N'Roman', N'rarpur9@cmu.edu', 34400532, 2925376, N'Brightbean', 2885977, N'SI', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (11, 15743296, N'Klyner', N'Jody', N'jklynera@stumbleupon.com', 35505717, 2712074, N'Zoozzy', 2229380, N'NO', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (12, 46763301, N'Beardon', N'David', N'dbeardonb@sourceforge.net', 33011369, 2351004, N'Divanoodle', 2079373, N'SI', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (13, 12136436, N'Hammerton', N'Keane', N'khammertonc@comsenz.com', 34739519, 2561767, N'Realcube', 2222632, N'NO', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (14, 19405339, N'Traill', N'Elwyn', N'etrailld@yolasite.com', 39225387, 2784102, N'Brainverse', 2133454, N'SI', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (15, 44754487, N'Edland', N'Bret', N'bedlande@ihg.com', 38617178, 2966785, N'Dynabox', 2162858, N'SI', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (16, 62206613, N'Osgorby', N'Mace', N'mosgorbyf@scientificamerican.com', 31150667, 2048476, N'Tagchat', 2927373, N'SI', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (17, 20344468, N'Yeowell', N'Barn', N'byeowellg@rediff.com', 37588806, 2338452, N'Jaxbean', 2567591, N'NO', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (18, 36980652, N'Humbell', N'Don', N'dhumbellh@nifty.com', 35445724, 2545816, N'Mydo', 2603045, N'SI', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (19, 49373414, N'Scowcroft', N'Harp', N'hscowcrofti@bravesites.com', 39227906, 2381688, N'Camimbo', 2692849, N'SI', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (20, 62810033, N'Blodgett', N'Erroll', N'eblodgettj@walmart.com', 31042345, 2769480, N'Eabox', 2569993, N'NO', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (21, 31807251, N'Field', N'Weider', N'wfieldk@va.gov', 34147155, 2527547, N'Thoughtsphere', 2272612, N'SI', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (22, 44590121, N'Corradengo', N'Daron', N'dcorradengol@accuweather.com', 37229872, 2837053, N'Janyx', 2918929, N'NO', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (23, 32930006, N'Cowden', N'Filippo', N'fcowdenm@wp.com', 37649136, 2676895, N'Midel', 2793711, N'SI', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (24, 31674707, N'O''Hickee', N'Dylan', N'dohickeen@cnbc.com', 33319985, 2625177, N'Zoozzy', 2697205, N'SI', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (25, 26401497, N'Beachem', N'Finlay', N'fbeachemo@youtu.be', 35071750, 2019989, N'Thoughtsphere', 2834527, N'NO', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (26, 55185597, N'Mac', N'Barret', N'bmacp@yahoo.co.jp', 31821572, 2484378, N'Fanoodle', 2471441, N'NO', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (27, 66451852, N'Plumley', N'Israel', N'iplumleyq@sciencedirect.com', 33199980, 2617646, N'Oyoba', 2512976, N'SI', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (28, 22122155, N'Guiraud', N'Rodolph', N'rguiraudr@myspace.com', 39967122, 2860505, N'Thoughtstorm', 2878814, N'NO', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (29, 17305425, N'Portal', N'Murray', N'mportals@nydailynews.com', 36733875, 2005446, N'Realcube', 2492026, N'SI', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (30, 28823676, N'Liccardo', N'Lonny', N'lliccardot@abc.net.au', 39570655, 2083998, N'Brainsphere', 2586809, N'SI', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (31, 65528230, N'Wollaston', N'Daren', N'dwollastonu@cnbc.com', 35973386, 2539319, N'Meeveo', 2035609, N'NO', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (32, 29385653, N'Clementson', N'Sigismund', N'sclementsonv@wix.com', 30044167, 2384208, N'Blogtag', 2078840, N'SI', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (33, 56753205, N'Tilte', N'Donaugh', N'dtiltew@cafepress.com', 33883266, 2303340, N'DabZ', 2158543, N'NO', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (34, 52413152, N'Varvell', N'Tom', N'tvarvellx@washington.edu', 35338903, 2083374, N'Skyvu', 2658240, N'NO', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (35, 13875112, N'Thiolier', N'Guillermo', N'gthioliery@nasa.gov', 38714684, 2673491, N'Devcast', 2079868, N'SI', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (36, 64396937, N'Whibley', N'Augustus', N'awhibleyz@smh.com.au', 37353632, 2764100, N'Skyvu', 2229575, N'SI', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (37, 14893424, N'Pluck', N'Matthew', N'mpluck10@marriott.com', 38896524, 2534015, N'Mynte', 2413718, N'SI', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (38, 24961372, N'MacGillicuddy', N'Thorsten', N'tmacgillicuddy11@artisteer.com', 38210311, 2134840, N'Yodo', 2759102, N'SI', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (39, 47793240, N'Harrild', N'Ferdy', N'fharrild12@example.com', 36726487, 2343909, N'Quimm', 2375228, N'NO', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (40, 66264293, N'Lantaff', N'Joachim', N'jlantaff13@europa.eu', 34047374, 2498130, N'Layo', 2411035, N'SI', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (41, 24387416, N'Legate', N'Brennan', N'blegate14@dion.ne.jp', 31567483, 2410575, N'Youspan', 2349787, N'NO', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (42, 47357031, N'Catto', N'Kale', N'kcatto15@about.me', 38871903, 2021967, N'Devbug', 2746535, N'NO', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (43, 57907798, N'Meyer', N'Bendicty', N'bmeyer16@domainmarket.com', 32611721, 2755388, N'Tagfeed', 2019899, N'SI', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (44, 13657607, N'Dreschler', N'Levin', N'ldreschler17@smh.com.au', 32379362, 2764272, N'Youopia', 2040697, N'SI', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (45, 61606991, N'Dash', N'Octavius', N'odash18@ask.com', 30220875, 2599560, N'Fanoodle', 2943968, N'SI', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (46, 14569651, N'Farfolomeev', N'Kim', N'kfarfolomeev19@bing.com', 33917676, 2677709, N'Roodel', 2502677, N'NO', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (47, 43545669, N'Kropach', N'Germaine', N'gkropach1a@istockphoto.com', 37734708, 2193177, N'Trunyx', 2357726, N'NO', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (48, 44120954, N'Edds', N'Tonnie', N'tedds1b@netvibes.com', 39873731, 2912106, N'Yombu', 2702809, N'NO', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (49, 35489433, N'Acheson', N'Wang', N'wacheson1c@amazon.co.jp', 36852698, 2148062, N'Rhybox', 2944473, N'NO', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (50, 23720803, N'Cleminson', N'Will', N'wcleminson1d@virginia.edu', 37822307, 2869627, N'Skimia', 2019798, N'SI', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (51, 53112165, N'Wicks', N'Duffy', N'dwicks1e@samsung.com', 35065772, 2895286, N'Camimbo', 2055486, N'NO', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (52, 27246054, N'Pashley', N'Martin', N'mpashley1f@cornell.edu', 37080903, 2463640, N'Topiclounge', 2362439, N'NO', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (53, 65311824, N'Ibbeson', N'Eldon', N'eibbeson1g@biblegateway.com', 37384305, 2604049, N'Topicshots', 2207238, N'SI', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (54, 29852144, N'Butcher', N'Hermon', N'hbutcher1h@altervista.org', 36170552, 2597679, N'Gabspot', 2846212, N'SI', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (55, 43507759, N'Philipard', N'Charley', N'cphilipard1i@indiegogo.com', 33949869, 2199973, N'Youspan', 2115078, N'NO', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (56, 43280504, N'Matteucci', N'Reuben', N'rmatteucci1j@boston.com', 39441453, 2835918, N'Wikibox', 2695918, N'SI', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (57, 54545260, N'Threlfall', N'Erie', N'ethrelfall1k@examiner.com', 33197160, 2297352, N'Yombu', 2454407, N'NO', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (58, 67549213, N'Britt', N'Base', N'bbritt1l@baidu.com', 36162852, 2698190, N'Jaxworks', 2868410, N'NO', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (59, 52314732, N'Flay', N'Jody', N'jflay1m@barnesandnoble.com', 33868489, 2478988, N'Oyoyo', 2570083, N'NO', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (60, 60437664, N'Blamphin', N'Stephan', N'sblamphin1n@diigo.com', 36847665, 2676075, N'Twinte', 2584734, N'NO', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (61, 58980120, N'Clayworth', N'Terence', N'tclayworth1o@accuweather.com', 33728251, 2645221, N'Fiveclub', 2467229, N'SI', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (62, 48526762, N'Saffill', N'Otto', N'osaffill1p@vinaora.com', 38557096, 2679000, N'Gabspot', 2894968, N'SI', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (63, 67920501, N'Fancott', N'Ivar', N'ifancott1q@accuweather.com', 36934694, 2835552, N'Zoomlounge', 2662772, N'SI', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (64, 27155816, N'Ortzen', N'Ray', N'rortzen1r@foxnews.com', 38306771, 2379367, N'JumpXS', 2536209, N'SI', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (65, 69550829, N'Caswell', N'Arty', N'acaswell1s@amazon.com', 38921572, 2803781, N'Pixope', 2233639, N'SI', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (66, 67272135, N'Bretton', N'Farris', N'fbretton1t@state.tx.us', 33435873, 2370461, N'InnoZ', 2709282, N'NO', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (67, 16125626, N'Le Floch', N'Zedekiah', N'zlefloch1u@hc360.com', 39315122, 2648568, N'Skibox', 2557508, N'SI', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (68, 50231985, N'Gaiter', N'Holmes', N'hgaiter1v@geocities.jp', 38699174, 2648928, N'Flashpoint', 2073721, N'SI', N'NO');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (69, 57135920, N'Jiras', N'Albert', N'ajiras1w@dagondesign.com', 34121160, 2261438, N'Skimia', 2494275, N'NO', N'SI');
INSERT INTO Arrendatarios (Id_Arrendatarios, Cedula_arrenda, Apellidos, Nombres, Correo, Celular, Telefono_Fijo, Nombre_Empresa, Telefono_Empresa, Carta_Laboral, Certificado_Ingresos) VALUES (70, 37203017, N'Copsey', N'Archambault', N'acopsey1x@spiegel.de', 32440044, 2086641, N'Browsebug', 2285935, N'SI', N'SI');

INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (1, N'Osgar', N'Israel', N'66749 Melody Way', 32911803, N'iosgar0@spiegel.de', N'Israel Osgar', 38034229);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (2, N'Ertelt', N'Tommie', N'25327 Center Pass', 37543208, N'tertelt1@de.vu', N'Tommie Ertelt', 35952261);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (3, N'Shall', N'Nelia', N'75 Lakewood Place', 39816920, N'nshall2@samsung.com', N'Nelia Shall', 39575915);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (4, N'Stratley', N'Maximo', N'62 Mandrake Drive', 32830870, N'mstratley3@networkadvertising.org', N'Maximo Stratley', 35609526);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (5, N'Micco', N'Romy', N'11095 Weeping Birch Hill', 30029470, N'rmicco4@java.com', N'Romy Micco', 36912757);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (6, N'Shillito', N'Evangelin', N'92299 Larry Parkway', 36052127, N'eshillito5@xrea.com', N'Evangelin Shillito', 39923481);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (7, N'Godson', N'Fabiano', N'361 Anzinger Hill', 33466578, N'fgodson6@nature.com', N'Fabiano Godson', 31289675);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (8, N'Spires', N'Byrann', N'4 Riverside Drive', 37451330, N'bspires7@example.com', N'Byrann Spires', 34296217);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (9, N'Boyse', N'Roana', N'541 Mcguire Parkway', 32448138, N'rboyse8@comcast.net', N'Roana Boyse', 33003666);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (10, N'Clemente', N'Darya', N'60526 Scott Crossing', 35407717, N'dclemente9@fc2.com', N'Darya Clemente', 33759369);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (11, N'Maccrie', N'Almire', N'6 Stang Point', 33791658, N'amaccriea@chicagotribune.com', N'Almire Maccrie', 31570685);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (12, N'Jeavon', N'Kellie', N'597 North Crossing', 30012885, N'kjeavonb@reference.com', N'Kellie Jeavon', 38621209);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (13, N'Childs', N'Gar', N'27645 Nobel Plaza', 31257297, N'gchildsc@deliciousdays.com', N'Gar Childs', 32628680);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (14, N'Bernardotte', N'Susana', N'8 Eliot Avenue', 31297811, N'sbernardotted@disqus.com', N'Susana Bernardotte', 39036256);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (15, N'Bridat', N'Doralynn', N'92403 Troy Drive', 32244556, N'dbridate@loc.gov', N'Doralynn Bridat', 39088215);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (16, N'Fullun', N'Trueman', N'8525 6th Court', 38432653, N'tfullunf@cloudflare.com', N'Trueman Fullun', 36649954);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (17, N'Kubec', N'Tab', N'4165 Mayfield Parkway', 39289919, N'tkubecg@java.com', N'Tab Kubec', 38989664);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (18, N'Tarbett', N'Natty', N'1 Cody Court', 38987462, N'ntarbetth@geocities.jp', N'Natty Tarbett', 35961353);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (19, N'Lanchbery', N'Blanca', N'24640 Grim Drive', 34942437, N'blanchberyi@blog.com', N'Blanca Lanchbery', 30737289);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (20, N'De Blase', N'Alta', N'217 Truax Hill', 30273494, N'adej@yelp.com', N'Alta De Blase', 36412073);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (21, N'Thomton', N'Herculie', N'6 Colorado Road', 35860715, N'hthomtonk@uiuc.edu', N'Herculie Thomton', 35100472);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (22, N'Scammonden', N'Ronda', N'925 Shopko Parkway', 36601375, N'rscammondenl@liveinternet.ru', N'Ronda Scammonden', 31792043);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (23, N'Gillibrand', N'Julian', N'26826 Saint Paul Street', 30827092, N'jgillibrandm@shinystat.com', N'Julian Gillibrand', 38247236);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (24, N'Ulrik', N'Pieter', N'848 Fuller Road', 35927702, N'pulrikn@addtoany.com', N'Pieter Ulrik', 33341400);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (25, N'Cisland', N'Cissiee', N'22 Schlimgen Terrace', 35174336, N'ccislando@ucla.edu', N'Cissiee Cisland', 30430828);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (26, N'Tume', N'Ruthe', N'50 Kropf Circle', 35677039, N'rtumep@hao123.com', N'Ruthe Tume', 34021132);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (27, N'Stoner', N'Jacki', N'72 Thierer Drive', 37702276, N'jstonerq@about.com', N'Jacki Stoner', 30389972);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (28, N'Evennett', N'Bengt', N'24510 Schlimgen Circle', 33733848, N'bevennettr@odnoklassniki.ru', N'Bengt Evennett', 34521618);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (29, N'Dowse', N'Demetrius', N'76 Homewood Circle', 30765866, N'ddowses@imgur.com', N'Demetrius Dowse', 39802128);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (30, N'Maas', N'Nevsa', N'3771 Glendale Junction', 33398333, N'nmaast@blinklist.com', N'Nevsa Maas', 33455948);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (31, N'Emmert', N'Ashli', N'03 Mockingbird Lane', 37537042, N'aemmertu@t-online.de', N'Ashli Emmert', 31567931);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (32, N'Elsay', N'Harli', N'068 Londonderry Trail', 31290721, N'helsayv@goo.gl', N'Harli Elsay', 32740089);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (33, N'Spadotto', N'Meara', N'8605 Eastlawn Junction', 31948025, N'mspadottow@amazon.co.jp', N'Meara Spadotto', 36100190);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (34, N'Grutchfield', N'Bengt', N'951 Schmedeman Circle', 37930728, N'bgrutchfieldx@nytimes.com', N'Bengt Grutchfield', 33448626);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (35, N'Stannion', N'Richy', N'4522 Service Lane', 31484757, N'rstanniony@imdb.com', N'Richy Stannion', 36663551);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (36, N'Coope', N'Kincaid', N'1800 Macpherson Lane', 32524785, N'kcoopez@chronoengine.com', N'Kincaid Coope', 37476026);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (37, N'Astling', N'Rocky', N'890 Chive Lane', 33383153, N'rastling10@xing.com', N'Rocky Astling', 33398713);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (38, N'Preedy', N'Theodosia', N'1 International Place', 38626016, N'tpreedy11@nyu.edu', N'Theodosia Preedy', 36662310);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (39, N'Slocket', N'Willyt', N'5786 Artisan Place', 32415718, N'wslocket12@google.com', N'Willyt Slocket', 32565066);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (40, N'Dublin', N'Lionel', N'50670 Kings Drive', 34158138, N'ldublin13@wordpress.org', N'Lionel Dublin', 30621375);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (41, N'Hunnybun', N'Broderic', N'75 Schurz Pass', 34311097, N'bhunnybun14@cnet.com', N'Broderic Hunnybun', 34158519);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (42, N'Redferne', N'Bert', N'64 Waxwing Lane', 33079252, N'bredferne15@creativecommons.org', N'Bert Redferne', 34015894);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (43, N'Konzel', N'Car', N'5 Fuller Circle', 37888735, N'ckonzel16@abc.net.au', N'Car Konzel', 34644865);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (44, N'Studman', N'Berkeley', N'80003 Waywood Hill', 31521311, N'bstudman17@last.fm', N'Berkeley Studman', 30817643);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (45, N'O''Driscole', N'Wallas', N'065 Sommers Drive', 32831788, N'wodriscole18@imageshack.us', N'Wallas O''Driscole', 32789449);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (46, N'Masser', N'Drucie', N'3537 Butterfield Court', 32623378, N'dmasser19@sakura.ne.jp', N'Drucie Masser', 30278037);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (47, N'Cowope', N'Killie', N'4003 Brown Plaza', 34465912, N'kcowope1a@wikimedia.org', N'Killie Cowope', 36682412);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (48, N'Wildes', N'Aprilette', N'67 Shopko Junction', 37610747, N'awildes1b@mail.ru', N'Aprilette Wildes', 39694708);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (49, N'Rymour', N'Benji', N'8281 Melvin Crossing', 30816245, N'brymour1c@ucoz.com', N'Benji Rymour', 34677768);
INSERT INTO Asesores (id_Cedula_empleado, Apellido, Nombre, Direccion, Celular, Correo, Nombre_Contacto, Celular_Contacto) VALUES (50, N'Earland', N'Miles', N'17804 Northport Center', 35233911, N'mearland1d@uiuc.edu', N'Miles Earland', 30547867);

INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (1, 25393704, N'Becki', N'Collisson', N'SI', N'SI', 79467157);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (2, 20010259, N'Tootsie', N'Dilley', N'NO', N'SI', 56189826);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (3, 27982706, N'Jed', N'Bristoe', N'SI', N'SI', 47042247);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (4, 24382875, N'Letty', N'Broadbent', N'SI', N'SI', 30952838);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (5, 26291120, N'Hamil', N'Breffitt', N'SI', N'NO', 98417325);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (6, 23607994, N'Elana', N'Stranio', N'SI', N'NO', 4661811);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (7, 21043384, N'Margret', N'Rattenbury', N'SI', N'SI', 59641632);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (8, 25423694, N'King', N'Lightoller', N'NO', N'SI', 15495873);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (9, 25376241, N'Bee', N'Figgures', N'SI', N'NO', 87814118);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (10, 26565478, N'Erminia', N'Habbert', N'NO', N'SI', 14285105);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (11, 24033505, N'Patric', N'Aubrun', N'NO', N'SI', 33394706);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (12, 24573317, N'Vaughan', N'Conaboy', N'SI', N'NO', 38374343);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (13, 26262142, N'Vladamir', N'Dufoure', N'SI', N'NO', 12954847);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (14, 21448477, N'Huberto', N'Parsley', N'SI', N'NO', 30856902);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (15, 22978677, N'Hollis', N'Gooda', N'SI', N'SI', 88211342);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (16, 29422805, N'Daloris', N'Staniford', N'SI', N'NO', 37871983);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (17, 26731559, N'Leontine', N'Semmence', N'SI', N'SI', 93184725);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (18, 24112927, N'Cecil', N'Tyt', N'NO', N'SI', 77645764);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (19, 21119675, N'Minni', N'Pietrowski', N'NO', N'SI', 49225307);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (20, 23452900, N'Dare', N'Ghione', N'NO', N'SI', 79932258);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (21, 28907909, N'Randene', N'Rolles', N'NO', N'NO', 85634745);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (22, 27447882, N'Steffie', N'Sloey', N'SI', N'NO', 11354460);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (23, 20440079, N'Jaimie', N'Mundell', N'SI', N'NO', 61471096);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (24, 20265487, N'Dory', N'Wheowall', N'NO', N'SI', 61737606);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (25, 23339967, N'Abagail', N'Simyson', N'NO', N'SI', 91640728);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (26, 27262886, N'Fax', N'Beavon', N'NO', N'NO', 7916511);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (27, 22461141, N'Wilone', N'Elders', N'NO', N'SI', 94751252);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (28, 23410642, N'Waly', N'Westhead', N'NO', N'NO', 56620626);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (29, 20474393, N'Lynda', N'Ratie', N'SI', N'NO', 84151398);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (30, 29490845, N'Thatcher', N'Senogles', N'SI', N'SI', 32217203);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (31, 26554615, N'Walliw', N'Fearnyough', N'NO', N'NO', 40180709);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (32, 28513456, N'Kinny', N'Fitzackerley', N'NO', N'SI', 58936277);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (33, 24506329, N'Joycelin', N'Hagyard', N'SI', N'NO', 67575665);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (34, 23975116, N'Trumaine', N'Oldershaw', N'SI', N'NO', 60126537);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (35, 28171572, N'Allys', N'Longfoot', N'NO', N'SI', 17441152);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (36, 22567408, N'Gayle', N'Clementi', N'SI', N'SI', 17654203);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (37, 23019786, N'Tiff', N'Lambricht', N'SI', N'NO', 99901626);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (38, 22568131, N'Verney', N'Corthes', N'SI', N'NO', 24339680);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (39, 29333299, N'Gage', N'Starmore', N'NO', N'SI', 98166170);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (40, 29352398, N'Noelani', N'Hatch', N'SI', N'SI', 52442449);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (41, 24627351, N'Dre', N'Abramovitz', N'NO', N'SI', 69238590);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (42, 23483307, N'Joachim', N'Bessey', N'NO', N'NO', 61247684);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (43, 20796934, N'Alister', N'January 1st', N'NO', N'SI', 96272946);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (44, 22792744, N'Richardo', N'Millam', N'SI', N'NO', 9565961);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (45, 21793214, N'Diandra', N'Poll', N'SI', N'NO', 90577659);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (46, 20711125, N'Natty', N'Ambroise', N'NO', N'NO', 36042011);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (47, 22715683, N'Consuelo', N'Pedri', N'NO', N'NO', 65871502);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (48, 28633969, N'Gasparo', N'Gyorgy', N'NO', N'SI', 2616759);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (49, 20494906, N'Wendel', N'Shimuk', N'NO', N'NO', 25687102);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (50, 26379907, N'Stefa', N'Mufford', N'SI', N'SI', 34145014);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (51, 28380355, N'Freddy', N'Giacoboni', N'NO', N'NO', 12672353);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (52, 28449361, N'Rosmunda', N'Sloegrave', N'NO', N'SI', 44850867);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (53, 20693387, N'Gwenni', N'Bradbeer', N'SI', N'SI', 16210825);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (54, 27307657, N'Blancha', N'Ethelston', N'NO', N'NO', 36854772);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (55, 23064712, N'Ansel', N'Pietron', N'SI', N'SI', 12497051);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (56, 20854754, N'Henri', N'Broadway', N'SI', N'NO', 34672179);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (57, 27793701, N'Melisande', N'Scohier', N'SI', N'NO', 33957261);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (58, 25389205, N'Yolanthe', N'Fairnington', N'SI', N'SI', 80775494);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (59, 26839522, N'Lyssa', N'Ilyushkin', N'SI', N'NO', 14920709);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (60, 26728541, N'Kathryne', N'Bowling', N'NO', N'SI', 73981059);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (61, 22699377, N'Diarmid', N'O''Donohue', N'SI', N'SI', 17236133);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (62, 22293177, N'Maria', N'Minnette', N'SI', N'NO', 64366973);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (63, 25913612, N'Ivor', N'Plail', N'NO', N'NO', 46835117);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (64, 23172041, N'Pablo', N'Coils', N'SI', N'SI', 71082282);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (65, 28847582, N'Arty', N'Radenhurst', N'SI', N'SI', 99100712);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (66, 28220851, N'Papagena', N'Maltman', N'NO', N'SI', 79496679);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (67, 25381282, N'Kynthia', N'Gurton', N'NO', N'NO', 87896716);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (68, 24742437, N'Datha', N'Folk', N'SI', N'NO', 58634211);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (69, 24005101, N'Una', N'Bollin', N'SI', N'NO', 69387116);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (70, 29095522, N'Sloan', N'Prati', N'SI', N'NO', 32566397);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (71, 28752303, N'Broderic', N'Kiddle', N'NO', N'SI', 72000292);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (72, 23758156, N'Gregory', N'Oguz', N'SI', N'SI', 23056951);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (73, 25498545, N'Ferdinand', N'Truesdale', N'SI', N'NO', 63840543);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (74, 23095482, N'Bearnard', N'Gonet', N'SI', N'SI', 17956184);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (75, 23882835, N'Hastie', N'Ierland', N'NO', N'SI', 13477522);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (76, 22045031, N'Phedra', N'Dayly', N'SI', N'SI', 60403296);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (77, 20060869, N'Deb', N'Maxwale', N'NO', N'NO', 8980497);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (78, 26840130, N'Shay', N'Bilbrook', N'NO', N'NO', 10429331);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (79, 25379061, N'Edee', N'Jarratt', N'NO', N'NO', 45636200);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (80, 23110731, N'Cass', N'Cadman', N'SI', N'SI', 61547259);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (81, 20070308, N'Ddene', N'Fairpool', N'NO', N'SI', 69045324);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (82, 20044807, N'Luis', N'Dymocke', N'SI', N'NO', 76756925);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (83, 22238967, N'Arne', N'Coppledike', N'SI', N'SI', 13566645);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (84, 20167044, N'Shaughn', N'Zannuto', N'NO', N'SI', 32871126);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (85, 26347548, N'Isidoro', N'Dufore', N'SI', N'NO', 41012952);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (86, 20614205, N'Antoinette', N'Di Filippo', N'NO', N'NO', 6796414);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (87, 27555790, N'Jerrie', N'Casassa', N'SI', N'NO', 15289186);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (88, 21636013, N'Ainsley', N'Grcic', N'NO', N'SI', 37662426);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (89, 21645733, N'Levin', N'Elsey', N'NO', N'NO', 3578153);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (90, 23962497, N'Dev', N'Tinsley', N'SI', N'NO', 64546837);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (91, 28479764, N'Shannan', N'Lidbetter', N'NO', N'NO', 12940434);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (92, 22690095, N'Joann', N'Syred', N'SI', N'SI', 50673836);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (93, 28345217, N'Palm', N'Rosenkrantz', N'SI', N'SI', 81242530);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (94, 22572899, N'Brandais', N'Netherwood', N'NO', N'SI', 40497772);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (95, 23724423, N'Shane', N'Paroni', N'SI', N'NO', 19510031);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (96, 22106815, N'Fritz', N'Joselovitch', N'SI', N'SI', 17249440);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (97, 20785827, N'Malchy', N'MacMichael', N'NO', N'NO', 65738671);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (98, 21001744, N'Puff', N'Harmond', N'SI', N'SI', 9586102);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (99, 22727917, N'Rudolf', N'Hacker', N'NO', N'SI', 72613693);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (100, 21485111, N'Mendy', N'Iacobini', N'SI', N'NO', 63189293);

INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (101, 22011153, N'Darryl', N'Siggery', N'NO', N'NO', 25129662);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (102, 26929438, N'Cindra', N'Jenkinson', N'NO', N'SI', 94639361);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (103, 27081941, N'Arlen', N'Pollitt', N'SI', N'SI', 99674488);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (104, 29544384, N'Creight', N'Kinze', N'NO', N'SI', 45865493);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (105, 25306394, N'Correna', N'Rivelin', N'SI', N'SI', 53254276);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (106, 22874557, N'Filippa', N'Andrieux', N'SI', N'NO', 76063773);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (107, 24374678, N'Ginelle', N'Agent', N'SI', N'SI', 99111248);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (108, 21307930, N'Tibold', N'Kubyszek', N'NO', N'SI', 9459999);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (109, 28785769, N'Marybeth', N'Peete', N'NO', N'SI', 95231782);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (110, 28874954, N'Eveline', N'Bloomfield', N'NO', N'SI', 15543669);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (111, 20483090, N'Sephira', N'McKeowon', N'SI', N'NO', 60137439);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (112, 25082717, N'Nicola', N'Lerway', N'SI', N'NO', 63292531);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (113, 28445475, N'Cristi', N'Joutapaitis', N'SI', N'NO', 43328346);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (114, 23881753, N'Chauncey', N'Cranmor', N'SI', N'NO', 54786291);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (115, 27312569, N'Will', N'Vettore', N'NO', N'SI', 56854215);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (116, 27263199, N'Webb', N'Resun', N'NO', N'NO', 40723367);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (117, 27649484, N'Waverley', N'Brolly', N'NO', N'SI', 42858107);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (118, 25730847, N'Mack', N'Hamer', N'NO', N'NO', 8202820);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (119, 28322286, N'Christan', N'MacChaell', N'SI', N'NO', 41001917);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (120, 22126281, N'Pet', N'Pre', N'NO', N'SI', 3448735);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (121, 28175006, N'Ninnette', N'Coombes', N'NO', N'SI', 70380255);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (122, 21791038, N'Abramo', N'Breyt', N'SI', N'SI', 78754599);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (123, 25773017, N'Sallee', N'Northwood', N'NO', N'NO', 71890631);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (124, 25633046, N'Paolina', N'Weal', N'SI', N'NO', 93452801);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (125, 27481802, N'Eachelle', N'Mucci', N'SI', N'SI', 50389116);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (126, 21771427, N'Darby', N'Bachs', N'SI', N'SI', 68766394);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (127, 22754164, N'Ramsey', N'Caesmans', N'SI', N'NO', 76053121);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (128, 25605443, N'Marchall', N'Hayfield', N'SI', N'SI', 94280296);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (129, 26216526, N'Anna-diana', N'Waumsley', N'NO', N'NO', 89654554);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (130, 21186446, N'Steve', N'Bennallck', N'SI', N'NO', 86479891);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (131, 27398535, N'Sher', N'Morris', N'NO', N'SI', 35713321);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (132, 25226172, N'Alessandra', N'Dislee', N'NO', N'SI', 92763147);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (133, 24835860, N'Keir', N'Phippard', N'NO', N'NO', 58839234);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (134, 24059167, N'Emlynn', N'Luxmoore', N'SI', N'NO', 95376494);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (135, 25853145, N'Ralf', N'Hospital', N'NO', N'NO', 58043534);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (136, 28597647, N'Evelyn', N'Ollivierre', N'NO', N'NO', 93296084);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (137, 28320970, N'Taffy', N'House', N'SI', N'SI', 12262017);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (138, 29910535, N'Jilly', N'Cosh', N'SI', N'NO', 54304390);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (139, 29242547, N'Allison', N'Hadwin', N'NO', N'SI', 29463112);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (140, 29943839, N'Vin', N'Gorges', N'NO', N'NO', 23823054);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (141, 26152147, N'Roseanna', N'Alyutin', N'SI', N'NO', 57148963);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (142, 22420255, N'Carmelita', N'Sager', N'NO', N'NO', 70127809);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (143, 26337644, N'Eamon', N'Seals', N'NO', N'NO', 83034387);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (144, 26585059, N'Kory', N'Scoterbosh', N'SI', N'NO', 37472843);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (145, 23339778, N'Mitchael', N'Cockshot', N'SI', N'NO', 79460132);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (146, 28589155, N'Milty', N'McNerlin', N'NO', N'SI', 77728137);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (147, 25986617, N'Noelyn', N'Redhead', N'NO', N'SI', 90249960);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (148, 26108366, N'Danette', N'Cholmondeley', N'NO', N'SI', 57588682);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (149, 27465016, N'Donnell', N'Cherrie', N'NO', N'SI', 27401512);
INSERT INTO Clientes (Id_Cliente, Cedula_cliente, Nombre, Apellido, Carta_laboral, Certificado_Independiente, Salario) VALUES (150, 20774261, N'Iormina', N'Cloutt', N'SI', N'SI', 36202059);

INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (1, CAST(N'2018-09-08T00:00:00.000' AS DATETIME), 20, 99, 203, 47);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (2, CAST(N'2018-12-21T00:00:00.000' AS DATETIME), 27, 78, 179, 5);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (3, CAST(N'2019-02-01T00:00:00.000' AS DATETIME), 10, 4, 109, 63);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (4, CAST(N'2020-03-19T00:00:00.000' AS DATETIME), 15, 51, 12, 15);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (5, CAST(N'2019-05-07T00:00:00.000' AS DATETIME), 26, 15, 110, 16);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (6, CAST(N'2019-10-16T00:00:00.000' AS DATETIME), 24, 69, 151, 58);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (7, CAST(N'2019-01-13T00:00:00.000' AS DATETIME), 10, 42, 78, 44);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (8, CAST(N'2019-01-31T00:00:00.000' AS DATETIME), 16, 79, 192, 34);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (9, CAST(N'2018-12-14T00:00:00.000' AS DATETIME), 6, 57, 107, 11);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (10, CAST(N'2018-12-17T00:00:00.000' AS DATETIME), 21, 71, 101, 27);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (11, CAST(N'2019-06-04T00:00:00.000' AS DATETIME), 21, 16, 196, 67);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (12, CAST(N'2019-05-04T00:00:00.000' AS DATETIME), 20, 85, 182, 58);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (13, CAST(N'2020-04-14T00:00:00.000' AS DATETIME), 22, 93, 131, 68);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (14, CAST(N'2018-09-23T00:00:00.000' AS DATETIME), 2, 73, 143, 10);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (15, CAST(N'2020-05-12T00:00:00.000' AS DATETIME), 4, 90, 97, 42);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (16, CAST(N'2020-01-10T00:00:00.000' AS DATETIME), 8, 8, 33, 4);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (17, CAST(N'2019-08-11T00:00:00.000' AS DATETIME), 18, 28, 118, 69);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (18, CAST(N'2018-10-21T00:00:00.000' AS DATETIME), 21, 7, 175, 31);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (19, CAST(N'2018-09-16T00:00:00.000' AS DATETIME), 24, 3, 245, 6);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (20, CAST(N'2020-01-26T00:00:00.000' AS DATETIME), 10, 32, 165, 16);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (21, CAST(N'2019-06-11T00:00:00.000' AS DATETIME), 12, 22, 141, 21);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (22, CAST(N'2018-08-30T00:00:00.000' AS DATETIME), 25, 61, 49, 8);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (23, CAST(N'2019-06-15T00:00:00.000' AS DATETIME), 19, 81, 110, 48);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (24, CAST(N'2019-01-11T00:00:00.000' AS DATETIME), 18, 29, 56, 67);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (25, CAST(N'2020-01-02T00:00:00.000' AS DATETIME), 14, 64, 23, 21);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (26, CAST(N'2018-09-28T00:00:00.000' AS DATETIME), 17, 24, 43, 20);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (27, CAST(N'2019-09-02T00:00:00.000' AS DATETIME), 25, 41, 87, 69);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (28, CAST(N'2018-10-04T00:00:00.000' AS DATETIME), 8, 71, 100, 46);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (29, CAST(N'2019-07-09T00:00:00.000' AS DATETIME), 23, 81, 210, 7);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (30, CAST(N'2018-06-28T00:00:00.000' AS DATETIME), 29, 70, 32, 11);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (31, CAST(N'2019-08-03T00:00:00.000' AS DATETIME), 20, 99, 74, 19);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (32, CAST(N'2018-12-20T00:00:00.000' AS DATETIME), 19, 16, 64, 42);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (33, CAST(N'2019-08-07T00:00:00.000' AS DATETIME), 10, 32, 110, 4);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (34, CAST(N'2019-02-27T00:00:00.000' AS DATETIME), 22, 66, 54, 61);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (35, CAST(N'2019-08-05T00:00:00.000' AS DATETIME), 21, 3, 180, 36);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (36, CAST(N'2018-09-27T00:00:00.000' AS DATETIME), 16, 36, 80, 30);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (37, CAST(N'2019-07-27T00:00:00.000' AS DATETIME), 19, 30, 58, 15);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (38, CAST(N'2018-12-26T00:00:00.000' AS DATETIME), 10, 67, 97, 24);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (39, CAST(N'2018-11-16T00:00:00.000' AS DATETIME), 30, 47, 44, 59);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (40, CAST(N'2018-11-28T00:00:00.000' AS DATETIME), 16, 2, 219, 8);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (41, CAST(N'2020-02-25T00:00:00.000' AS DATETIME), 14, 99, 14, 57);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (42, CAST(N'2018-07-20T00:00:00.000' AS DATETIME), 7, 72, 36, 13);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (43, CAST(N'2020-02-15T00:00:00.000' AS DATETIME), 10, 38, 96, 52);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (44, CAST(N'2018-12-15T00:00:00.000' AS DATETIME), 26, 87, 213, 4);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (45, CAST(N'2019-12-05T00:00:00.000' AS DATETIME), 23, 12, 49, 42);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (46, CAST(N'2019-02-07T00:00:00.000' AS DATETIME), 18, 72, 225, 47);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (47, CAST(N'2020-02-18T00:00:00.000' AS DATETIME), 20, 24, 108, 30);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (49, CAST(N'2020-03-03T00:00:00.000' AS DATETIME), 9, 94, 77, 53);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (50, CAST(N'2019-11-20T00:00:00.000' AS DATETIME), 4, 39, 242, 2);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (51, CAST(N'2019-11-13T00:00:00.000' AS DATETIME), 7, 87, 171, 67);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (52, CAST(N'2018-11-01T00:00:00.000' AS DATETIME), 9, 44, 15, 59);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (53, CAST(N'2018-08-29T00:00:00.000' AS DATETIME), 22, 72, 171, 38);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (54, CAST(N'2020-03-18T00:00:00.000' AS DATETIME), 14, 21, 105, 38);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (55, CAST(N'2020-02-24T00:00:00.000' AS DATETIME), 24, 64, 90, 1);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (56, CAST(N'2019-04-01T00:00:00.000' AS DATETIME), 20, 16, 10, 55);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (57, CAST(N'2018-12-29T00:00:00.000' AS DATETIME), 20, 44, 37, 63);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (58, CAST(N'2020-05-13T00:00:00.000' AS DATETIME), 22, 86, 249, 45);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (59, CAST(N'2019-02-14T00:00:00.000' AS DATETIME), 14, 73, 11, 3);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (60, CAST(N'2018-07-15T00:00:00.000' AS DATETIME), 10, 87, 70, 60);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (61, CAST(N'2019-05-12T00:00:00.000' AS DATETIME), 19, 65, 119, 1);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (62, CAST(N'2019-06-24T00:00:00.000' AS DATETIME), 12, 29, 211, 33);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (63, CAST(N'2018-07-09T00:00:00.000' AS DATETIME), 18, 63, 24, 9);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (64, CAST(N'2018-06-16T00:00:00.000' AS DATETIME), 6, 20, 168, 62);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (65, CAST(N'2020-03-24T00:00:00.000' AS DATETIME), 7, 94, 249, 59);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (66, CAST(N'2019-02-03T00:00:00.000' AS DATETIME), 3, 23, 20, 47);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (67, CAST(N'2019-11-16T00:00:00.000' AS DATETIME), 4, 65, 196, 67);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (68, CAST(N'2018-06-01T00:00:00.000' AS DATETIME), 9, 32, 182, 6);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (69, CAST(N'2019-09-27T00:00:00.000' AS DATETIME), 1, 51, 76, 3);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (70, CAST(N'2019-06-20T00:00:00.000' AS DATETIME), 17, 41, 41, 41);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (71, CAST(N'2019-10-13T00:00:00.000' AS DATETIME), 4, 17, 54, 23);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (72, CAST(N'2019-03-11T00:00:00.000' AS DATETIME), 15, 36, 145, 32);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (73, CAST(N'2019-05-13T00:00:00.000' AS DATETIME), 6, 16, 177, 2);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (74, CAST(N'2018-09-05T00:00:00.000' AS DATETIME), 21, 18, 205, 60);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (75, CAST(N'2019-03-26T00:00:00.000' AS DATETIME), 2, 21, 39, 16);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (76, CAST(N'2018-08-15T00:00:00.000' AS DATETIME), 17, 86, 205, 63);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (77, CAST(N'2018-05-18T00:00:00.000' AS DATETIME), 19, 12, 240, 16);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (78, CAST(N'2020-02-23T00:00:00.000' AS DATETIME), 2, 3, 88, 29);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (79, CAST(N'2018-06-08T00:00:00.000' AS DATETIME), 11, 42, 163, 55);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (80, CAST(N'2019-01-09T00:00:00.000' AS DATETIME), 5, 13, 2, 6);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (81, CAST(N'2019-09-04T00:00:00.000' AS DATETIME), 28, 72, 24, 8);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (82, CAST(N'2018-07-28T00:00:00.000' AS DATETIME), 3, 18, 71, 15);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (83, CAST(N'2019-06-13T00:00:00.000' AS DATETIME), 19, 7, 171, 53);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (84, CAST(N'2018-09-29T00:00:00.000' AS DATETIME), 28, 44, 73, 10);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (85, CAST(N'2020-01-16T00:00:00.000' AS DATETIME), 21, 21, 107, 10);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (86, CAST(N'2019-02-27T00:00:00.000' AS DATETIME), 24, 88, 160, 46);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (87, CAST(N'2018-09-09T00:00:00.000' AS DATETIME), 28, 39, 192, 23);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (88, CAST(N'2018-09-06T00:00:00.000' AS DATETIME), 19, 62, 231, 69);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (89, CAST(N'2018-08-07T00:00:00.000' AS DATETIME), 10, 84, 131, 49);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (90, CAST(N'2019-01-05T00:00:00.000' AS DATETIME), 10, 31, 229, 1);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (92, CAST(N'2020-03-05T00:00:00.000' AS DATETIME), 1, 91, 195, 67);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (93, CAST(N'2018-11-29T00:00:00.000' AS DATETIME), 18, 66, 51, 38);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (94, CAST(N'2018-08-23T00:00:00.000' AS DATETIME), 4, 74, 11, 28);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (95, CAST(N'2018-12-12T00:00:00.000' AS DATETIME), 18, 84, 52, 10);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (96, CAST(N'2018-12-06T00:00:00.000' AS DATETIME), 10, 63, 246, 38);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (97, CAST(N'2019-02-19T00:00:00.000' AS DATETIME), 13, 26, 85, 17);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (98, CAST(N'2019-08-09T00:00:00.000' AS DATETIME), 9, 68, 44, 60);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (99, CAST(N'2018-05-28T00:00:00.000' AS DATETIME), 6, 4, 171, 68);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (100, CAST(N'2019-06-27T00:00:00.000' AS DATETIME), 2, 36, 121, 36);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (101, CAST(N'2020-02-04T00:00:00.000' AS DATETIME), 17, 1, 62, 33);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (102, CAST(N'2018-08-06T00:00:00.000' AS DATETIME), 6, 34, 206, 2);

INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (103, CAST(N'2018-09-09T00:00:00.000' AS DATETIME), 15, 81, 96, 51);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (104, CAST(N'2019-04-08T00:00:00.000' AS DATETIME), 3, 38, 231, 22);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (105, CAST(N'2018-07-09T00:00:00.000' AS DATETIME), 26, 10, 167, 18);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (106, CAST(N'2018-08-26T00:00:00.000' AS DATETIME), 4, 56, 32, 70);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (107, CAST(N'2019-02-15T00:00:00.000' AS DATETIME), 2, 26, 181, 14);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (108, CAST(N'2019-11-19T00:00:00.000' AS DATETIME), 11, 84, 224, 32);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (109, CAST(N'2019-09-11T00:00:00.000' AS DATETIME), 30, 96, 102, 14);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (110, CAST(N'2018-10-04T00:00:00.000' AS DATETIME), 25, 54, 36, 43);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (111, CAST(N'2019-02-01T00:00:00.000' AS DATETIME), 17, 84, 103, 6);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (112, CAST(N'2018-09-04T00:00:00.000' AS DATETIME), 21, 42, 171, 21);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (113, CAST(N'2019-09-22T00:00:00.000' AS DATETIME), 13, 22, 104, 55);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (114, CAST(N'2020-02-26T00:00:00.000' AS DATETIME), 26, 36, 213, 6);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (115, CAST(N'2020-04-18T00:00:00.000' AS DATETIME), 3, 64, 183, 19);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (116, CAST(N'2020-01-17T00:00:00.000' AS DATETIME), 15, 71, 37, 47);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (117, CAST(N'2019-08-29T00:00:00.000' AS DATETIME), 9, 39, 76, 3);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (118, CAST(N'2019-01-14T00:00:00.000' AS DATETIME), 1, 45, 125, 49);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (119, CAST(N'2019-07-12T00:00:00.000' AS DATETIME), 8, 91, 8, 7);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (120, CAST(N'2018-08-14T00:00:00.000' AS DATETIME), 28, 3, 210, 62);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (121, CAST(N'2019-10-08T00:00:00.000' AS DATETIME), 21, 8, 143, 69);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (122, CAST(N'2019-07-26T00:00:00.000' AS DATETIME), 24, 98, 126, 12);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (123, CAST(N'2019-10-07T00:00:00.000' AS DATETIME), 1, 81, 50, 60);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (124, CAST(N'2020-02-15T00:00:00.000' AS DATETIME), 21, 91, 206, 54);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (125, CAST(N'2019-11-07T00:00:00.000' AS DATETIME), 16, 49, 85, 10);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (126, CAST(N'2019-02-24T00:00:00.000' AS DATETIME), 15, 74, 67, 52);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (127, CAST(N'2018-10-14T00:00:00.000' AS DATETIME), 3, 56, 111, 10);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (128, CAST(N'2019-10-13T00:00:00.000' AS DATETIME), 13, 52, 181, 51);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (129, CAST(N'2019-12-07T00:00:00.000' AS DATETIME), 8, 25, 16, 22);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (130, CAST(N'2019-04-20T00:00:00.000' AS DATETIME), 15, 62, 86, 18);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (131, CAST(N'2020-03-08T00:00:00.000' AS DATETIME), 14, 97, 134, 9);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (132, CAST(N'2019-12-27T00:00:00.000' AS DATETIME), 21, 12, 29, 24);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (133, CAST(N'2019-10-23T00:00:00.000' AS DATETIME), 14, 68, 9, 27);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (134, CAST(N'2019-11-03T00:00:00.000' AS DATETIME), 4, 4, 169, 58);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (135, CAST(N'2019-06-29T00:00:00.000' AS DATETIME), 14, 30, 123, 55);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (136, CAST(N'2018-09-23T00:00:00.000' AS DATETIME), 13, 72, 194, 67);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (137, CAST(N'2019-04-18T00:00:00.000' AS DATETIME), 6, 21, 6, 28);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (138, CAST(N'2019-10-23T00:00:00.000' AS DATETIME), 25, 50, 35, 50);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (139, CAST(N'2019-07-12T00:00:00.000' AS DATETIME), 7, 78, 45, 37);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (140, CAST(N'2018-07-05T00:00:00.000' AS DATETIME), 25, 34, 23, 43);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (141, CAST(N'2019-10-20T00:00:00.000' AS DATETIME), 22, 24, 12, 69);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (142, CAST(N'2020-03-03T00:00:00.000' AS DATETIME), 28, 37, 208, 65);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (143, CAST(N'2019-06-02T00:00:00.000' AS DATETIME), 1, 60, 152, 48);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (144, CAST(N'2020-02-27T00:00:00.000' AS DATETIME), 21, 43, 69, 45);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (145, CAST(N'2020-02-09T00:00:00.000' AS DATETIME), 25, 31, 64, 16);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (146, CAST(N'2019-03-17T00:00:00.000' AS DATETIME), 12, 9, 88, 29);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (147, CAST(N'2019-01-12T00:00:00.000' AS DATETIME), 8, 94, 217, 60);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (148, CAST(N'2020-01-01T00:00:00.000' AS DATETIME), 19, 26, 141, 38);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (149, CAST(N'2019-01-09T00:00:00.000' AS DATETIME), 24, 21, 217, 41);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (150, CAST(N'2019-06-02T00:00:00.000' AS DATETIME), 22, 88, 124, 21);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (151, CAST(N'2019-01-07T00:00:00.000' AS DATETIME), 23, 80, 178, 37);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (152, CAST(N'2019-03-12T00:00:00.000' AS DATETIME), 18, 55, 127, 66);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (153, CAST(N'2019-07-01T00:00:00.000' AS DATETIME), 2, 20, 195, 54);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (154, CAST(N'2019-01-16T00:00:00.000' AS DATETIME), 26, 76, 61, 23);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (155, CAST(N'2019-05-04T00:00:00.000' AS DATETIME), 28, 81, 165, 31);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (156, CAST(N'2018-12-17T00:00:00.000' AS DATETIME), 22, 4, 34, 4);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (157, CAST(N'2018-09-13T00:00:00.000' AS DATETIME), 18, 95, 1, 56);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (158, CAST(N'2019-12-11T00:00:00.000' AS DATETIME), 26, 100, 233, 48);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (159, CAST(N'2018-06-02T00:00:00.000' AS DATETIME), 24, 6, 245, 45);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (160, CAST(N'2019-12-06T00:00:00.000' AS DATETIME), 25, 94, 96, 56);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (161, CAST(N'2019-11-01T00:00:00.000' AS DATETIME), 11, 26, 117, 32);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (162, CAST(N'2019-09-17T00:00:00.000' AS DATETIME), 1, 58, 187, 59);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (163, CAST(N'2019-08-09T00:00:00.000' AS DATETIME), 18, 11, 14, 67);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (164, CAST(N'2018-12-25T00:00:00.000' AS DATETIME), 21, 90, 213, 57);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (165, CAST(N'2018-09-06T00:00:00.000' AS DATETIME), 7, 86, 241, 30);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (166, CAST(N'2018-09-26T00:00:00.000' AS DATETIME), 8, 52, 24, 40);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (167, CAST(N'2019-07-13T00:00:00.000' AS DATETIME), 30, 91, 131, 29);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (168, CAST(N'2018-09-13T00:00:00.000' AS DATETIME), 14, 79, 57, 28);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (169, CAST(N'2019-08-18T00:00:00.000' AS DATETIME), 9, 58, 49, 59);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (170, CAST(N'2019-06-14T00:00:00.000' AS DATETIME), 17, 23, 3, 54);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (171, CAST(N'2018-11-25T00:00:00.000' AS DATETIME), 2, 37, 17, 66);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (172, CAST(N'2019-01-19T00:00:00.000' AS DATETIME), 10, 32, 240, 36);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (173, CAST(N'2020-04-16T00:00:00.000' AS DATETIME), 23, 12, 119, 2);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (174, CAST(N'2018-10-20T00:00:00.000' AS DATETIME), 22, 67, 30, 35);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (175, CAST(N'2019-08-09T00:00:00.000' AS DATETIME), 1, 67, 34, 63);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (176, CAST(N'2019-12-20T00:00:00.000' AS DATETIME), 6, 70, 81, 18);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (177, CAST(N'2019-11-19T00:00:00.000' AS DATETIME), 8, 20, 159, 7);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (178, CAST(N'2019-04-10T00:00:00.000' AS DATETIME), 2, 7, 213, 19);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (180, CAST(N'2019-04-21T00:00:00.000' AS DATETIME), 3, 1, 58, 49);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (181, CAST(N'2019-12-15T00:00:00.000' AS DATETIME), 3, 71, 221, 22);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (182, CAST(N'2019-11-29T00:00:00.000' AS DATETIME), 11, 76, 61, 6);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (183, CAST(N'2019-06-14T00:00:00.000' AS DATETIME), 11, 26, 100, 26);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (184, CAST(N'2019-10-28T00:00:00.000' AS DATETIME), 22, 68, 98, 23);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (185, CAST(N'2018-09-11T00:00:00.000' AS DATETIME), 16, 88, 224, 9);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (186, CAST(N'2020-02-09T00:00:00.000' AS DATETIME), 9, 26, 109, 2);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (187, CAST(N'2019-04-03T00:00:00.000' AS DATETIME), 28, 75, 168, 30);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (188, CAST(N'2018-06-03T00:00:00.000' AS DATETIME), 25, 12, 8, 43);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (189, CAST(N'2018-06-18T00:00:00.000' AS DATETIME), 16, 7, 74, 13);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (190, CAST(N'2018-12-12T00:00:00.000' AS DATETIME), 17, 74, 89, 45);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (191, CAST(N'2018-12-14T00:00:00.000' AS DATETIME), 11, 75, 169, 56);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (192, CAST(N'2020-05-11T00:00:00.000' AS DATETIME), 19, 11, 80, 34);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (193, CAST(N'2019-04-22T00:00:00.000' AS DATETIME), 22, 35, 142, 12);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (194, CAST(N'2020-04-14T00:00:00.000' AS DATETIME), 17, 36, 43, 22);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (195, CAST(N'2018-06-12T00:00:00.000' AS DATETIME), 21, 27, 106, 47);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (196, CAST(N'2019-10-21T00:00:00.000' AS DATETIME), 17, 60, 87, 17);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (197, CAST(N'2019-10-25T00:00:00.000' AS DATETIME), 3, 56, 31, 16);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (199, CAST(N'2018-08-24T00:00:00.000' AS DATETIME), 17, 60, 69, 66);
INSERT INTO Contratos (Id_Contratos, Fecha_Contrato, Id_Sede, Id_fiador, Id_inmuebles, Id_Arrendatarios) VALUES (200, CAST(N'2019-04-27T00:00:00.000' AS DATETIME), 22, 8, 194, 17);

INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (1, 13994222, N'Busse', N'Licha', N'NO', 5286185, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (2, 19596928, N'Bunker', N'Rozelle', N'SI', 4365273, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (3, 14204554, N'Choake', N'Gaylord', N'NO', 6964112, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (4, 15348359, N'Truscott', N'Cletis', N'SI', 5054908, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (5, 14824465, N'Biggerdike', N'Rochester', N'SI', 9049517, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (6, 15572422, N'Derrell', N'Theodore', N'SI', 1985141, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (7, 14780804, N'Rayworth', N'Miner', N'SI', 3701678, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (8, 10948887, N'Deedes', N'Jilli', N'SI', 6194087, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (9, 18742400, N'Oxenden', N'Christoffer', N'NO', 4411770, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (10, 10530733, N'Toppas', N'Husain', N'SI', 5208498, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (11, 19992493, N'Marple', N'Rita', N'NO', 4719891, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (12, 18831398, N'Clappison', N'Rosalie', N'NO', 1677165, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (13, 13635019, N'Groocock', N'Tony', N'NO', 9281783, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (14, 12075805, N'Piche', N'Sylvan', N'SI', 9662841, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (15, 18058129, N'Collum', N'Renard', N'SI', 8889167, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (16, 12581344, N'Balsdon', N'Mirella', N'SI', 6140622, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (17, 15986123, N'Gotthard.sf', N'Gracie', N'SI', 1631809, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (18, 12371782, N'Kynforth', N'Angelina', N'SI', 4171266, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (19, 14750329, N'Bockmaster', N'Tore', N'SI', 8651468, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (20, 18661048, N'Flaunier', N'Elwin', N'NO', 3025575, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (21, 17506271, N'Crebott', N'Cooper', N'NO', 2005453, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (22, 14205796, N'McKnish', N'Guillema', N'NO', 4584789, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (23, 18959638, N'Osgardby', N'Pall', N'SI', 7872685, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (24, 19546519, N'De L''Isle', N'Nike', N'SI', 2455185, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (25, 19855144, N'Ruslin', N'Raina', N'SI', 2634720, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (26, 15677711, N'Hartles', N'Brianne', N'SI', 7312246, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (27, 10334427, N'Lutwyche', N'Belicia', N'SI', 9763078, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (28, 14477317, N'Nitti', N'Jacquelyn', N'NO', 3512652, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (29, 11227584, N'Saph', N'Davida', N'SI', 8468265, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (30, 10546375, N'Ricards', N'Rosalia', N'NO', 4331890, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (31, 15782463, N'Pavett', N'Duncan', N'SI', 9175289, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (32, 11925150, N'McCole', N'Davide', N'SI', 1871674, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (33, 18336613, N'Chaston', N'Derward', N'SI', 6924342, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (34, 17323706, N'Dunley', N'Petunia', N'SI', 2841026, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (35, 19884911, N'Roydon', N'Weider', N'NO', 2028099, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (36, 12624073, N'Czajka', N'Adaline', N'SI', 5009604, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (37, 18403570, N'Weatherell', N'Donalt', N'SI', 2357899, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (38, 14125417, N'Luety', N'Yorke', N'SI', 3867604, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (39, 12227695, N'Lasseter', N'Holly', N'NO', 1029103, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (40, 13513008, N'Mallabone', N'Annabelle', N'NO', 2220795, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (41, 10675751, N'Koppens', N'Helsa', N'SI', 9353734, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (42, 11775394, N'O''Hederscoll', N'Marna', N'NO', 6023419, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (43, 13667364, N'Jaquet', N'Lavinie', N'SI', 5959639, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (44, 13242928, N'Rocks', N'Laurie', N'NO', 9271900, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (45, 10860768, N'Aitken', N'Trip', N'NO', 7266394, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (46, 11035965, N'Matyukon', N'Fanchette', N'NO', 6413778, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (47, 15245693, N'Trynor', N'Bunnie', N'SI', 1353975, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (48, 18633150, N'Remmer', N'Jannelle', N'SI', 9799634, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (49, 12947351, N'Farfalameev', N'Anetta', N'SI', 2179765, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (50, 18319680, N'Harcase', N'Evin', N'NO', 6957241, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (51, 17502192, N'Staden', N'Joby', N'NO', 5072701, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (52, 14359223, N'Shavel', N'Corabel', N'SI', 1004762, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (53, 11871632, N'Antwis', N'Teresa', N'NO', 6227928, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (54, 12309248, N'Iacovolo', N'Hannie', N'SI', 2378076, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (55, 12334043, N'Millmoe', N'Ezmeralda', N'SI', 2512059, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (56, 12691970, N'Tabrett', N'Tuckie', N'NO', 2940770, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (57, 11324307, N'Houlden', N'Spencer', N'NO', 7195749, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (58, 12828458, N'Verrick', N'Casi', N'SI', 5321762, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (59, 16822795, N'Bilborough', N'Bill', N'SI', 6036181, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (60, 10613611, N'Keegan', N'Zaria', N'NO', 5017883, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (61, 18627500, N'Delos', N'Everard', N'NO', 3989295, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (62, 18842507, N'Pasque', N'Filia', N'SI', 7020744, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (63, 13596311, N'McGuffog', N'Sawyer', N'NO', 5780035, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (64, 17535031, N'Prater', N'Tristan', N'SI', 1253458, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (65, 17712233, N'Adolphine', N'Glenden', N'SI', 4607483, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (66, 19542452, N'Dillestone', N'Ofilia', N'SI', 7026563, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (67, 16052254, N'MacAleese', N'Jock', N'SI', 4911053, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (68, 10459249, N'O''Fogarty', N'Willyt', N'SI', 3717848, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (69, 16096597, N'Allston', N'Harmonia', N'NO', 3610374, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (70, 11532460, N'Strettell', N'Alyson', N'NO', 2574044, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (71, 15886193, N'Phorsby', N'Franzen', N'NO', 1075097, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (72, 12841894, N'Garber', N'Shurwood', N'NO', 8761405, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (73, 19222296, N'MacAne', N'Ellyn', N'SI', 8101830, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (74, 16296630, N'Alves', N'Jessalyn', N'SI', 9828855, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (75, 14504485, N'Cockin', N'Colet', N'NO', 9125287, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (76, 14462576, N'Hovie', N'Konrad', N'NO', 5527253, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (77, 19536232, N'Annett', N'Christalle', N'SI', 6355689, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (78, 11472255, N'Gong', N'Giordano', N'SI', 1242610, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (79, 12503027, N'Ells', N'Bendick', N'SI', 3801317, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (80, 11907251, N'Troak', N'Cazzie', N'NO', 1854517, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (81, 11180679, N'Webborn', N'Marty', N'NO', 3618808, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (82, 15032447, N'McAvaddy', N'Noellyn', N'NO', 9102020, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (83, 16853601, N'Whitsun', N'Isadora', N'NO', 6456046, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (84, 16139479, N'Kigelman', N'Lida', N'NO', 7174752, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (85, 14370317, N'Langfield', N'Franky', N'SI', 9899531, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (86, 15686895, N'Lavelle', N'Ina', N'SI', 6543238, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (87, 16073581, N'Ionn', N'Rozelle', N'SI', 5641056, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (88, 11326629, N'Woolston', N'Horton', N'SI', 6673753, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (89, 11514933, N'Broadnicke', N'Jena', N'NO', 2406135, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (90, 19647347, N'Dominichetti', N'Trumaine', N'SI', 3337660, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (91, 16557792, N'Cotter', N'Byrann', N'SI', 1610392, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (92, 18149080, N'Guilloux', N'Belle', N'SI', 1701314, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (93, 11647994, N'Pietrusiak', N'Sherie', N'NO', 8794213, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (94, 17219959, N'Wilcott', N'Devina', N'SI', 3187397, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (95, 13488042, N'Obbard', N'Shane', N'SI', 7520967, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (96, 11948274, N'Aucock', N'Filippo', N'NO', 3636614, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (97, 14907872, N'De Anesy', N'Haslett', N'NO', 7657165, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (98, 16848841, N'Stoddard', N'Abe', N'NO', 6384714, N'NO');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (99, 14955432, N'Cristofalo', N'Lin', N'NO', 1339726, N'SI');
INSERT INTO Fiadores (Id_fiador, Cedula_fiador, Apellidos, Nombres, Carta_Laboral, Salario, Certificado_Propiedad) VALUES (100, 13658931, N'Romanetti', N'Amalee', N'SI', 5664873, N'SI');

INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (1, N'7 2nd Hill', N'BuenosAires', 1, N'SI', N'SI', N'SI', 7370309, N'SI', N'Salon', N'No tiene ascensor', 63);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (2, N'177 Commercial Crossing', N'Salvador', 2, N'SI', N'NO', N'SI', 78944782, N'NO', N'Finca', N'No mascotas', 6);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (3, N'194 Tomscot Alley', N'Bombona', 3, N'NO', N'NO', N'NO', 51174327, N'NO', N'Salon', N'No Niños', 63);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (4, N'3968 Buena Vista Way', N'Aranjuez', 4, N'NO', N'SI', N'SI', 38121988, N'NO', N'Finca', N'No mascotas', 47);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (5, N'8856 Forster Lane', N'Loreto', 1, N'SI', N'SI', N'SI', 62955624, N'NO', N'Finca', N'prohibidos los extraterrestres', 46);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (6, N'8 Algoma Lane', N'Caicedo', 6, N'SI', N'NO', N'NO', 31476575, N'SI', N'Apartamento', N'Ninguna', 10);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (7, N'5897 Merry Point', N'Manrrique', 3, N'NO', N'SI', N'NO', 6764319, N'SI', N'Finca', N'prohibidos los extraterrestres', 26);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (8, N'9349 Sauthoff Junction', N'Aranjuez', 6, N'SI', N'SI', N'SI', 38572552, N'SI', N'', N'No tiene baño', 57);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (9, N'26 Anhalt Terrace', N'Bombona', 2, N'NO', N'SI', N'SI', 78112355, N'NO', N'Terraza', N'no tiene parqueadero', 40);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (10, N'9 Eagle Crest Plaza', N'BuenosAires', 4, N'NO', N'NO', N'NO', 45021216, N'NO', N'Casa', N'Ninguna', 38);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (11, N'85849 Elgar Park', N'BuenosAires', 3, N'SI', N'NO', N'SI', 82093517, N'SI', N'Finca', N'prohibidos los extraterrestres', 65);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (12, N'14969 Nova Point', N'Barbosa', 4, N'SI', N'NO', N'NO', 11674355, N'NO', N'', N'Ninguna', 8);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (13, N'6 Havey Crossing', N'Loreto', 1, N'SI', N'NO', N'SI', 19378233, N'NO', N'', N'No Niños', 73);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (14, N'666 Cody Lane', N'Manrrique', 6, N'SI', N'NO', N'SI', 8552591, N'SI', N'Salon', N'prohibidos los extraterrestres', 15);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (15, N'6 Maple Place', N'Aranjuez', 5, N'NO', N'NO', N'NO', 41299452, N'SI', N'Casa', N'no tiene parqueadero', 22);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (16, N'31 Washington Plaza', N'Manrrique', 2, N'NO', N'SI', N'NO', 73913328, N'SI', N'Casa', N'no tiene parqueadero', 28);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (17, N'732 Gale Point', N'Manrrique', 5, N'SI', N'NO', N'NO', 35396847, N'NO', N'Apartamento', N'No Niños', 83);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (18, N'55303 Del Mar Trail', N'Aranjuez', 1, N'NO', N'NO', N'SI', 44669686, N'NO', N'Apartamento', N'No mascotas', 86);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (19, N'75735 Tennessee Road', N'Milagrosa', 2, N'SI', N'NO', N'NO', 88630703, N'NO', N'Terraza', N'No tiene ascensor', 16);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (20, N'02 Village Green Junction', N'Aranjuez', 6, N'SI', N'SI', N'NO', 9311792, N'SI', N'Terraza', N'no tiene parqueadero', 84);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (21, N'4 Atwood Trail', N'Milagrosa', 4, N'SI', N'SI', N'NO', 32314276, N'SI', N'Finca', N'No tiene ascensor', 51);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (22, N'030 Lindbergh Place', N'BuenosAires', 1, N'NO', N'SI', N'NO', 72211538, N'SI', N'', N'no tiene parqueadero', 51);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (23, N'537 Tomscot Parkway', N'Manrrique', 4, N'SI', N'NO', N'SI', 28296289, N'NO', N'Terraza', N'No tiene baño', 50);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (24, N'5 Warbler Court', N'Manrrique', 5, N'SI', N'SI', N'SI', 16058321, N'NO', N'Casa', N'No tiene baño', 77);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (25, N'7 Summerview Hill', N'Barbosa', 1, N'NO', N'NO', N'SI', 7958089, N'NO', N'Salon', N'No tiene ascensor', 68);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (26, N'8771 Basil Plaza', N'BuenosAires', 4, N'NO', N'SI', N'NO', 74140191, N'SI', N'Apartamento', N'no tiene parqueadero', 9);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (27, N'74402 Pierstorff Alley', N'Loreto', 5, N'SI', N'SI', N'SI', 50616911, N'NO', N'', N'Ninguna', 61);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (28, N'7 Anthes Place', N'Aranjuez', 2, N'NO', N'SI', N'NO', 29238069, N'NO', N'Terraza', N'no tiene parqueadero', 38);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (29, N'6835 Haas Park', N'Bombona', 2, N'SI', N'SI', N'SI', 15765251, N'SI', N'Salon', N'Ninguna', 49);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (30, N'35654 Red Cloud Terrace', N'BuenosAires', 2, N'SI', N'SI', N'NO', 85831691, N'NO', N'Casa', N'No tiene ascensor', 61);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (31, N'8254 Merry Park', N'Bombona', 6, N'SI', N'SI', N'NO', 32301310, N'SI', N'Terraza', N'No Niños', 7);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (32, N'6195 Sloan Road', N'BuenosAires', 5, N'SI', N'SI', N'NO', 93311999, N'NO', N'', N'prohibidos los extraterrestres', 75);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (33, N'2 Waxwing Hill', N'Loreto', 4, N'SI', N'NO', N'SI', 59468655, N'NO', N'Casa', N'no tiene parqueadero', 9);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (34, N'93 Village Green Street', N'Barbosa', 5, N'NO', N'SI', N'NO', 93621058, N'NO', N'Casa', N'No mascotas', 58);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (35, N'13 Merchant Way', N'Milagrosa', 6, N'SI', N'NO', N'NO', 64666015, N'SI', N'Finca', N'No tiene ascensor', 10);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (36, N'994 Kinsman Park', N'Salvador', 1, N'SI', N'NO', N'NO', 92440018, N'NO', N'', N'Ninguna', 16);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (37, N'7544 Meadow Vale Avenue', N'Milagrosa', 5, N'SI', N'NO', N'NO', 55666743, N'NO', N'Terraza', N'No tiene ascensor', 2);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (38, N'712 Northport Center', N'Salvador', 1, N'SI', N'NO', N'SI', 47962749, N'NO', N'Salon', N'No mascotas', 30);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (39, N'853 Coleman Way', N'Bombona', 5, N'SI', N'SI', N'SI', 28485322, N'SI', N'Casa', N'no tiene parqueadero', 41);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (40, N'063 Bay Street', N'Loreto', 6, N'NO', N'SI', N'NO', 42438885, N'NO', N'Salon', N'No mascotas', 97);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (41, N'5931 Jackson Center', N'Manrrique', 6, N'SI', N'SI', N'SI', 21225429, N'SI', N'Finca', N'No tiene ascensor', 14);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (43, N'962 Lien Way', N'BuenosAires', 3, N'SI', N'SI', N'NO', 69774981, N'SI', N'Casa', N'No Niños', 38);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (44, N'63632 Tennyson Hill', N'Aranjuez', 5, N'SI', N'SI', N'SI', 46029782, N'SI', N'Casa', N'No tiene ascensor', 17);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (45, N'54705 Carioca Place', N'Salvador', 1, N'NO', N'SI', N'NO', 93165686, N'SI', N'Apartamento', N'Ninguna', 15);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (46, N'8628 Warrior Avenue', N'Salvador', 3, N'NO', N'NO', N'NO', 99415937, N'SI', N'Finca', N'Ninguna', 72);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (47, N'34188 Independence Way', N'BuenosAires', 2, N'NO', N'NO', N'NO', 13101542, N'SI', N'Terraza', N'No mascotas', 91);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (48, N'5 Jana Way', N'Manrrique', 3, N'SI', N'NO', N'NO', 58067538, N'NO', N'', N'no tiene parqueadero', 2);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (49, N'98020 Calypso Place', N'BuenosAires', 6, N'SI', N'NO', N'SI', 42112350, N'NO', N'Terraza', N'No Niños', 14);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (50, N'9597 Rowland Terrace', N'BuenosAires', 4, N'NO', N'NO', N'SI', 53678116, N'SI', N'Terraza', N'No mascotas', 67);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (51, N'581 Armistice Alley', N'Loreto', 4, N'NO', N'SI', N'SI', 56182212, N'NO', N'Finca', N'no tiene parqueadero', 99);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (52, N'8271 Glacier Hill Hill', N'Milagrosa', 5, N'NO', N'NO', N'SI', 47764336, N'SI', N'Casa', N'No Niños', 52);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (53, N'8 Paget Pass', N'Bombona', 6, N'NO', N'NO', N'SI', 84438786, N'NO', N'Finca', N'no tiene parqueadero', 3);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (54, N'833 Forster Court', N'BuenosAires', 6, N'SI', N'SI', N'SI', 59275023, N'NO', N'Salon', N'No tiene ascensor', 57);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (55, N'152 Daystar Lane', N'Milagrosa', 2, N'NO', N'SI', N'NO', 51236888, N'SI', N'Casa', N'No Niños', 92);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (56, N'69502 Hooker Pass', N'BuenosAires', 5, N'NO', N'SI', N'NO', 40656688, N'NO', N'', N'No tiene baño', 22);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (57, N'2 Monument Terrace', N'Salvador', 4, N'SI', N'SI', N'NO', 94658313, N'NO', N'', N'No tiene baño', 67);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (58, N'7 Hanson Drive', N'Salvador', 5, N'SI', N'SI', N'SI', 29066027, N'SI', N'Finca', N'No tiene ascensor', 57);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (59, N'683 Ronald Regan Lane', N'Manrrique', 2, N'SI', N'NO', N'SI', 95394520, N'SI', N'Casa', N'No tiene baño', 81);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (60, N'3713 Summit Avenue', N'Barbosa', 4, N'NO', N'NO', N'NO', 48465070, N'SI', N'', N'Ninguna', 61);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (61, N'32442 Melrose Circle', N'Milagrosa', 3, N'NO', N'NO', N'SI', 21941153, N'SI', N'', N'no tiene parqueadero', 19);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (62, N'8 Rowland Circle', N'Bombona', 1, N'SI', N'SI', N'NO', 42193328, N'NO', N'Finca', N'no tiene parqueadero', 90);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (63, N'56 Sugar Point', N'Caicedo', 3, N'SI', N'SI', N'NO', 3899117, N'SI', N'Salon', N'No mascotas', 88);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (64, N'05 Elmside Lane', N'Caicedo', 5, N'SI', N'SI', N'SI', 29208905, N'NO', N'Salon', N'Ninguna', 76);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (65, N'80 Cascade Pass', N'Bombona', 2, N'SI', N'NO', N'NO', 74572245, N'NO', N'Apartamento', N'No tiene ascensor', 19);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (66, N'9 Nelson Trail', N'BuenosAires', 5, N'NO', N'SI', N'NO', 28179243, N'NO', N'Finca', N'no tiene parqueadero', 86);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (67, N'1696 Pankratz Avenue', N'Barbosa', 6, N'NO', N'SI', N'NO', 7862417, N'SI', N'Apartamento', N'Ninguna', 14);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (68, N'2 Center Place', N'Salvador', 3, N'SI', N'SI', N'SI', 23541223, N'NO', N'Apartamento', N'no tiene parqueadero', 37);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (69, N'82 Ridgeview Junction', N'Manrrique', 3, N'SI', N'SI', N'SI', 30594003, N'SI', N'Apartamento', N'No mascotas', 73);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (70, N'7791 Warrior Street', N'BuenosAires', 3, N'NO', N'NO', N'SI', 85773282, N'NO', N'', N'prohibidos los extraterrestres', 67);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (71, N'088 Ramsey Parkway', N'Aranjuez', 2, N'NO', N'SI', N'NO', 48110105, N'SI', N'Salon', N'no tiene parqueadero', 28);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (72, N'9347 North Junction', N'Bombona', 6, N'NO', N'NO', N'NO', 82632673, N'SI', N'Apartamento', N'Ninguna', 7);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (73, N'37320 International Point', N'Aranjuez', 3, N'SI', N'SI', N'NO', 9773167, N'NO', N'Casa', N'No tiene ascensor', 57);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (74, N'5583 Moulton Parkway', N'Aranjuez', 5, N'NO', N'SI', N'NO', 12371559, N'SI', N'Salon', N'No mascotas', 35);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (75, N'2176 Jay Alley', N'Barbosa', 2, N'NO', N'NO', N'SI', 48445068, N'SI', N'', N'No tiene baño', 73);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (76, N'635 Shoshone Circle', N'Manrrique', 6, N'NO', N'NO', N'NO', 10428542, N'NO', N'Casa', N'no tiene parqueadero', 66);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (77, N'6293 Shopko Point', N'Caicedo', 2, N'NO', N'NO', N'SI', 99384612, N'SI', N'Finca', N'No Niños', 6);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (78, N'94 Miller Parkway', N'Milagrosa', 5, N'SI', N'SI', N'SI', 29969792, N'NO', N'Apartamento', N'No mascotas', 79);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (79, N'92 Blaine Plaza', N'Milagrosa', 6, N'NO', N'SI', N'SI', 59825090, N'SI', N'Salon', N'Ninguna', 28);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (80, N'907 Meadow Valley Way', N'Loreto', 3, N'NO', N'SI', N'NO', 98771742, N'NO', N'Apartamento', N'no tiene parqueadero', 52);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (81, N'41543 Dunning Court', N'Manrrique', 6, N'SI', N'SI', N'SI', 77432581, N'NO', N'Apartamento', N'No mascotas', 49);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (82, N'03 Bonner Center', N'Bombona', 6, N'SI', N'SI', N'SI', 65181855, N'NO', N'', N'Ninguna', 82);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (83, N'43949 Thompson Place', N'Salvador', 1, N'NO', N'NO', N'SI', 49771609, N'NO', N'', N'prohibidos los extraterrestres', 2);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (84, N'3172 1st Point', N'Milagrosa', 5, N'NO', N'SI', N'NO', 12692240, N'NO', N'Casa', N'no tiene parqueadero', 86);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (85, N'6779 Farmco Court', N'Caicedo', 1, N'NO', N'NO', N'SI', 54392258, N'NO', N'Casa', N'no tiene parqueadero', 69);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (86, N'76719 Dwight Junction', N'Barbosa', 3, N'NO', N'SI', N'NO', 29205101, N'NO', N'', N'No tiene baño', 86);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (87, N'43 Johnson Pass', N'Aranjuez', 5, N'NO', N'NO', N'NO', 42365717, N'NO', N'Finca', N'no tiene parqueadero', 17);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (88, N'169 Helena Pass', N'Barbosa', 1, N'NO', N'SI', N'NO', 14056404, N'NO', N'Terraza', N'No Niños', 50);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (89, N'62 Oxford Alley', N'Milagrosa', 4, N'SI', N'NO', N'NO', 95441315, N'NO', N'Apartamento', N'No tiene ascensor', 2);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (90, N'048 Hanover Place', N'Manrrique', 2, N'NO', N'NO', N'SI', 13901373, N'NO', N'Apartamento', N'No mascotas', 26);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (91, N'9906 Monica Circle', N'Bombona', 3, N'SI', N'NO', N'NO', 81552055, N'SI', N'', N'No tiene ascensor', 26);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (92, N'59962 Pennsylvania Center', N'Milagrosa', 1, N'NO', N'SI', N'NO', 59917575, N'NO', N'Salon', N'no tiene parqueadero', 60);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (93, N'5915 Trailsway Parkway', N'Manrrique', 4, N'SI', N'NO', N'NO', 59319169, N'SI', N'Terraza', N'no tiene parqueadero', 69);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (94, N'1 Jana Junction', N'BuenosAires', 1, N'NO', N'NO', N'SI', 29478217, N'SI', N'Salon', N'No tiene baño', 70);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (95, N'88146 Jay Hill', N'BuenosAires', 1, N'NO', N'NO', N'NO', 97665580, N'SI', N'Terraza', N'No Niños', 38);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (96, N'70147 Kinsman Crossing', N'BuenosAires', 5, N'SI', N'SI', N'NO', 79543645, N'SI', N'Finca', N'No tiene ascensor', 53);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (97, N'198 Cardinal Pass', N'Loreto', 5, N'SI', N'NO', N'NO', 21241257, N'NO', N'Finca', N'No tiene ascensor', 39);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (98, N'75320 Melby Circle', N'Loreto', 3, N'NO', N'NO', N'NO', 61145433, N'SI', N'Apartamento', N'No tiene ascensor', 82);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (99, N'4387 Moulton Court', N'BuenosAires', 1, N'SI', N'NO', N'NO', 66629777, N'NO', N'Casa', N'no tiene parqueadero', 55);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (100, N'80 Raven Way', N'Salvador', 3, N'SI', N'NO', N'SI', 81602881, N'NO', N'', N'No Niños', 11);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (101, N'627 Derek Street', N'Salvador', 3, N'SI', N'NO', N'NO', 15852572, N'NO', N'Apartamento', N'No Niños', 34);

INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (102, N'5710 Bartillon Drive', N'Aranjuez', 6, N'SI', N'SI', N'SI', 87569779, N'SI', N'Salon', N'no tiene parqueadero', 9);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (103, N'655 Di Loreto Place', N'Loreto', 3, N'SI', N'NO', N'SI', 4997366, N'SI', N'Salon', N'No tiene ascensor', 12);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (104, N'1 Washington Plaza', N'Bombona', 6, N'SI', N'NO', N'NO', 41095931, N'SI', N'Finca', N'No tiene baño', 17);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (105, N'72702 Florence Park', N'Milagrosa', 4, N'NO', N'NO', N'NO', 82951384, N'SI', N'Apartamento', N'No tiene ascensor', 96);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (106, N'91789 Golf View Center', N'Caicedo', 3, N'SI', N'NO', N'NO', 11980288, N'NO', N'Apartamento', N'No tiene baño', 79);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (107, N'17 Mosinee Pass', N'Salvador', 4, N'SI', N'NO', N'SI', 89491116, N'SI', N'Apartamento', N'prohibidos los extraterrestres', 2);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (108, N'21477 Fremont Plaza', N'BuenosAires', 2, N'SI', N'SI', N'SI', 52896014, N'NO', N'Terraza', N'no tiene parqueadero', 80);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (109, N'2 Farwell Drive', N'BuenosAires', 5, N'NO', N'NO', N'SI', 80041094, N'SI', N'Terraza', N'No tiene ascensor', 84);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (110, N'16733 Mccormick Place', N'Milagrosa', 3, N'SI', N'SI', N'SI', 50545270, N'NO', N'Salon', N'No mascotas', 36);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (111, N'40285 Loomis Court', N'Bombona', 3, N'NO', N'NO', N'NO', 46949644, N'SI', N'Casa', N'No Niños', 69);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (112, N'9944 Wayridge Park', N'Salvador', 1, N'SI', N'SI', N'NO', 44156301, N'NO', N'', N'Ninguna', 68);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (113, N'44 Pankratz Court', N'Bombona', 6, N'SI', N'SI', N'SI', 41537263, N'NO', N'Casa', N'No tiene ascensor', 61);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (114, N'72712 Gina Drive', N'Barbosa', 5, N'NO', N'SI', N'SI', 60733113, N'SI', N'Terraza', N'Ninguna', 95);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (115, N'8037 Vahlen Place', N'Aranjuez', 3, N'NO', N'SI', N'NO', 84260230, N'SI', N'Casa', N'No tiene baño', 37);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (116, N'2 Karstens Avenue', N'Caicedo', 2, N'SI', N'SI', N'SI', 59995795, N'NO', N'', N'No tiene ascensor', 93);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (117, N'524 Oneill Parkway', N'Loreto', 1, N'SI', N'SI', N'NO', 32539768, N'SI', N'Salon', N'no tiene parqueadero', 78);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (118, N'805 Thackeray Avenue', N'Aranjuez', 6, N'SI', N'NO', N'NO', 65785769, N'NO', N'Salon', N'prohibidos los extraterrestres', 83);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (119, N'4 Summer Ridge Court', N'Loreto', 5, N'SI', N'SI', N'NO', 2092876, N'SI', N'Salon', N'No mascotas', 51);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (120, N'40381 Grasskamp Pass', N'Barbosa', 1, N'SI', N'NO', N'SI', 37186157, N'SI', N'Finca', N'No tiene baño', 14);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (121, N'441 Delaware Hill', N'Loreto', 5, N'NO', N'SI', N'SI', 8184891, N'NO', N'Casa', N'No mascotas', 77);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (122, N'7160 Bartillon Hill', N'Milagrosa', 3, N'SI', N'NO', N'NO', 94974188, N'NO', N'Salon', N'Ninguna', 21);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (123, N'11105 Manitowish Pass', N'Milagrosa', 2, N'SI', N'NO', N'NO', 64102963, N'SI', N'Apartamento', N'No mascotas', 22);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (124, N'752 Shopko Road', N'Loreto', 3, N'NO', N'NO', N'NO', 36915886, N'SI', N'Terraza', N'prohibidos los extraterrestres', 85);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (125, N'5659 Crownhardt Alley', N'Manrrique', 5, N'SI', N'NO', N'SI', 4516762, N'SI', N'', N'No Niños', 4);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (126, N'799 Scott Place', N'Manrrique', 6, N'SI', N'SI', N'SI', 94655444, N'NO', N'', N'Ninguna', 50);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (127, N'6331 Redwing Way', N'Salvador', 1, N'SI', N'NO', N'SI', 96267456, N'SI', N'Casa', N'No Niños', 71);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (128, N'79 Mcguire Lane', N'Manrrique', 4, N'SI', N'NO', N'SI', 40285103, N'NO', N'', N'Ninguna', 33);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (129, N'87314 Hoffman Hill', N'Milagrosa', 2, N'NO', N'SI', N'SI', 78649152, N'SI', N'Finca', N'No tiene baño', 65);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (130, N'6120 Transport Point', N'Caicedo', 6, N'NO', N'NO', N'SI', 61415036, N'NO', N'Apartamento', N'No tiene baño', 76);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (131, N'87 Huxley Place', N'Manrrique', 5, N'NO', N'NO', N'NO', 27912127, N'NO', N'Casa', N'No mascotas', 39);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (132, N'03 Acker Street', N'Salvador', 1, N'SI', N'SI', N'SI', 9116928, N'SI', N'Casa', N'No Niños', 17);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (133, N'6 Bluestem Crossing', N'Aranjuez', 6, N'SI', N'SI', N'NO', 79832585, N'NO', N'Terraza', N'no tiene parqueadero', 11);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (134, N'161 Victoria Park', N'Milagrosa', 2, N'SI', N'NO', N'SI', 45056271, N'SI', N'Finca', N'No tiene ascensor', 92);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (135, N'43 Sunbrook Circle', N'Loreto', 3, N'NO', N'NO', N'NO', 83960617, N'SI', N'Apartamento', N'Ninguna', 64);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (136, N'83267 Hazelcrest Terrace', N'Caicedo', 3, N'SI', N'NO', N'SI', 30147521, N'SI', N'Apartamento', N'Ninguna', 50);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (137, N'3652 Merrick Pass', N'Salvador', 1, N'NO', N'NO', N'NO', 13395983, N'SI', N'Terraza', N'No Niños', 58);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (138, N'31 Bunker Hill Crossing', N'Barbosa', 6, N'NO', N'NO', N'SI', 72887326, N'SI', N'Finca', N'prohibidos los extraterrestres', 48);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (139, N'2727 Shelley Street', N'Barbosa', 2, N'SI', N'SI', N'SI', 6418938, N'NO', N'Apartamento', N'Ninguna', 6);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (140, N'6 Wayridge Trail', N'Loreto', 1, N'SI', N'NO', N'NO', 75261930, N'SI', N'Finca', N'prohibidos los extraterrestres', 53);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (141, N'1736 Pond Circle', N'Milagrosa', 2, N'SI', N'NO', N'SI', 81914449, N'SI', N'Apartamento', N'No Niños', 70);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (142, N'8570 Colorado Center', N'Milagrosa', 3, N'SI', N'SI', N'NO', 99484139, N'SI', N'Terraza', N'No tiene baño', 43);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (143, N'3 Magdeline Street', N'Caicedo', 2, N'SI', N'NO', N'SI', 97142959, N'SI', N'Finca', N'no tiene parqueadero', 91);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (144, N'98 Arizona Plaza', N'Bombona', 6, N'NO', N'SI', N'SI', 10582388, N'SI', N'Finca', N'No tiene baño', 14);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (145, N'91985 Vahlen Road', N'Manrrique', 5, N'SI', N'NO', N'NO', 32468102, N'NO', N'', N'No Niños', 97);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (146, N'97 Delaware Pass', N'Loreto', 1, N'SI', N'SI', N'NO', 2346064, N'SI', N'Salon', N'No tiene ascensor', 53);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (147, N'2 Rutledge Crossing', N'Loreto', 1, N'SI', N'SI', N'NO', 71007187, N'SI', N'Salon', N'Ninguna', 66);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (149, N'81 Menomonie Lane', N'Barbosa', 5, N'NO', N'SI', N'SI', 60989914, N'SI', N'Salon', N'No tiene baño', 81);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (150, N'35130 7th Avenue', N'Caicedo', 5, N'SI', N'SI', N'NO', 27947907, N'NO', N'Finca', N'no tiene parqueadero', 76);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (151, N'1 Sachs Park', N'Caicedo', 2, N'NO', N'SI', N'SI', 35676295, N'SI', N'Terraza', N'No Niños', 4);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (152, N'0579 Forster Trail', N'Salvador', 5, N'SI', N'SI', N'SI', 57993961, N'NO', N'Salon', N'No mascotas', 55);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (153, N'8677 Banding Point', N'Aranjuez', 2, N'NO', N'NO', N'SI', 91187771, N'SI', N'Casa', N'No tiene baño', 45);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (154, N'13023 Fairfield Court', N'Manrrique', 4, N'SI', N'NO', N'NO', 2768608, N'SI', N'Terraza', N'Ninguna', 48);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (155, N'20206 5th Center', N'Caicedo', 1, N'NO', N'NO', N'SI', 23062016, N'NO', N'Finca', N'No tiene ascensor', 3);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (156, N'7254 Algoma Way', N'Milagrosa', 1, N'SI', N'NO', N'NO', 83759703, N'SI', N'', N'No tiene ascensor', 98);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (157, N'76447 Porter Way', N'Salvador', 4, N'SI', N'NO', N'NO', 52082092, N'NO', N'Casa', N'Ninguna', 85);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (158, N'423 Rowland Terrace', N'Loreto', 2, N'NO', N'NO', N'SI', 86353535, N'NO', N'Terraza', N'prohibidos los extraterrestres', 20);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (159, N'6 Waubesa Street', N'Barbosa', 4, N'SI', N'NO', N'SI', 69442103, N'SI', N'Salon', N'No tiene baño', 20);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (160, N'9 Jay Court', N'Salvador', 4, N'NO', N'NO', N'NO', 98914943, N'SI', N'Apartamento', N'No tiene ascensor', 29);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (161, N'70850 Park Meadow Court', N'Caicedo', 6, N'NO', N'SI', N'NO', 6659083, N'NO', N'Casa', N'no tiene parqueadero', 83);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (162, N'39 Sachs Alley', N'Aranjuez', 5, N'NO', N'NO', N'SI', 62385828, N'SI', N'Apartamento', N'no tiene parqueadero', 15);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (163, N'8936 Portage Crossing', N'Aranjuez', 2, N'NO', N'SI', N'NO', 2069175, N'NO', N'Salon', N'prohibidos los extraterrestres', 91);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (164, N'3189 Melrose Terrace', N'Caicedo', 3, N'NO', N'SI', N'NO', 66616799, N'NO', N'Casa', N'prohibidos los extraterrestres', 32);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (165, N'8214 Dayton Alley', N'Caicedo', 3, N'SI', N'NO', N'NO', 13583161, N'SI', N'Terraza', N'No mascotas', 12);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (166, N'7 Evergreen Circle', N'Caicedo', 5, N'NO', N'NO', N'NO', 87419518, N'SI', N'Terraza', N'no tiene parqueadero', 57);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (167, N'9111 Lerdahl Pass', N'Aranjuez', 6, N'SI', N'SI', N'SI', 15798942, N'NO', N'', N'prohibidos los extraterrestres', 18);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (168, N'5504 Northland Lane', N'Aranjuez', 6, N'SI', N'SI', N'SI', 69578917, N'SI', N'Terraza', N'No Niños', 23);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (169, N'70 Crowley Alley', N'Caicedo', 1, N'SI', N'SI', N'NO', 84681254, N'NO', N'Salon', N'no tiene parqueadero', 62);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (170, N'70711 Kipling Court', N'Milagrosa', 5, N'NO', N'NO', N'SI', 52569830, N'NO', N'Casa', N'Ninguna', 88);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (171, N'0952 Sutherland Court', N'Barbosa', 2, N'NO', N'SI', N'SI', 29671967, N'SI', N'Finca', N'No mascotas', 91);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (172, N'67130 Parkside Trail', N'Milagrosa', 3, N'SI', N'SI', N'SI', 34103512, N'SI', N'Terraza', N'no tiene parqueadero', 54);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (173, N'8291 Mcguire Park', N'Aranjuez', 5, N'SI', N'NO', N'SI', 29901242, N'NO', N'Apartamento', N'No mascotas', 15);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (174, N'8 Ramsey Crossing', N'Manrrique', 4, N'SI', N'NO', N'SI', 70316778, N'NO', N'Apartamento', N'No tiene baño', 14);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (175, N'278 Macpherson Terrace', N'Milagrosa', 1, N'SI', N'SI', N'NO', 32093557, N'SI', N'Terraza', N'No tiene baño', 17);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (176, N'9548 Starling Street', N'Bombona', 6, N'SI', N'NO', N'SI', 66096148, N'NO', N'Terraza', N'prohibidos los extraterrestres', 75);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (177, N'91 Anzinger Terrace', N'Loreto', 3, N'SI', N'SI', N'SI', 30649243, N'NO', N'', N'No tiene ascensor', 67);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (178, N'551 Thierer Crossing', N'Manrrique', 1, N'SI', N'NO', N'NO', 64163093, N'NO', N'', N'Ninguna', 19);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (179, N'89 Brickson Park Drive', N'BuenosAires', 5, N'NO', N'SI', N'NO', 68075225, N'SI', N'', N'No tiene baño', 20);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (180, N'192 Daystar Crossing', N'Barbosa', 4, N'NO', N'NO', N'SI', 89261086, N'SI', N'', N'No mascotas', 60);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (181, N'309 Hansons Place', N'Salvador', 4, N'NO', N'NO', N'SI', 95115250, N'NO', N'Finca', N'prohibidos los extraterrestres', 19);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (182, N'9886 Steensland Lane', N'Salvador', 3, N'NO', N'SI', N'NO', 92345744, N'NO', N'Apartamento', N'Ninguna', 30);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (183, N'51 Moose Crossing', N'Milagrosa', 1, N'SI', N'NO', N'NO', 68935157, N'NO', N'', N'prohibidos los extraterrestres', 82);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (184, N'626 Johnson Drive', N'Caicedo', 6, N'SI', N'SI', N'SI', 38895430, N'SI', N'', N'Ninguna', 25);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (185, N'207 Mayfield Road', N'Barbosa', 4, N'NO', N'SI', N'NO', 98032811, N'SI', N'Finca', N'No tiene ascensor', 55);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (186, N'448 Mayfield Hill', N'Milagrosa', 4, N'SI', N'NO', N'NO', 60551722, N'NO', N'Terraza', N'no tiene parqueadero', 84);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (187, N'714 Fair Oaks Crossing', N'Barbosa', 5, N'SI', N'SI', N'NO', 17278120, N'SI', N'Terraza', N'No tiene baño', 13);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (188, N'36 Carpenter Alley', N'Manrrique', 4, N'NO', N'SI', N'SI', 37717106, N'SI', N'Terraza', N'no tiene parqueadero', 10);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (189, N'4519 Toban Hill', N'Salvador', 2, N'NO', N'NO', N'NO', 74926846, N'SI', N'Casa', N'prohibidos los extraterrestres', 6);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (190, N'41852 School Crossing', N'Manrrique', 2, N'SI', N'NO', N'NO', 56451964, N'NO', N'Casa', N'Ninguna', 51);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (192, N'7739 Clyde Gallagher Way', N'Loreto', 1, N'NO', N'SI', N'NO', 16667552, N'SI', N'Apartamento', N'prohibidos los extraterrestres', 39);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (194, N'6286 Hooker Junction', N'Barbosa', 5, N'NO', N'NO', N'SI', 90057166, N'NO', N'Terraza', N'no tiene parqueadero', 95);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (195, N'38431 Annamark Park', N'Loreto', 3, N'SI', N'SI', N'NO', 42629923, N'SI', N'Salon', N'No mascotas', 43);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (196, N'7036 Starling Way', N'Caicedo', 4, N'SI', N'NO', N'NO', 23041935, N'NO', N'Apartamento', N'no tiene parqueadero', 1);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (197, N'16693 Waubesa Point', N'Salvador', 5, N'NO', N'SI', N'NO', 82836969, N'NO', N'Terraza', N'No tiene baño', 88);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (198, N'69 Sommers Road', N'Caicedo', 6, N'SI', N'SI', N'NO', 47377163, N'SI', N'Casa', N'no tiene parqueadero', 24);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (199, N'34501 Pennsylvania Place', N'Bombona', 6, N'NO', N'NO', N'SI', 11746103, N'SI', N'Casa', N'no tiene parqueadero', 84);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (200, N'79360 Linden Terrace', N'Loreto', 4, N'SI', N'SI', N'SI', 55782723, N'NO', N'', N'no tiene parqueadero', 63);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (201, N'0702 Mccormick Point', N'Caicedo', 5, N'SI', N'SI', N'NO', 76654097, N'NO', N'Apartamento', N'prohibidos los extraterrestres', 7);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (202, N'1251 Kedzie Point', N'Barbosa', 3, N'NO', N'NO', N'NO', 44714665, N'SI', N'Finca', N'Ninguna', 74);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (203, N'88 Atwood Park', N'Aranjuez', 6, N'NO', N'SI', N'SI', 32739861, N'SI', N'Apartamento', N'No Niños', 29);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (204, N'836 6th Avenue', N'Bombona', 4, N'SI', N'SI', N'SI', 7725864, N'NO', N'Terraza', N'No tiene ascensor', 16);

INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (205, N'7 Division Circle', N'Milagrosa', 5, N'SI', N'SI', N'NO', 74973985, N'SI', N'Casa', N'No tiene baño', 28);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (206, N'901 Calypso Pass', N'BuenosAires', 2, N'NO', N'SI', N'NO', 85237897, N'NO', N'Casa', N'No Niños', 83);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (207, N'07 Pepper Wood Trail', N'Aranjuez', 6, N'SI', N'SI', N'NO', 38735103, N'SI', N'Apartamento', N'no tiene parqueadero', 26);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (208, N'6 West Junction', N'Milagrosa', 5, N'NO', N'SI', N'NO', 26991765, N'NO', N'Apartamento', N'No mascotas', 74);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (209, N'7340 Melrose Lane', N'Salvador', 2, N'NO', N'SI', N'SI', 48008275, N'SI', N'Casa', N'No tiene ascensor', 62);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (210, N'64 Hallows Plaza', N'Aranjuez', 1, N'SI', N'NO', N'SI', 23918701, N'NO', N'Finca', N'No tiene baño', 55);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (211, N'93751 Algoma Lane', N'Manrrique', 6, N'SI', N'NO', N'SI', 58777916, N'NO', N'Finca', N'No tiene ascensor', 17);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (212, N'146 Forest Run Hill', N'Loreto', 6, N'SI', N'SI', N'SI', 67973111, N'NO', N'Salon', N'No mascotas', 46);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (213, N'1 Karstens Avenue', N'Manrrique', 2, N'SI', N'NO', N'SI', 5177995, N'SI', N'Terraza', N'Ninguna', 12);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (214, N'4 Utah Avenue', N'Barbosa', 1, N'NO', N'SI', N'NO', 12437994, N'SI', N'Casa', N'No tiene ascensor', 20);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (215, N'1 Sommers Crossing', N'Salvador', 2, N'NO', N'SI', N'SI', 18430338, N'SI', N'Casa', N'no tiene parqueadero', 4);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (216, N'337 Graceland Pass', N'Caicedo', 4, N'NO', N'SI', N'NO', 57365338, N'SI', N'', N'No tiene ascensor', 62);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (217, N'748 Sage Circle', N'Milagrosa', 5, N'SI', N'NO', N'SI', 39299765, N'SI', N'Salon', N'No tiene ascensor', 54);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (218, N'7576 Maryland Circle', N'Barbosa', 4, N'SI', N'NO', N'NO', 93888532, N'SI', N'Terraza', N'No tiene baño', 97);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (219, N'1 Sundown Avenue', N'Bombona', 1, N'NO', N'SI', N'SI', 28923067, N'SI', N'Terraza', N'No tiene ascensor', 45);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (220, N'941 Larry Alley', N'Bombona', 2, N'SI', N'NO', N'NO', 54599014, N'SI', N'Casa', N'no tiene parqueadero', 5);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (221, N'2 High Crossing Street', N'Salvador', 2, N'NO', N'SI', N'SI', 73790279, N'NO', N'Salon', N'No tiene baño', 62);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (222, N'10 Hansons Lane', N'Loreto', 4, N'SI', N'NO', N'NO', 26597029, N'NO', N'Terraza', N'prohibidos los extraterrestres', 81);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (223, N'6956 Hazelcrest Road', N'Bombona', 1, N'SI', N'NO', N'SI', 10184921, N'SI', N'Salon', N'No tiene ascensor', 67);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (224, N'1 Spenser Way', N'Bombona', 2, N'SI', N'NO', N'SI', 99411030, N'SI', N'Finca', N'No tiene ascensor', 80);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (225, N'30 Menomonie Avenue', N'Milagrosa', 1, N'SI', N'SI', N'NO', 16100285, N'NO', N'', N'Ninguna', 62);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (226, N'8 Debs Junction', N'Milagrosa', 2, N'NO', N'NO', N'SI', 89661617, N'NO', N'Apartamento', N'No tiene baño', 80);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (227, N'8429 Autumn Leaf Alley', N'Salvador', 3, N'SI', N'SI', N'SI', 4121218, N'SI', N'Salon', N'prohibidos los extraterrestres', 76);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (228, N'89273 Kinsman Junction', N'Salvador', 3, N'SI', N'SI', N'NO', 36110517, N'SI', N'', N'Ninguna', 80);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (229, N'90290 Declaration Street', N'Barbosa', 3, N'NO', N'SI', N'SI', 59715802, N'NO', N'Salon', N'prohibidos los extraterrestres', 84);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (230, N'804 Little Fleur Pass', N'Milagrosa', 3, N'SI', N'NO', N'SI', 53049034, N'SI', N'Terraza', N'No Niños', 88);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (231, N'1968 Karstens Street', N'Aranjuez', 3, N'NO', N'SI', N'SI', 76321354, N'SI', N'', N'No tiene baño', 50);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (232, N'3790 Oxford Lane', N'Milagrosa', 4, N'NO', N'NO', N'SI', 61002441, N'SI', N'Finca', N'prohibidos los extraterrestres', 21);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (233, N'4680 Badeau Road', N'Loreto', 3, N'SI', N'SI', N'SI', 74979296, N'SI', N'Salon', N'No Niños', 3);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (234, N'65 Farwell Lane', N'Loreto', 3, N'NO', N'NO', N'NO', 91851940, N'NO', N'', N'No mascotas', 90);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (235, N'64 Morning Street', N'Aranjuez', 6, N'NO', N'SI', N'NO', 54526588, N'NO', N'Apartamento', N'No tiene baño', 67);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (236, N'0205 Sunfield Trail', N'Loreto', 6, N'NO', N'SI', N'NO', 12547523, N'NO', N'', N'no tiene parqueadero', 63);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (237, N'654 Dottie Center', N'Salvador', 5, N'SI', N'SI', N'SI', 60294263, N'SI', N'Terraza', N'Ninguna', 14);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (238, N'7307 Anderson Center', N'Salvador', 1, N'NO', N'SI', N'NO', 91375625, N'NO', N'', N'No mascotas', 35);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (239, N'733 Heath Trail', N'Loreto', 4, N'SI', N'NO', N'NO', 70549862, N'SI', N'Apartamento', N'No tiene ascensor', 34);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (240, N'5 Westridge Road', N'Manrrique', 1, N'NO', N'SI', N'SI', 91386220, N'SI', N'Terraza', N'Ninguna', 39);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (241, N'12021 Westridge Place', N'Manrrique', 6, N'SI', N'SI', N'NO', 67025455, N'NO', N'Finca', N'No tiene baño', 54);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (242, N'757 Morning Park', N'Loreto', 5, N'NO', N'NO', N'SI', 21134864, N'SI', N'Terraza', N'no tiene parqueadero', 67);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (243, N'35292 Blaine Terrace', N'Milagrosa', 3, N'SI', N'NO', N'SI', 28976353, N'SI', N'Finca', N'No Niños', 56);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (244, N'79284 School Avenue', N'Barbosa', 4, N'SI', N'NO', N'NO', 36589897, N'SI', N'', N'No mascotas', 59);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (245, N'955 Village Hill', N'Barbosa', 1, N'NO', N'SI', N'SI', 7950943, N'SI', N'Salon', N'no tiene parqueadero', 45);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (246, N'434 Hintze Circle', N'Aranjuez', 4, N'NO', N'NO', N'SI', 37708120, N'NO', N'Apartamento', N'No tiene baño', 15);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (247, N'0167 Wayridge Center', N'Milagrosa', 5, N'NO', N'NO', N'SI', 54276410, N'NO', N'Finca', N'prohibidos los extraterrestres', 36);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (248, N'5 Manitowish Terrace', N'BuenosAires', 4, N'SI', N'NO', N'SI', 15132268, N'NO', N'Terraza', N'No tiene ascensor', 89);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (249, N'2635 Park Meadow Way', N'Caicedo', 2, N'SI', N'SI', N'NO', 98787287, N'SI', N'Apartamento', N'Ninguna', 7);
INSERT INTO Inmuebles (Id_inmuebles, direccion, barrio, Numero_Habitaciones, servicio_Gas, servicio_Energia, garaje, Valor_Arriendo, Disponibilidad, Tipo_Inmueble, Observaciones, Id_Cedula_propietario) VALUES (250, N'9 Superior Way', N'Milagrosa', 6, N'SI', N'NO', N'SI', 34303493, N'NO', N'Salon', N'No mascotas', 26);

INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (1, N'Pretsell', N'Meryl', N'003 Becker Parkway', 30613206, N'mpretsell0@purevolume.com', 94296822, N'Empleado', 4511);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (2, N'Shubotham', N'Thatcher', N'1 Fulton Trail', 34494900, N'tshubotham1@dailymail.co.uk', 92033136, N'Independiente', 4544);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (3, N'Slayton', N'Frank', N'4 Prairieview Lane', 32186857, N'fslayton2@tuttocitta.it', 99128891, N'Empleado', 4119);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (4, N'Giovanetti', N'Blanch', N'658 Burrows Crossing', 36134741, N'bgiovanetti3@fotki.com', 97493593, N'Independiente', 4159);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (5, N'Brimilcombe', N'Vasily', N'9278 Sommers Way', 37078317, N'vbrimilcombe4@cam.ac.uk', 94554340, N'Independiente', 4818);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (6, N'Hudspith', N'Aurelia', N'14 Homewood Circle', 39688840, N'ahudspith5@desdev.cn', 98215296, N'Independiente', 4503);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (7, N'Welburn', N'Erie', N'7 Schurz Circle', 30384565, N'ewelburn6@blogspot.com', 96703222, N'Empleado', 4932);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (8, N'Lennarde', N'Gabi', N'2188 Evergreen Road', 31054051, N'glennarde7@sina.com.cn', 94317839, N'Empleado', 4217);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (9, N'Cluse', N'Gerhardine', N'69105 Clove Alley', 32055940, N'gcluse8@topsy.com', 94723968, N'Empleado', 4185);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (10, N'Pavlitschek', N'Grenville', N'1539 Vidon Place', 33917388, N'gpavlitschek9@springer.com', 92654376, N'Empleado', 4121);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (11, N'Minster', N'John', N'5478 John Wall Drive', 39564239, N'jminstera@skyrock.com', 95868691, N'Empleado', 4281);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (12, N'Lampard', N'Langsdon', N'4 Kensington Crossing', 32427247, N'llampardb@archive.org', 90635977, N'Empleado', 4561);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (13, N'Jacquemot', N'Yehudit', N'69943 Oak Valley Way', 37474420, N'yjacquemotc@telegraph.co.uk', 91680656, N'Empleado', 4839);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (14, N'Danjoie', N'Bartram', N'7055 Almo Park', 30034344, N'bdanjoied@unc.edu', 92949917, N'Empleado', 4143);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (15, N'Denison', N'Clem', N'4776 Manley Park', 32319066, N'cdenisone@wunderground.com', 93510544, N'Empleado', 4590);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (16, N'Disbrey', N'Zondra', N'9 Hanson Avenue', 34541666, N'zdisbreyf@indiegogo.com', 99003299, N'Empleado', 4386);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (17, N'Smetoun', N'Eudora', N'56 Fairview Circle', 38117715, N'esmetoung@reverbnation.com', 92815625, N'Independiente', 4646);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (18, N'Soars', N'Elane', N'79366 Farwell Place', 35893064, N'esoarsh@mapquest.com', 90162529, N'Empleado', 4965);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (19, N'Beyn', N'Shawn', N'7899 Lotheville Center', 32324431, N'sbeyni@ezinearticles.com', 95615826, N'Empleado', 4532);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (20, N'Shawe', N'Massimiliano', N'0678 Upham Alley', 35973937, N'mshawej@umn.edu', 96417914, N'Independiente', 4168);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (21, N'Greenwood', N'Jorry', N'7 Bartelt Drive', 39822570, N'jgreenwoodk@army.mil', 90823927, N'Empleado', 4407);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (22, N'Sego', N'Haywood', N'94467 Carey Point', 32852745, N'hsegol@usda.gov', 92353777, N'Empleado', 4422);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (23, N'Okill', N'Dolley', N'816 Hanson Road', 37381505, N'dokillm@creativecommons.org', 94716580, N'Independiente', 4764);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (24, N'Belch', N'Phip', N'254 3rd Crossing', 33243350, N'pbelchn@imdb.com', 97326822, N'Independiente', 4724);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (25, N'Curee', N'Thomas', N'9038 Birchwood Hill', 38508313, N'tcureeo@chron.com', 93109983, N'Empleado', 4822);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (26, N'Oppery', N'Ayn', N'01 Washington Circle', 35714204, N'aopperyp@google.it', 99415144, N'Independiente', 4250);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (27, N'Feitosa', N'Armstrong', N'73607 Waubesa Plaza', 35212334, N'afeitosaq@toplist.cz', 97424515, N'Empleado', 4656);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (28, N'Ouchterlony', N'Gale', N'706 Sullivan Crossing', 38761056, N'gouchterlonyr@reverbnation.com', 93606575, N'Independiente', 4693);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (29, N'Etter', N'Cacilia', N'62 Sunbrook Parkway', 38135883, N'cetters@networkadvertising.org', 99744749, N'Empleado', 4112);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (30, N'Ledford', N'Marybelle', N'9610 Dakota Drive', 37144047, N'mledfordt@pen.io', 96385729, N'Empleado', 4591);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (31, N'Fortnum', N'Terrye', N'9828 Mosinee Point', 39586809, N'tfortnumu@vinaora.com', 91810613, N'Independiente', 4226);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (32, N'Kobpac', N'Gran', N'4 Stephen Place', 33668512, N'gkobpacv@xrea.com', 99608677, N'Empleado', 4920);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (33, N'Doull', N'Michelina', N'22360 Hudson Avenue', 35739048, N'mdoullw@npr.org', 98243187, N'Independiente', 4593);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (34, N'Cathie', N'Fifi', N'640 International Lane', 35860102, N'fcathiex@tripadvisor.com', 96963303, N'Independiente', 4436);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (35, N'Cecchetelli', N'Dillon', N'4 Cordelia Place', 36197950, N'dcecchetelliy@craigslist.org', 92098679, N'Empleado', 4467);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (36, N'Yann', N'Fenelia', N'79 Moland Terrace', 34267207, N'fyannz@intel.com', 96387415, N'Independiente', 4940);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (37, N'O''Reilly', N'Ilka', N'67098 Autumn Leaf Pass', 31373869, N'ioreilly10@ftc.gov', 96611425, N'Independiente', 4423);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (38, N'Larratt', N'Oswell', N'7 Fulton Plaza', 32344286, N'olarratt11@ted.com', 97114477, N'Independiente', 4967);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (39, N'Pranger', N'Worden', N'4878 Calypso Avenue', 30030666, N'wpranger12@istockphoto.com', 96691830, N'Independiente', 4873);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (40, N'Salla', N'Sully', N'9 Jackson Avenue', 30813788, N'ssalla13@cbslocal.com', 97666956, N'Independiente', 4706);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (41, N'Draper', N'Moe', N'849 Clove Place', 35927478, N'mdraper14@home.pl', 95152931, N'Empleado', 4277);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (42, N'Lyptrade', N'Etheline', N'9 Fordem Parkway', 33117134, N'elyptrade15@epa.gov', 90183580, N'Independiente', 4994);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (43, N'Bodesson', N'Cathy', N'51747 Fairfield Terrace', 32875359, N'cbodesson16@earthlink.net', 92993536, N'Empleado', 4114);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (44, N'Wildber', N'Bridgette', N'097 Crest Line Circle', 33729650, N'bwildber17@indiegogo.com', 92940859, N'Independiente', 4662);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (45, N'Marquot', N'Aurelie', N'450 Johnson Circle', 36649810, N'amarquot18@apple.com', 97230125, N'Empleado', 4983);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (46, N'Whitecross', N'Bondon', N'9 Continental Alley', 31584408, N'bwhitecross19@oracle.com', 95236518, N'Independiente', 4810);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (47, N'Oak', N'Esma', N'876 Autumn Leaf Terrace', 33464604, N'eoak1a@facebook.com', 95289397, N'Independiente', 4975);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (48, N'Delhanty', N'Catha', N'0951 Marcy Crossing', 33942301, N'cdelhanty1b@mysql.com', 96185563, N'Independiente', 4311);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (49, N'Ollis', N'Annabell', N'4 Grim Avenue', 30635823, N'aollis1c@cornell.edu', 96718126, N'Empleado', 4722);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (50, N'Bugs', N'Pavia', N'578 Rockefeller Park', 34689412, N'pbugs1d@mashable.com', 91215593, N'Empleado', 4262);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (51, N'Absolon', N'Shandeigh', N'9094 Corben Pass', 32580249, N'sabsolon1e@forbes.com', 97331808, N'Independiente', 4867);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (52, N'Callinan', N'Melodie', N'954 Cascade Hill', 33593991, N'mcallinan1f@myspace.com', 95151419, N'Empleado', 4020);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (53, N'Ridgewell', N'Christel', N'5686 Lyons Place', 32433881, N'cridgewell1g@howstuffworks.com', 94686704, N'Empleado', 4458);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (54, N'Reubbens', N'Robinette', N'62 Claremont Point', 30812508, N'rreubbens1h@ovh.net', 91301613, N'Independiente', 4577);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (55, N'Wiskar', N'Dewitt', N'3303 North Court', 33930161, N'dwiskar1i@usa.gov', 94964151, N'Independiente', 4665);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (56, N'Kesten', N'Isabel', N'48287 Holmberg Trail', 30352976, N'ikesten1j@eventbrite.com', 90163030, N'Empleado', 4080);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (57, N'Allwell', N'Fielding', N'07 Maple Road', 36223591, N'fallwell1k@reuters.com', 97920338, N'Empleado', 4194);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (58, N'Jerg', N'Angie', N'84420 Weeping Birch Parkway', 30336218, N'ajerg1l@cbslocal.com', 96106391, N'Empleado', 4144);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (59, N'Klimko', N'Waldon', N'00 Rockefeller Point', 36306133, N'wklimko1m@google.nl', 96591573, N'Empleado', 4889);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (60, N'Beck', N'Dedie', N'529 Jenna Park', 31388061, N'dbeck1n@nba.com', 90219806, N'Independiente', 4000);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (61, N'Gilling', N'Evangeline', N'33 Gale Lane', 32930830, N'egilling1o@google.com.au', 92726068, N'Empleado', 4564);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (62, N'Clacson', N'Merrick', N'4878 Anderson Place', 31355989, N'mclacson1p@artisteer.com', 98490233, N'Independiente', 4131);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (63, N'Pringley', N'Nisse', N'6 Mockingbird Place', 36470703, N'npringley1q@ycombinator.com', 97485952, N'Empleado', 4007);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (64, N'Meus', N'Park', N'6 Caliangt Junction', 34670950, N'pmeus1r@printfriendly.com', 90398707, N'Independiente', 4329);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (65, N'Bright', N'Saunders', N'8946 Mariners Cove Parkway', 35287765, N'sbright1s@ameblo.jp', 93185729, N'Independiente', 4041);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (66, N'Consterdine', N'Nataniel', N'1 Sugar Drive', 36961069, N'nconsterdine1t@vinaora.com', 90270113, N'Independiente', 4270);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (67, N'Farnham', N'Nonnah', N'5633 Del Mar Lane', 37861057, N'nfarnham1u@vinaora.com', 92184183, N'Empleado', 4137);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (68, N'McCrackan', N'Elnora', N'71 Gale Park', 39103658, N'emccrackan1v@ca.gov', 98020119, N'Independiente', 4487);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (69, N'Frede', N'Marwin', N'92 Westport Pass', 32924084, N'mfrede1w@ucoz.com', 92546972, N'Empleado', 4322);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (70, N'Mander', N'Alexia', N'2820 Schlimgen Plaza', 30013111, N'amander1x@cargocollective.com', 95483747, N'Empleado', 4256);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (71, N'Drews', N'Darill', N'2 Laurel Hill', 33254183, N'ddrews1y@unicef.org', 92543987, N'Empleado', 4150);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (72, N'Forber', N'Reade', N'9 Ramsey Junction', 35157054, N'rforber1z@imdb.com', 93710840, N'Independiente', 4200);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (73, N'Death', N'Brear', N'199 Sutherland Plaza', 36410718, N'bdeath20@unicef.org', 99424297, N'Empleado', 4780);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (74, N'Hutchin', N'Renee', N'35416 Village Green Alley', 35169665, N'rhutchin21@twitter.com', 97882650, N'Independiente', 4814);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (75, N'Doctor', N'Sandro', N'38457 Petterle Park', 32419489, N'sdoctor22@exblog.jp', 98135740, N'Independiente', 4221);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (76, N'Arthy', N'Regan', N'70 Londonderry Court', 35603415, N'rarthy23@mac.com', 91554369, N'Empleado', 4867);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (77, N'Isaacson', N'Herb', N'75 Logan Junction', 34254861, N'hisaacson24@fema.gov', 92395153, N'Empleado', 4461);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (78, N'Conibere', N'Moore', N'35 Macpherson Trail', 37679951, N'mconibere25@cpanel.net', 90362073, N'Empleado', 4723);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (79, N'Joffe', N'Othello', N'36381 Clyde Gallagher Terrace', 33168202, N'ojoffe26@imgur.com', 91510575, N'Independiente', 4267);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (80, N'Pengilly', N'Jolie', N'7672 Cascade Road', 30538091, N'jpengilly27@oakley.com', 99573710, N'Empleado', 4738);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (81, N'Tomasek', N'Basilio', N'29042 Cherokee Pass', 34816338, N'btomasek28@360.cn', 92599996, N'Independiente', 4318);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (82, N'Orpyne', N'Benoit', N'44 Cardinal Trail', 34133794, N'borpyne29@w3.org', 96308394, N'Independiente', 4840);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (83, N'Staton', N'Rhett', N'146 Stephen Place', 38726716, N'rstaton2a@jalbum.net', 99308297, N'Empleado', 4811);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (84, N'Aspden', N'Georgeanne', N'63706 Barby Point', 38030724, N'gaspden2b@tripadvisor.com', 96416179, N'Independiente', 4199);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (85, N'Greves', N'Hymie', N'249 Sunnyside Court', 30071020, N'hgreves2c@nih.gov', 92942412, N'Independiente', 4751);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (86, N'Vance', N'Brenden', N'9456 Michigan Drive', 35431063, N'bvance2d@google.de', 92673625, N'Independiente', 4269);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (87, N'Maxsted', N'Hamel', N'1 7th Plaza', 36020894, N'hmaxsted2e@desdev.cn', 98536129, N'Empleado', 4539);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (88, N'Child', N'Torie', N'8652 Main Crossing', 39530553, N'tchild2f@google.com.hk', 90219611, N'Independiente', 4466);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (89, N'Laban', N'Licha', N'3 Northport Hill', 35945978, N'llaban2g@opensource.org', 94784990, N'Empleado', 4575);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (90, N'Mattam', N'Jocelyn', N'78 Larry Terrace', 31708184, N'jmattam2h@myspace.com', 94176864, N'Independiente', 4081);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (91, N'Tyrrell', N'Loleta', N'53653 Oak Trail', 32186908, N'ltyrrell2i@taobao.com', 98553203, N'Empleado', 4483);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (92, N'Marthen', N'Heida', N'6549 Heath Place', 34824861, N'hmarthen2j@ebay.co.uk', 99842296, N'Empleado', 4070);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (93, N'MacKill', N'Stevana', N'1 Union Street', 33674325, N'smackill2k@accuweather.com', 91617048, N'Independiente', 4758);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (94, N'Brockman', N'Clerkclaude', N'146 Colorado Road', 31236283, N'cbrockman2l@buzzfeed.com', 93921170, N'Empleado', 4575);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (95, N'Patrie', N'Tanya', N'7935 Norway Maple Trail', 38859716, N'tpatrie2m@upenn.edu', 93413037, N'Independiente', 4037);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (96, N'Caldwell', N'Frederica', N'502 John Wall Drive', 34434970, N'fcaldwell2n@4shared.com', 94912558, N'Empleado', 4631);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (97, N'Screase', N'Krishna', N'56041 Killdeer Hill', 34801168, N'kscrease2o@wsj.com', 93983279, N'Independiente', 4967);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (98, N'Ankers', N'Adora', N'45 Service Alley', 30032813, N'aankers2p@google.com', 98231672, N'Independiente', 4003);
INSERT INTO Propietarios (Id_Cedula_propietario, Apellido, Nombre, Direccion, Celular, Correo, Numero_Cuenta, Tipo_Cuenta, Matricula_Casa) VALUES (99, N'Bowkley', N'Zelma', N'73774 Mayer Plaza', 30803760, N'zbowkley2q@w3.org', 94837197, N'Independiente', 4661);

INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (1, 1, N'Suzanna', N'05 1st Circle', N'Bombona', 35117580);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (2, 2, N'Renato', N'3101 Dawn Plaza', N'Buenos_Aires', 37690266);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (3, 3, N'Katrine', N'31 Oak Park', N'Salvador', 34518632);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (4, 4, N'Henry', N'42 Little Fleur Place', N'Bombona', 30865035);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (5, 5, N'Marielle', N'4136 Bashford Plaza', N'Salvador', 35394803);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (6, 6, N'Cherida', N'96 Heffernan Circle', N'Bombona', 36798892);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (7, 7, N'Ninetta', N'22 Haas Center', N'Bombona', 34448835);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (8, 8, N'Hewett', N'5233 Acker Lane', N'Aranjuez', 34253358);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (9, 9, N'Tedi', N'64 Hoffman Park', N'Bombona', 39970019);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (10, 10, N'Rory', N'7625 Vernon Park', N'Salvador', 33844916);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (11, 11, N'Phylis', N'935 Marcy Avenue', N'Buenos_Aires', 39553629);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (12, 12, N'Gilli', N'956 Sage Lane', N'Aranjuez', 32561563);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (13, 13, N'Armstrong', N'28 Sugar Way', N'Buenos_Aires', 30290547);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (14, 14, N'Alistair', N'57 Packers Plaza', N'Aranjuez', 34769667);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (15, 15, N'Davis', N'1 Onsgard Point', N'Aranjuez', 32212288);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (16, 16, N'Aleta', N'1 Sherman Hill', N'Aranjuez', 30717072);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (17, 17, N'Morlee', N'9776 Lakewood Plaza', N'Aranjuez', 33003929);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (18, 18, N'Shep', N'01 Springview Place', N'Buenos_Aires', 33300250);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (19, 19, N'Marty', N'713 American Lane', N'Bombona', 37326080);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (20, 20, N'Magdaia', N'507 Morning Way', N'Salvador', 31694608);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (21, 21, N'Derrick', N'8 Lighthouse Bay Plaza', N'Buenos_Aires', 32896359);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (22, 22, N'Chiquita', N'090 Beilfuss Park', N'Buenos_Aires', 39570222);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (23, 23, N'Lianne', N'8012 Towne Junction', N'Aranjuez', 36161172);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (24, 24, N'Kizzie', N'61 Bobwhite Hill', N'Bombona', 35463912);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (25, 25, N'Dora', N'1 Ridge Oak Crossing', N'Salvador', 34529832);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (26, 26, N'Wini', N'55 Canary Drive', N'Salvador', 32574667);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (27, 27, N'Nataniel', N'5262 Ryan Drive', N'Aranjuez', 31339763);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (28, 28, N'Jenifer', N'9852 Gateway Center', N'Buenos_Aires', 39091480);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (29, 29, N'Odo', N'61 Prentice Court', N'Bombona', 39632923);
INSERT INTO Sedes (Id_Sede, Id_Administrador, Nombre, Direccion, Barrio, Telefono) VALUES (30, 30, N'Zenia', N'9 Westridge Hill', N'Salvador', 37057179);

INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (1, 165, 19, CAST(N'2019-10-23T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (3, 160, 148, CAST(N'2020-01-03T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (4, 63, 27, CAST(N'2020-02-07T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (5, 156, 34, CAST(N'2020-01-04T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (6, 120, 135, CAST(N'2019-11-14T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (7, 60, 27, CAST(N'2019-10-28T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (8, 228, 72, CAST(N'2019-09-06T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (9, 32, 29, CAST(N'2019-12-12T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (10, 157, 96, CAST(N'2019-11-25T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (11, 181, 132, CAST(N'2020-04-04T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (12, 235, 88, CAST(N'2020-05-07T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (13, 141, 74, CAST(N'2019-07-03T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (14, 140, 95, CAST(N'2019-07-28T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (15, 241, 12, CAST(N'2020-03-04T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (16, 92, 116, CAST(N'2019-11-29T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (17, 159, 20, CAST(N'2019-10-18T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (18, 241, 1, CAST(N'2020-05-11T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (19, 30, 126, CAST(N'2019-12-01T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (20, 72, 26, CAST(N'2019-12-25T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (21, 122, 87, CAST(N'2019-12-16T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (22, 98, 98, CAST(N'2019-10-15T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (23, 169, 33, CAST(N'2019-09-28T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (24, 64, 51, CAST(N'2020-03-19T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (25, 84, 144, CAST(N'2019-11-01T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (26, 78, 46, CAST(N'2020-02-15T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (27, 187, 78, CAST(N'2019-10-29T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (28, 173, 95, CAST(N'2019-08-03T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (29, 9, 42, CAST(N'2019-12-22T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (30, 212, 11, CAST(N'2019-08-07T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (31, 248, 43, CAST(N'2019-10-01T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (32, 87, 57, CAST(N'2019-07-14T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (33, 185, 86, CAST(N'2019-12-11T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (34, 227, 54, CAST(N'2020-03-03T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (35, 87, 67, CAST(N'2019-10-04T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (36, 68, 144, CAST(N'2020-01-11T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (37, 222, 20, CAST(N'2019-06-24T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (38, 78, 108, CAST(N'2019-12-07T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (39, 133, 1, CAST(N'2020-03-26T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (40, 198, 132, CAST(N'2019-12-17T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (41, 77, 11, CAST(N'2019-12-16T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (42, 236, 53, CAST(N'2019-12-09T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (43, 31, 35, CAST(N'2019-06-26T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (44, 63, 34, CAST(N'2019-10-31T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (45, 53, 132, CAST(N'2019-11-27T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (46, 158, 5, CAST(N'2019-08-03T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (47, 74, 131, CAST(N'2020-02-24T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (48, 108, 143, CAST(N'2019-07-10T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (49, 250, 138, CAST(N'2020-03-24T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (50, 248, 57, CAST(N'2019-09-13T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (51, 2, 102, CAST(N'2020-05-10T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (52, 80, 110, CAST(N'2020-03-26T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (53, 218, 7, CAST(N'2019-11-15T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (54, 36, 71, CAST(N'2019-06-25T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (55, 127, 102, CAST(N'2020-05-16T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (56, 95, 70, CAST(N'2019-07-10T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (58, 63, 91, CAST(N'2019-11-09T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (59, 41, 59, CAST(N'2019-10-06T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (60, 10, 3, CAST(N'2020-02-09T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (61, 243, 124, CAST(N'2020-02-02T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (62, 86, 135, CAST(N'2020-03-18T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (63, 123, 123, CAST(N'2019-12-10T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (64, 109, 90, CAST(N'2020-05-07T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (65, 63, 78, CAST(N'2020-03-08T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (66, 231, 140, CAST(N'2019-11-16T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (67, 178, 80, CAST(N'2019-05-27T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (68, 174, 15, CAST(N'2020-01-18T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (69, 50, 143, CAST(N'2020-02-15T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (70, 171, 56, CAST(N'2019-08-28T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (71, 135, 48, CAST(N'2020-01-19T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (72, 207, 1, CAST(N'2019-11-22T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (73, 39, 144, CAST(N'2019-09-27T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (74, 97, 63, CAST(N'2020-01-14T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (75, 132, 145, CAST(N'2020-01-02T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (76, 71, 97, CAST(N'2020-01-30T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (77, 244, 119, CAST(N'2019-12-11T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (78, 52, 115, CAST(N'2019-07-29T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (79, 41, 35, CAST(N'2019-08-15T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (80, 248, 123, CAST(N'2019-12-01T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (81, 236, 118, CAST(N'2019-05-26T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (82, 109, 64, CAST(N'2019-05-22T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (83, 99, 107, CAST(N'2020-02-21T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (84, 115, 131, CAST(N'2019-05-27T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (85, 209, 122, CAST(N'2019-12-30T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (86, 67, 137, CAST(N'2020-04-16T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (87, 249, 27, CAST(N'2019-11-17T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (88, 33, 90, CAST(N'2020-04-03T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (89, 227, 71, CAST(N'2019-07-31T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (90, 225, 127, CAST(N'2019-09-19T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (91, 139, 85, CAST(N'2019-12-22T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (92, 162, 48, CAST(N'2019-08-12T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (93, 104, 8, CAST(N'2019-10-25T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (94, 187, 98, CAST(N'2019-07-03T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (95, 170, 13, CAST(N'2019-08-05T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (96, 140, 72, CAST(N'2020-02-18T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (97, 82, 3, CAST(N'2020-01-15T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (98, 96, 106, CAST(N'2019-10-10T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (99, 67, 2, CAST(N'2020-03-18T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (100, 238, 132, CAST(N'2019-10-29T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (101, 136, 138, CAST(N'2019-11-21T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (102, 117, 44, CAST(N'2019-08-30T00:00:00.000' AS DATETIME), N'No Aprobada');

INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (103, 51, 76, CAST(N'2020-01-08T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (104, 58, 71, CAST(N'2019-08-09T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (105, 91, 81, CAST(N'2020-02-12T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (106, 220, 146, CAST(N'2020-04-19T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (107, 68, 68, CAST(N'2019-11-01T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (108, 57, 22, CAST(N'2020-03-14T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (109, 124, 33, CAST(N'2019-12-29T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (110, 94, 96, CAST(N'2020-03-31T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (111, 216, 68, CAST(N'2019-08-13T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (113, 51, 3, CAST(N'2020-01-10T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (114, 237, 132, CAST(N'2020-01-02T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (115, 65, 56, CAST(N'2019-07-08T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (116, 182, 147, CAST(N'2020-01-05T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (117, 146, 2, CAST(N'2019-10-11T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (118, 228, 27, CAST(N'2020-01-16T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (119, 114, 74, CAST(N'2019-11-02T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (120, 93, 144, CAST(N'2020-01-10T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (121, 175, 26, CAST(N'2019-12-20T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (122, 182, 93, CAST(N'2019-09-01T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (123, 171, 101, CAST(N'2019-11-01T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (124, 150, 143, CAST(N'2019-12-24T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (125, 59, 12, CAST(N'2019-07-05T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (126, 40, 88, CAST(N'2020-01-21T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (127, 128, 84, CAST(N'2019-06-22T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (128, 57, 85, CAST(N'2020-03-04T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (129, 159, 86, CAST(N'2019-10-12T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (130, 71, 115, CAST(N'2019-06-01T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (131, 197, 46, CAST(N'2020-01-29T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (132, 73, 39, CAST(N'2019-11-11T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (133, 208, 25, CAST(N'2020-05-14T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (134, 134, 6, CAST(N'2019-06-29T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (135, 188, 23, CAST(N'2019-09-01T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (136, 110, 74, CAST(N'2019-12-03T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (137, 241, 116, CAST(N'2020-05-07T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (138, 70, 150, CAST(N'2020-01-06T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (139, 222, 2, CAST(N'2019-11-30T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (140, 161, 21, CAST(N'2019-12-08T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (141, 246, 144, CAST(N'2019-06-04T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (142, 167, 25, CAST(N'2019-10-31T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (143, 94, 5, CAST(N'2020-04-05T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (144, 236, 26, CAST(N'2020-03-19T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (145, 94, 94, CAST(N'2020-03-22T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (146, 52, 66, CAST(N'2019-05-19T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (147, 8, 89, CAST(N'2019-11-10T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (148, 181, 146, CAST(N'2020-04-30T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (149, 118, 148, CAST(N'2020-04-27T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (150, 66, 124, CAST(N'2019-07-04T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (151, 211, 75, CAST(N'2019-10-23T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (152, 219, 86, CAST(N'2019-10-21T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (153, 54, 131, CAST(N'2019-11-17T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (154, 231, 101, CAST(N'2019-11-23T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (155, 38, 39, CAST(N'2020-02-15T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (156, 2, 35, CAST(N'2019-06-06T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (157, 44, 46, CAST(N'2020-03-18T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (158, 62, 13, CAST(N'2019-08-02T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (159, 54, 5, CAST(N'2020-04-03T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (160, 71, 13, CAST(N'2019-10-21T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (161, 13, 51, CAST(N'2020-02-12T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (162, 198, 66, CAST(N'2020-02-12T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (163, 10, 123, CAST(N'2019-05-24T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (164, 29, 99, CAST(N'2020-03-12T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (165, 36, 142, CAST(N'2020-04-13T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (166, 140, 141, CAST(N'2019-07-19T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (167, 88, 22, CAST(N'2019-10-19T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (168, 232, 20, CAST(N'2020-01-04T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (169, 142, 93, CAST(N'2020-04-09T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (170, 248, 19, CAST(N'2019-08-13T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (171, 94, 39, CAST(N'2019-12-08T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (172, 69, 92, CAST(N'2019-11-11T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (173, 17, 25, CAST(N'2019-06-17T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (174, 96, 45, CAST(N'2020-03-30T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (175, 123, 1, CAST(N'2020-04-25T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (176, 9, 93, CAST(N'2019-10-12T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (177, 133, 59, CAST(N'2020-02-05T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (178, 85, 127, CAST(N'2019-06-07T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (179, 197, 150, CAST(N'2019-09-01T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (180, 44, 48, CAST(N'2020-04-07T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (181, 85, 12, CAST(N'2019-11-23T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (182, 10, 120, CAST(N'2019-06-01T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (183, 113, 93, CAST(N'2020-01-12T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (184, 238, 7, CAST(N'2020-04-30T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (185, 7, 86, CAST(N'2019-10-13T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (186, 232, 127, CAST(N'2020-05-08T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (187, 194, 26, CAST(N'2020-05-05T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (188, 17, 53, CAST(N'2019-10-12T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (189, 8, 26, CAST(N'2019-05-27T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (190, 13, 64, CAST(N'2019-11-16T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (191, 22, 40, CAST(N'2019-11-23T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (192, 113, 54, CAST(N'2019-09-16T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (193, 234, 146, CAST(N'2019-06-27T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (194, 87, 64, CAST(N'2019-10-18T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (195, 62, 1, CAST(N'2019-07-06T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (196, 216, 9, CAST(N'2019-08-23T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (197, 225, 12, CAST(N'2019-10-03T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (198, 230, 87, CAST(N'2019-07-06T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (199, 203, 56, CAST(N'2020-01-18T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (200, 108, 64, CAST(N'2019-10-14T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (201, 98, 96, CAST(N'2019-08-20T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (202, 69, 2, CAST(N'2019-07-02T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (203, 247, 110, CAST(N'2020-05-11T00:00:00.000' AS DATETIME), N'Aprobada');

INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (204, 183, 30, CAST(N'2020-01-08T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (205, 199, 92, CAST(N'2019-12-15T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (206, 244, 36, CAST(N'2019-06-06T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (207, 152, 101, CAST(N'2019-08-07T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (208, 199, 119, CAST(N'2019-12-07T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (209, 39, 24, CAST(N'2020-01-17T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (210, 28, 74, CAST(N'2020-05-04T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (211, 121, 138, CAST(N'2019-08-16T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (212, 35, 72, CAST(N'2019-09-08T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (213, 207, 88, CAST(N'2019-09-23T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (214, 163, 17, CAST(N'2019-10-26T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (215, 234, 42, CAST(N'2019-11-30T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (216, 246, 30, CAST(N'2020-04-24T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (217, 231, 143, CAST(N'2020-03-03T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (219, 229, 5, CAST(N'2019-08-12T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (220, 233, 37, CAST(N'2019-11-23T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (221, 123, 57, CAST(N'2019-12-31T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (222, 166, 140, CAST(N'2020-01-14T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (223, 98, 97, CAST(N'2019-06-24T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (224, 47, 40, CAST(N'2019-09-27T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (225, 91, 31, CAST(N'2019-12-17T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (226, 165, 106, CAST(N'2019-06-20T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (227, 117, 130, CAST(N'2020-01-12T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (228, 151, 116, CAST(N'2019-09-11T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (229, 119, 18, CAST(N'2019-11-06T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (230, 11, 37, CAST(N'2019-09-11T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (231, 1, 28, CAST(N'2019-06-18T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (232, 32, 133, CAST(N'2019-10-10T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (233, 135, 66, CAST(N'2019-10-27T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (234, 34, 135, CAST(N'2019-12-23T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (235, 28, 62, CAST(N'2020-02-13T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (236, 1, 130, CAST(N'2020-01-02T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (237, 140, 147, CAST(N'2019-08-21T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (238, 149, 144, CAST(N'2019-06-20T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (239, 189, 107, CAST(N'2019-05-25T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (240, 225, 76, CAST(N'2019-08-21T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (241, 247, 102, CAST(N'2019-11-11T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (242, 126, 44, CAST(N'2020-02-09T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (243, 88, 119, CAST(N'2019-11-11T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (244, 244, 136, CAST(N'2019-11-04T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (245, 162, 84, CAST(N'2020-03-22T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (246, 233, 33, CAST(N'2020-04-28T00:00:00.000' AS DATETIME), N'No Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (247, 80, 115, CAST(N'2020-04-15T00:00:00.000' AS DATETIME), N'Aprobada');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (248, 48, 91, CAST(N'2019-08-30T00:00:00.000' AS DATETIME), N'Sin Revisar');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (249, 83, 76, CAST(N'2020-05-16T00:00:00.000' AS DATETIME), N'Faltan datos');
INSERT INTO Solicitudes (idSolicitud, Id_inmuebles, Id_Cliente, Fecha_Solicitud, Estado_Solicitud) VALUES (250, 13, 31, CAST(N'2019-06-02T00:00:00.000' AS DATETIME), N'Aprobada');

INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (1, 1592448148, N'bjozefowicz0@nature.com', 2388809, N'Yakijo', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (2, 1123716898, N'vmosson1@friendfeed.com', 2945587, N'Avamm', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (3, 1063930577, N'asaintsbury2@imageshack.us', 2222582, N'Twitterlist', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (4, 1016024816, N'landri3@noaa.gov', 2663049, N'Lazz', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (5, 1355775107, N'fpleavin4@auda.org.au', 2695901, N'Mymm', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (6, 1316411889, N'jhaliburn5@themeforest.net', 2611561, N'Oyondu', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (7, 1831844078, N'shendrickson6@mail.ru', 2459494, N'Brainbox', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (8, 1392927052, N'rmckain7@mac.com', 2901477, N'Mita', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (9, 1847609018, N'kdemattei8@jigsy.com', 2528007, N'Brainsphere', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (10, 1536851855, N'rmalham9@princeton.edu', 2474454, N'Zoonoodle', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (11, 1619788403, N'ahasta@about.me', 2024685, N'Teklist', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (12, 1968223950, N'nblaxtonb@upenn.edu', 2778582, N'Skyndu', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (13, 1034278591, N'jharkerc@umich.edu', 2252920, N'Reallinks', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (14, 1194521401, N'psoled@mail.ru', 2253932, N'Fivebridge', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (15, 1803323931, N'predholee@cnn.com', 2940675, N'Latz', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (16, 1608247265, N'bacostaf@dell.com', 2577444, N'Gigaclub', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (17, 1106691435, N'dlevecqueg@miitbeian.gov.cn', 2117577, N'Riffpath', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (18, 1357614160, N'dthurnerh@typepad.com', 2542195, N'Oozz', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (19, 1725858196, N'biddoni@bravesites.com', 2910832, N'Devpulse', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (20, 1015212642, N'ctomaelloj@hatena.ne.jp', 2680812, N'Youbridge', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (21, 1203491162, N'kjacopk@oakley.com', 2933956, N'Mydo', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (22, 1159529029, N'ceglel@usa.gov', 2851435, N'Meembee', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (23, 1309852306, N'aeustanchm@reddit.com', 2517700, N'Ainyx', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (24, 1141332146, N'ysafen@prnewswire.com', 2056773, N'Photojam', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (25, 1453386753, N'afelminghamo@liveinternet.ru', 2353082, N'Feedfish', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (26, 1446517755, N'ptownesp@state.gov', 2928962, N'Edgetag', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (27, 1044758369, N'tclereq@google.com', 2493642, N'Feednation', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (28, 1284053784, N'jgrattanr@mysql.com', 2935649, N'Linktype', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (29, 1546703116, N'bfrascones@usatoday.com', 2399667, N'Tagtune', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (30, 1375064250, N'mmcgawnt@wix.com', 2964486, N'Abata', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (31, 1816605783, N'rimrieu@europa.eu', 2105336, N'Yadel', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (32, 1522285744, N'mhickv@e-recht24.de', 2545825, N'Zoomzone', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (33, 1120561181, N'jpeeryw@google.co.jp', 2517666, N'Mydo', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (34, 1919553357, N'mandrezx@google.de', 2958111, N'Babbleset', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (35, 1815538177, N'cparcellsy@craigslist.org', 2584997, N'Meezzy', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (36, 1608777883, N'adavidovichz@abc.net.au', 2995550, N'Ooba', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (37, 1079868382, N'pbuckham10@blinklist.com', 2460381, N'Photobug', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (38, 1602051627, N'epotkins11@hexun.com', 2725672, N'Edgeify', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (39, 1176036903, N'ydillon12@opera.com', 2345641, N'Oba', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (40, 1096829546, N'jgould13@nih.gov', 2979289, N'Voolith', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (41, 1710725684, N'trozea14@examiner.com', 2441237, N'Flashspan', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (42, 1253746301, N'cpiele15@netvibes.com', 2214999, N'Zoonoodle', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (43, 1096952016, N'ykirkland16@istockphoto.com', 2391373, N'Skyvu', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (44, 1327717163, N'cveque17@shutterfly.com', 2049226, N'Jatri', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (45, 1146144952, N'ealejo18@nsw.gov.au', 2948113, N'Flipstorm', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (46, 1990963894, N'kevelyn19@marriott.com', 2270333, N'Midel', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (47, 1191984458, N'bdenkin1a@bbc.co.uk', 2979893, N'Edgeify', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (48, 1083504167, N'mmullane1b@miitbeian.gov.cn', 2259437, N'Mybuzz', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (49, 1987507053, N'psleit1c@com.com', 2693166, N'Voomm', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (50, 1735271692, N'dfriedank1d@howstuffworks.com', 2341294, N'Eidel', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (51, 1915179005, N'lmccaghan1e@zimbio.com', 2778929, N'Cogidoo', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (52, 1115558731, N'nstilgoe1f@zimbio.com', 2721907, N'Cogilith', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (53, 1322264060, N'malvis1g@vk.com', 2938377, N'Riffpath', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (54, 1286126150, N'kjuggings1h@ox.ac.uk', 2045050, N'Bubblemix', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (55, 1927221871, N'fscholes1i@yale.edu', 2770251, N'Jaloo', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (56, 1386170774, N'mupchurch1j@webeden.co.uk', 2573031, N'Buzzshare', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (57, 1447644677, N'mleyman1k@squidoo.com', 2115332, N'Vipe', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (58, 1513083354, N'mcragell1l@barnesandnoble.com', 2128972, N'Centidel', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (59, 1515518885, N'pclipson1m@guardian.co.uk', 2007100, N'Janyx', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (60, 1434716149, N'bgrabban1n@unc.edu', 2599390, N'Flashpoint', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (61, 1860555060, N'kstollwerck1o@wix.com', 2240331, N'Bubbletube', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (62, 1491930741, N'fnowlan1p@feedburner.com', 2442728, N'Skimia', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (63, 1304422169, N'lcoogan1q@hao123.com', 2181878, N'Skipfire', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (64, 1716745158, N'chuertas1r@opensource.org', 2340315, N'Dazzlesphere', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (65, 1415583786, N'bromi1s@cnet.com', 2104237, N'Blognation', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (66, 1059412563, N'jchark1t@google.fr', 2756913, N'Brainsphere', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (67, 1613943670, N'apring1u@bloglines.com', 2575281, N'Thoughtblab', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (68, 1153488359, N'grobbeke1v@wix.com', 2000467, N'Feedmix', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (69, 1752835354, N'tgrisdale1w@topsy.com', 2051496, N'Dynabox', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (70, 1142590786, N'cjopson1x@histats.com', 2221919, N'Brightbean', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (71, 1086411338, N'dputland1y@surveymonkey.com', 2823406, N'Shuffledrive', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (72, 1204736567, N'bgoldwater1z@mozilla.com', 2387734, N'Zooxo', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (73, 1818201185, N'fcollman20@ox.ac.uk', 2280241, N'Digitube', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (74, 1681867793, N'oroubay21@ifeng.com', 2727174, N'Avamba', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (75, 1044155229, N'bcrowch22@answers.com', 2547239, N'Youspan', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (76, 1497627362, N'jmacparland23@spiegel.de', 2963454, N'Thoughtmix', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (77, 1285209521, N'crichin24@bing.com', 2398697, N'Meejo', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (78, 1816760820, N'adurram25@latimes.com', 2596854, N'Twitternation', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (79, 1936985040, N'mescalero26@123-reg.co.uk', 2381191, N'Demivee', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (80, 1660704431, N'aconrath27@parallels.com', 2209825, N'Viva', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (81, 1778339925, N'rpinnick28@jimdo.com', 2148047, N'Realmix', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (82, 1124171845, N'dkondratenya29@netlog.com', 2538932, N'Thoughtblab', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (83, 1661390127, N'ltremain2a@redcross.org', 2031063, N'Avavee', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (84, 1145166162, N'cfuller2b@europa.eu', 2010916, N'Edgewire', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (85, 1059361682, N'swhatling2c@vkontakte.ru', 2446814, N'Topicblab', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (86, 1449232323, N'rpavy2d@behance.net', 2660833, N'Ainyx', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (87, 1760425731, N'polphert2e@nationalgeographic.com', 2496047, N'Muxo', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (88, 1779616504, N'jdot2f@google.com', 2908534, N'Skynoodle', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (89, 1217772713, N'bmenghi2g@mashable.com', 2651728, N'Eire', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (90, 1679857820, N'babrahamovitz2h@usnews.com', 2959309, N'Kaymbo', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (91, 1419893802, N'gollet2i@aol.com', 2054830, N'Edgepulse', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (92, 1493661940, N'mnewns2j@ebay.co.uk', 2815077, N'Rhyzio', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (93, 1157434658, N'mrawson2k@cbslocal.com', 2650652, N'Edgewire', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (94, 1077808589, N'echarrington2l@cyberchimps.com', 2036148, N'Centizu', N'Independiente');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (95, 1516289947, N'twhiteman2m@omniture.com', 2934683, N'Meejo', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (96, 1328330189, N'mbettlestone2n@exblog.jp', 2314401, N'Edgeblab', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (97, 1065451765, N'mmullinder2o@paypal.com', 2569830, N'Skimia', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (98, 1568454138, N'cdelaharpe2p@eepurl.com', 2855539, N'Wordtune', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (99, 1937205068, N'tmorican2q@pen.io', 2684098, N'Tambee', N'Empleado');
INSERT INTO Usuarios (Id_Usuario, Cedula, Correo, Telefono, Nombre_Empresa, Independiente) VALUES (100, 1160266319, N'lhealings2r@europa.eu', 2644497, N'Teklist', N'Independiente');

INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (1, 17, 99, 39);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (2, 3, 32, 134);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (3, 17, 88, 72);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (4, 7, 36, 18);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (5, 13, 80, 77);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (6, 1, 17, 201);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (7, 9, 36, 54);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (8, 22, 31, 90);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (9, 30, 49, 129);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (10, 35, 53, 223);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (11, 16, 63, 163);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (12, 13, 21, 188);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (13, 6, 79, 115);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (14, 23, 27, 159);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (15, 16, 10, 156);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (16, 28, 22, 194);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (17, 17, 27, 213);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (18, 13, 25, 126);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (19, 44, 35, 15);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (20, 46, 68, 69);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (21, 16, 59, 103);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (22, 46, 87, 234);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (23, 18, 73, 26);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (24, 8, 49, 64);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (25, 7, 10, 133);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (26, 29, 1, 22);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (27, 15, 99, 212);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (28, 45, 82, 201);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (29, 50, 34, 85);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (30, 35, 70, 46);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (31, 41, 64, 45);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (32, 20, 87, 32);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (33, 42, 30, 37);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (34, 22, 35, 27);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (35, 32, 34, 33);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (36, 36, 38, 180);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (37, 11, 48, 15);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (38, 20, 90, 166);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (39, 4, 21, 138);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (40, 33, 76, 107);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (41, 47, 45, 49);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (43, 16, 59, 129);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (44, 9, 16, 74);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (45, 41, 22, 122);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (46, 9, 64, 69);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (47, 50, 5, 150);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (48, 19, 24, 97);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (49, 39, 73, 231);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (50, 29, 90, 141);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (51, 26, 9, 160);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (52, 36, 10, 32);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (53, 16, 53, 139);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (54, 30, 76, 155);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (55, 46, 41, 130);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (56, 22, 79, 24);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (57, 21, 90, 65);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (58, 33, 42, 158);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (59, 26, 17, 202);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (60, 16, 49, 237);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (61, 21, 56, 8);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (62, 27, 32, 130);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (63, 5, 66, 244);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (64, 17, 86, 38);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (65, 18, 14, 13);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (66, 37, 75, 5);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (67, 4, 65, 143);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (68, 41, 11, 31);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (69, 48, 29, 45);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (70, 17, 60, 127);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (71, 40, 92, 182);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (72, 24, 6, 18);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (73, 18, 41, 56);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (75, 43, 93, 19);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (76, 40, 3, 123);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (77, 15, 73, 128);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (78, 24, 29, 242);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (79, 15, 25, 226);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (80, 24, 52, 75);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (81, 13, 22, 30);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (82, 46, 73, 115);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (83, 40, 21, 87);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (84, 42, 95, 130);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (85, 17, 4, 20);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (86, 31, 1, 75);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (87, 42, 68, 228);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (88, 25, 56, 49);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (89, 36, 68, 40);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (90, 28, 15, 84);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (91, 32, 78, 33);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (92, 4, 4, 177);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (93, 18, 54, 136);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (94, 16, 57, 212);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (95, 12, 57, 20);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (96, 29, 32, 66);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (97, 37, 12, 217);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (98, 5, 12, 235);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (99, 44, 5, 187);
INSERT INTO Visitas (id_Solicitud, id_Cedula_empleado, Id_Usuario, Id_inmuebles) VALUES (100, 2, 62, 103);

ALTER TABLE Contratos ADD FOREIGN KEY(Id_Arrendatarios)
REFERENCES Arrendatarios (Id_Arrendatarios);

ALTER TABLE Contratos ADD FOREIGN KEY(Id_fiador)
REFERENCES Fiadores (Id_fiador);

ALTER TABLE Contratos ADD FOREIGN KEY(Id_inmuebles)
REFERENCES Inmuebles (Id_inmuebles);

ALTER TABLE Contratos ADD FOREIGN KEY(Id_Sede)
REFERENCES Sedes (Id_Sede);

ALTER TABLE Inmuebles ADD FOREIGN KEY(Id_Cedula_propietario)
REFERENCES Propietarios (Id_Cedula_propietario);

ALTER TABLE Sedes ADD FOREIGN KEY(Id_Administrador)
REFERENCES Administradores (Id_Administrador);

ALTER TABLE Solicitudes ADD FOREIGN KEY(Id_Cliente)
REFERENCES Clientes (Id_Cliente);

ALTER TABLE Solicitudes ADD FOREIGN KEY(Id_inmuebles)
REFERENCES Inmuebles (Id_inmuebles);

ALTER TABLE Visitas ADD FOREIGN KEY(id_Cedula_empleado)
REFERENCES Asesores (id_Cedula_empleado);

ALTER TABLE Visitas ADD FOREIGN KEY(Id_inmuebles)
REFERENCES Inmuebles (Id_inmuebles);

ALTER TABLE Visitas ADD FOREIGN KEY(Id_Usuario)
REFERENCES Usuarios (Id_Usuario);

