Create database Via_Veloz_2026
Use Via_Veloz_2026

Create Table Sucursal(
ID_Sucursal Int Primary key,
Nombre Varchar(40),
Destino_Envio Varchar (40))

Create Table Tipo_Paquete(
ID_Tipo_P Int Primary Key,
Descripcion Varchar (50))

Create Table Estado_Envio(
ID_Estado Int Primary Key,
Descripcion Varchar (50))

Create table Remitente(
Ced_remitente Int Primary key,
Nombre varchar (50),
Num_TEL Int)

Create table Receptor(
Ced_receptor  Int Primary key,
Nombre varchar (50),
Num_TEL Int)

Create table Chofer(
Ced_Chofer  Int Primary key,
Nombre varchar (50),
Apellido varchar (50),
Licencia Varchar (10))

Create Table Vehiculo(
Placa Varchar(10)  Primary Key,
Tipo_vehiculo Varchar (50),
Ced_Chofer int Foreign key references Chofer(Ced_Chofer))

Create Table Paquete(
ID_Paquete Int Primary Key,
Fecha_Ingreso Date,
Fecha_Envio Date,
Hora_Salida Time,
ID_Tipo_P Int Foreign Key references Tipo_Paquete(Id_Tipo_P),
ID_Sucursal Int Foreign Key References Sucursal(ID_sucursal),
Ced_Remitente Int Foreign Key References Remitente(Ced_Remitente),
Ced_Receptor Int Foreign Key References Receptor(Ced_Receptor),
Placa_Vehiculo Varchar(10) Foreign Key references Vehiculo(Placa),
ID_Estado int Foreign Key References Estado_Envio(ID_Estado))

Create Table Incidencia(
ID_Incidencia Int Primary Key,
Descripcion Varchar (50),
ID_Paquete Int Foreign key references Paquete (Id_Paquete))

Insert Into Sucursal Values (1,'Veloz Express Central','San Jose')
Insert Into Sucursal Values (2,'Veloz Norte Logistica','Alajuela')
Insert Into Sucursal Values (3,'Veloz Metro Heredia','Heredia')
Insert Into Sucursal Values (4,'Veloz Cartago Premium','Cartago')
Insert Into Sucursal Values (5,'Veloz Pacifico Express','Puntarenas')
Insert Into Sucursal Values (6,'Veloz Guanacaste Cargo','Guanacaste')
Insert Into Sucursal Values (7,'Veloz Caribe Encomiendas','Limon')
Insert Into Sucursal Values (8,'Veloz San Pedro Express','San Jose')
Insert Into Sucursal Values (9,'Veloz Escazu Premium','San Jose')
Insert Into Sucursal Values (10,'Veloz Desamparados Centro','San Jose')
Insert Into Sucursal Values (11,'Veloz Alajuela Centro','Alajuela')
Insert Into Sucursal Values (12,'Veloz Grecia Logistica','Alajuela')
Insert Into Sucursal Values (13,'Veloz San Ramon Express','Alajuela')
Insert Into Sucursal Values (14,'Veloz Heredia Centro','Heredia')
Insert Into Sucursal Values (15,'Veloz Barva Encomiendas','Heredia')
Insert Into Sucursal Values (16,'Veloz Santo Domingo Express','Heredia')
Insert Into Sucursal Values (17,'Veloz Cartago Centro','Cartago')
Insert Into Sucursal Values (18,'Veloz Tres Rios Express','Cartago')
Insert Into Sucursal Values (19,'Veloz Paraiso Cargo','Cartago')
Insert Into Sucursal Values (20,'Veloz Puntarenas Centro','Puntarenas')
Insert Into Sucursal Values (21,'Veloz Liberia Centro','Guanacaste')
Insert Into Sucursal Values (22,'Veloz Limon Centro','Limon')

Insert Into Tipo_Paquete Values (1,'Documento Sobre')
Insert Into Tipo_Paquete Values (2,'Paquete Pequeño 1kg')
Insert Into Tipo_Paquete Values (3,'Paquete Mediano 1kg a 5kg')
Insert Into Tipo_Paquete Values (4,'Paquete Grande 5kg a 20kg')
Insert Into Tipo_Paquete Values (5,'Encomienda Fragil')
Insert Into Tipo_Paquete Values (6,'Carga Pesada Mayor a 20kg')
Insert Into Tipo_Paquete Values (7,'Entrega Express 24 Horas')
Insert Into Tipo_Paquete Values (8,'Paquete 5kg a 10kg')
Insert Into Tipo_Paquete Values (9,'Paquete 10kg a 15kg')
Insert Into Tipo_Paquete Values (10,'Paquete 15kg a 20kg')
Insert Into Tipo_Paquete Values (11,'Sobres Certificados')
Insert Into Tipo_Paquete Values (12,'Medicamentos')
Insert Into Tipo_Paquete Values (13,'Electrodomestico Pequeño')
Insert Into Tipo_Paquete Values (14,'Ropa y Calzado')
Insert Into Tipo_Paquete Values (15,'Repuestos Automotrices')
Insert Into Tipo_Paquete Values (16,'Tecnologia')
Insert Into Tipo_Paquete Values (17,'Documentos Legales')
Insert Into Tipo_Paquete Values (18,'Alimentos No Perecederos')
Insert Into Tipo_Paquete Values (19,'Material de Oficina')
Insert Into Tipo_Paquete Values (20,'Regalo Empacado')
Insert Into Tipo_Paquete Values (21,'Paquete Internacional')
Insert Into Tipo_Paquete Values (22,'Entrega Programada')

Insert Into Estado_Envio Values (1,'Recibido en Sucursal')
Insert Into Estado_Envio Values (2,'En Clasificacion')
Insert Into Estado_Envio Values (3,'En Transito')
Insert Into Estado_Envio Values (4,'En Ruta de Entrega')
Insert Into Estado_Envio Values (5,'Entregado')
Insert Into Estado_Envio Values (6,'No Entregado')
Insert Into Estado_Envio Values (7,'Devuelto al Remitente')
Insert Into Estado_Envio Values (8,'En Transito')
Insert Into Estado_Envio Values (9,'En Transito')
Insert Into Estado_Envio Values (10,'En Transito')
Insert Into Estado_Envio Values (11,'En Clasificacion')
Insert Into Estado_Envio Values (12,'En Clasificacion')
Insert Into Estado_Envio Values (13,'En Clasificacion')
Insert Into Estado_Envio Values (14,'En Ruta de Entrega')
Insert Into Estado_Envio Values (15,'En Ruta de Entrega')
Insert Into Estado_Envio Values (16,'Entregado')
Insert Into Estado_Envio Values (17,'Entregado')
Insert Into Estado_Envio Values (18,'No Entregado')
Insert Into Estado_Envio Values (19,'No Entregado')
Insert Into Estado_Envio Values (20,'Devuelto al Remitente')
Insert Into Estado_Envio Values (21,'Devuelto al Remitente')
Insert Into Estado_Envio Values (22,'Recibido en Sucursal')


Insert Into Remitente Values (101010101,'Carlos Mendez',88841234)
Insert Into Remitente Values (202020202,'Maria Fernanda Lopez',87752345)
Insert Into Remitente Values (303030303,'Juan Pablo Ramirez',88963412)
Insert Into Remitente Values (404040404,'Ana Sofia Vargas',87124598)
Insert Into Remitente Values (505050505,'Luis Alberto Mora',86237845)
Insert Into Remitente Values (606060606,'Daniela Rojas',88990123)
Insert Into Remitente Values (707070707,'Andres Castillo',83014567)
Insert Into Remitente Values (808080808,'Valeria Chacon',84125678)
Insert Into Remitente Values (909090909,'Esteban Navarro',89933445)
Insert Into Remitente Values (111111111,'Paola Jimenez',86547890)
Insert Into Remitente Values (121212121,'Sofia Gonzalez',88301234)
Insert Into Remitente Values (131313131,'Diego Herrera',89234567)
Insert Into Remitente Values (141414141,'Camila Arce',87011223)
Insert Into Remitente Values (151515151,'Bryan Alvarado',86123456)
Insert Into Remitente Values (161616161,'Isabella Mora',88776655)
Insert Into Remitente Values (171717171,'Sebastian Vargas',88990011)
Insert Into Remitente Values (181818181,'Fernanda Solano',87654321)
Insert Into Remitente Values (191919191,'Daniel Cordero',85551234)
Insert Into Remitente Values (212121212,'Marcos Rojas',84441234)
Insert Into Remitente Values (232323232,'Paula Aguilar',89991234)
Insert Into Remitente Values (242424242,'Alejandro Navarro',83214567)
Insert Into Remitente Values (252525252,'Lucia Jimenez',87223344)
Insert Into Remitente Values (262626262,'Mateo Castillo',88112233)
Insert Into Remitente Values (272727272,'Nicole Chacon',89330011)
Insert Into Remitente Values (282828282,'Javier Ramirez',86004567)

Insert Into Receptor Values (112233445,'Gabriela Torres',87112233)
Insert Into Receptor Values (223344556,'Fernando Aguilar',88223344)
Insert Into Receptor Values (334455667,'Melissa Cordero',89334455)
Insert Into Receptor Values (445566778,'Ricardo Solis',86445566)
Insert Into Receptor Values (556677889,'Natalia Herrera',87556677)
Insert Into Receptor Values (667788990,'Kevin Araya',88667788)
Insert Into Receptor Values (778899001,'Samantha Brenes',89778899)
Insert Into Receptor Values (889900112,'Adriana Mendez',87010001)
Insert Into Receptor Values (778811223,'Pablo Lopez',87120002)
Insert Into Receptor Values (667722334,'Monica Ramirez',87230003)
Insert Into Receptor Values (556633445,'Cristian Vargas',87340004)
Insert Into Receptor Values (445544556,'Juliana Mora',87450005)
Insert Into Receptor Values (334455668,'Roberto Solano',87560006)
Insert Into Receptor Values (223366779,'Karla Aguilar',87670007)
Insert Into Receptor Values (112277880,'Luis Quesada',87780008)
Insert Into Receptor Values (990011223,'Valentina Rojas',87890009)
Insert Into Receptor Values (880022334,'Esteban Castillo',87910010)
Insert Into Receptor Values (770033445,'Andrea Chacon',88020011)
Insert Into Receptor Values (660044556,'Daniela Jimenez',88130012)
Insert Into Receptor Values (550055667,'Sergio Navarro',88240013)
Insert Into Receptor Values (440066778,'Paola Herrera',88350014)
Insert Into Receptor Values (330077889,'Kevin Mendez',88460015)

Insert Into Chofer Values (501112223,'Miguel','Salazar','Moto')
Insert Into Chofer Values (502223334,'Andrea','Molina','Carro')
Insert Into Chofer Values (503334445,'Jose','Quesada','Camion')
Insert Into Chofer Values (504445556,'Laura','Jimenez','Buseta')
Insert Into Chofer Values (505556667,'David','Vargas','Carro')
Insert Into Chofer Values (506667778,'Karla','Castro','Moto')
Insert Into Chofer Values (507778889,'Steven','Rojas','Camion')
Insert Into Chofer Values (508889990,'Luis','Cordero','Carro')
Insert Into Chofer Values (509999001,'Mariana','Solis','Moto')
Insert Into Chofer Values (510111112,'Andres','Gonzalez','Camion')
Insert Into Chofer Values (511222223,'Natalia','Arce','Buseta')
Insert Into Chofer Values (512333334,'Diego','Herrera','Carro')
Insert Into Chofer Values (513444445,'Sofia','Mora','Moto')
Insert Into Chofer Values (514555556,'Juan','Vargas','Camion')
Insert Into Chofer Values (515666667,'Camila','Solano','Carro')
Insert Into Chofer Values (516777778,'Sebastian','Aguilar','Moto')
Insert Into Chofer Values (517888889,'Fernanda','Rojas','Buseta')
Insert Into Chofer Values (518999990,'Daniel','Castillo','Carro')
Insert Into Chofer Values (519000001,'Paula','Navarro','Moto')
Insert Into Chofer Values (520111113,'Mateo','Chacon','Camion')
Insert Into Chofer Values (521222224,'Isabella','Jimenez','Carro')
Insert Into Chofer Values (522333335,'Javier','Ramirez','Buseta')

Insert Into Vehiculo Values ('MOT-001','Moto',501112223)
Insert Into Vehiculo Values ('CAR-101','Carro',502223334)
Insert Into Vehiculo Values ('CAM-550','Camion',503334445)
Insert Into Vehiculo Values ('BUS-300','Buseta',504445556)
Insert Into Vehiculo Values ('CAR-202','Carro',505556667)
Insert Into Vehiculo Values ('MOT-777','Moto',506667778)
Insert Into Vehiculo Values ('CAM-990','Camion',507778889)
Insert Into Vehiculo Values ('MOT-010','Moto',509999001)
Insert Into Vehiculo Values ('MOT-011','Moto',513444445)
Insert Into Vehiculo Values ('MOT-012','Moto',516777778)
Insert Into Vehiculo Values ('MOT-013','Moto',519000001)
Insert Into Vehiculo Values ('CAR-303','Carro',508889990)
Insert Into Vehiculo Values ('CAR-304','Carro',512333334)
Insert Into Vehiculo Values ('CAR-305','Carro',515666667)
Insert Into Vehiculo Values ('CAR-306','Carro',518999990)
Insert Into Vehiculo Values ('CAR-307','Carro',521222224)
Insert Into Vehiculo Values ('CAM-701','Camion',510111112)
Insert Into Vehiculo Values ('CAM-702','Camion',514555556)
Insert Into Vehiculo Values ('CAM-703','Camion',520111113)
Insert Into Vehiculo Values ('BUS-401','Buseta',511222223)
Insert Into Vehiculo Values ('BUS-402','Buseta',517888889)
Insert Into Vehiculo Values ('BUS-403','Buseta',522333335)

Insert Into Paquete Values (1,'2026-02-10','2026-02-10','08:15:00',1,1,101010101,112233445,'MOT-001',2)
Insert Into Paquete Values (2,'2026-02-11','2026-02-11','09:40:00',2,2,202020202,223344556,'CAR-101',3)
Insert Into Paquete Values (3,'2026-02-12','2026-02-12','07:30:00',5,3,303030303,334455667,'CAR-202',4)
Insert Into Paquete Values (4,'2026-02-12','2026-02-13','10:10:00',3,4,404040404,445566778,'CAM-550',3)
Insert Into Paquete Values (5,'2026-02-13','2026-02-13','13:05:00',7,5,505050505,556677889,'BUS-300',4)
Insert Into Paquete Values (6,'2026-02-14','2026-02-14','06:55:00',4,6,606060606,667788990,'CAM-990',2)
Insert Into Paquete Values (7,'2026-02-15','2026-02-15','11:20:00',2,7,707070707,778899001,'MOT-777',1)
Insert Into Paquete Values (8,'2026-02-16','2026-02-16','15:45:00',6,1,808080808,112233445,'CAM-550',6)
Insert Into Paquete Values (9,'2026-02-17','2026-02-17','08:05:00',1,2,909090909,223344556,'CAR-101',5)
Insert Into Paquete Values (10,'2026-02-18','2026-02-18','09:25:00',3,3,111111111,334455667,'CAR-202',7)
Insert Into Paquete Values (11,'2026-02-19','2026-02-19','08:10:00',8,8,121212121,889900112,'CAR-303',3)
Insert Into Paquete Values (12,'2026-02-19','2026-02-20','09:05:00',11,9,131313131,778811223,'MOT-010',4)
Insert Into Paquete Values (13,'2026-02-20','2026-02-20','10:45:00',14,10,141414141,667722334,'CAR-304',2)
Insert Into Paquete Values (14,'2026-02-21','2026-02-21','07:20:00',12,11,151515151,556633445,'CAM-701',13)
Insert Into Paquete Values (15,'2026-02-21','2026-02-22','13:15:00',9,12,161616161,445544556,'CAR-305',14)
Insert Into Paquete Values (16,'2026-02-22','2026-02-22','06:50:00',18,13,171717171,334455668,'MOT-011',12)
Insert Into Paquete Values (17,'2026-02-23','2026-02-23','11:35:00',16,14,181818181,223366779,'CAR-306',15)
Insert Into Paquete Values (18,'2026-02-23','2026-02-24','15:05:00',13,15,191919191,112277880,'BUS-401',16)
Insert Into Paquete Values (19,'2026-02-24','2026-02-24','08:25:00',19,16,212121212,990011223,'MOT-012',8)
Insert Into Paquete Values (20,'2026-02-25','2026-02-25','09:55:00',10,17,232323232,880022334,'CAM-702',3)
Insert Into Paquete Values (21,'2026-02-26','2026-02-26','12:40:00',20,18,242424242,770033445,'BUS-402',6)
Insert Into Paquete Values (22,'2026-02-26','2026-02-27','07:05:00',21,19,252525252,660044556,'CAM-703',21)
Insert Into Paquete Values (23,'2026-02-27','2026-02-27','10:15:00',22,20,262626262,550055667,'CAR-307',5)
Insert Into Paquete Values (24,'2026-02-28','2026-03-01','14:30:00',15,21,272727272,440066778,'MOT-013',11)
Insert Into Paquete Values (25,'2026-03-01','2026-03-01','09:10:00',17,22,282828282,330077889,'CAR-101',22)

Insert Into Incidencia Values (1,'Retraso por congestion vehicular',2)
Insert Into Incidencia Values (2,'Direccion incorrecta del receptor',8)
Insert Into Incidencia Values (3,'Paquete con empaque dañado',3)
Insert Into Incidencia Values (4,'Cliente no se encontraba en sucursal',6)
Insert Into Incidencia Values (5,'Error en clasificacion interna',1)
Insert Into Incidencia Values (6,'Cambio de sucursal por solicitud del cliente',4)
Insert Into Incidencia Values (7,'Retraso por condiciones climaticas',5)
Insert Into Incidencia Values (8,'Problema mecanico del vehiculo',6)
Insert Into Incidencia Values (9,'Falta de documentacion adjunta',7)
Insert Into Incidencia Values (10,'Paquete devuelto al remitente',10)
Insert Into Incidencia Values (11,'Cliente solicita cambio de horario de entrega',11)
Insert Into Incidencia Values (12,'Retraso por alta demanda en sucursal',12)
Insert Into Incidencia Values (13,'Paquete retenido para verificacion de datos',13)
Insert Into Incidencia Values (14,'Vehiculo con retraso por mantenimiento preventivo',14)
Insert Into Incidencia Values (15,'Direccion incompleta del receptor',15)
Insert Into Incidencia Values (16,'Receptor solicita retiro en sucursal',16)
Insert Into Incidencia Values (17,'Paquete en revision por empaque abierto',17)
Insert Into Incidencia Values (18,'Intento de entrega sin exito (no habia nadie)',18)
Insert Into Incidencia Values (19,'Ruta afectada por accidente en carretera',19)
Insert Into Incidencia Values (20,'Documento faltante en encomienda',20)
Insert Into Incidencia Values (21,'Reprogramado por lluvia intensa',21)
Insert Into Incidencia Values (22,'Retenido en aduana para revision',22)
Insert Into Incidencia Values (23,'Entrega realizada con observacion del receptor',23)
Insert Into Incidencia Values (24,'Paquete en espera de confirmacion telefonica',24)
Insert Into Incidencia Values (25,'Devuelto por direccion incompleta',25)

--Atencion al Cliente
--Listado completo de todas las sucursales ordenadas por nombre.
Select * from Sucursal Order by Nombre

--Buscar un paquete por ID, mostrando fecha de ingreso, fecha de envío, tipo de paquete, sucursal, remitente, receptor y estado actual.
Select P.ID_Paquete,
P.Fecha_Ingreso,
P.Fecha_Envio,
TP.Descripcion as 'Paquete',
S.Nombre as 'Sucursal', R.Nombre as 'Remitente',
RE.Nombre as 'Receptor',
EE.Descripcion as 'Estado'
From Paquete P
Join Tipo_Paquete TP on P.ID_Tipo_P = TP.ID_Tipo_P
Join Sucursal S on S.ID_Sucursal = P.ID_Sucursal
Join Remitente R On R.Ced_remitente = P.Ced_Remitente
Join Receptor RE on RE.Ced_receptor = P.Ced_Receptor
Join Estado_Envio EE on EE.ID_Estado = P.ID_Estado

--Mostrar el historial de envíos realizados por un remitente específico (por cédula), incluyendo destino y estado.
Select R.Nombre, S.Destino_Envio, EE.Descripcion as 'Estado'   From Remitente R
Join Paquete P on R.Ced_remitente = P.Ced_Remitente
Join Sucursal S On S.ID_Sucursal = P.ID_Sucursal
Join Estado_Envio EE on EE.ID_Estado = P.ID_Estado
Where R.Ced_remitente = 111111111

--Cantidad total de paquetes recibidos por cada receptor, mostrando solo el nombre del receptor y el total.
Select Count(*) as 'Total Paquetes recibidos', RE.Nombre From Paquete P
Join Receptor RE On RE.Ced_receptor = P.Ced_Receptor
Group BY RE.Nombre

--Mostrar únicamente los receptores que han recibido más de 2 paquetes.
Select Count(*) as 'Total Paquetes recibidos', RE.Nombre From Paquete P
Join Receptor RE On RE.Ced_receptor = P.Ced_Receptor
Group BY RE.Nombre
having Count(*) >= 2

--1.Listado completo de todos los estados de envío disponibles en el sistema.
SELECT *
FROM Estado_Envio

--2.Mostrar todos los paquetes junto con la descripción de su estado actual y la sucursal de origen.
SELECT COUNT(*) AS 'Pedidos entregados', P.ID_Tipo_P, E.Descripcion 'Estado actual', S.Nombre AS 'Sucursal Origen'
FROM Paquete P
JOIN Estado_Envio E ON P.ID_Tipo_P = P.ID_Tipo_P
JOIN Sucursal S ON S.ID_Sucursal = P.ID_Sucursal
WHERE E.Descripcion = 'Entregado'
GROUP BY P.ID_Tipo_P, e.Descripcion, S.Nombre
HAVING COUNT(*) >= 2 

--3.Cantidad de paquetes registrados por cada sucursal.
SELECT COUNT(P.ID_Paquete) AS 'Total Paquetes', S.Nombre AS 'Sucursal'
FROM Sucursal S
LEFT JOIN Paquete P ON S.ID_Sucursal = P.ID_Sucursal
GROUP BY S.Nombre

--4.Mostrar únicamente las sucursales que tengan más de 2 paquetes registrados.
SELECT COUNT(P.ID_Paquete) AS 'Total Paquetes', S.Nombre AS 'Sucursal'
FROM Paquete P 
JOIN Sucursal S ON P.ID_Sucursal = S.ID_Sucursal
GROUP BY S.Nombre
HAVING COUNT(P.ID_Paquete) >= 2

--5.Listar las incidencias registradas junto con el ID del paquete y el estado actual del envío.
SELECT I.ID_Paquete, I.Descripcion AS 'Incidencia',  E.Descripcion AS 'Estado actual'
FROM Incidencia I
JOIN Paquete P ON I.ID_Paquete = P.ID_Paquete
JOIN Estado_Envio E ON P.ID_Estado = E.ID_Estado

















