
CREATE DATABASE bdTienda3;
USE bdTienda3;
CREATE TABLE  producto (
  Idproducto char(6) NOT NULL ,
  IdCategoria char(5) NOT NULL ,
  Descripcion varchar(50) NOT NULL,
  PrecioUnidad decimal(8,1) NOT NULL ,
  Stock int  NOT NULL ,
  Imagen varchar(30) NOT NULL ,
  PRIMARY KEY (Idproducto)
)  ;

INSERT INTO producto VALUES('PRO01', 'CAT02', 'PELOTA SUAVE CON SONIDO', '26', '100', 'PELOTA_SONIDO.jpg');  
INSERT INTO producto VALUES('PRO02', 'CAT02', 'FRACCIONES', '19', '100', 'FRACCIONES.jpg');  
INSERT INTO producto VALUES('PRO03', 'CAT02', 'ARMÓNICA', '94', '100', 'ARMÓNICA.jpg');  
INSERT INTO producto VALUES('PRO04', 'CAT02', 'HUEVITO DE PERCUSIÓN', '16', '100', 'HUEVITO_PERCUSIÓN.jpg');  
INSERT INTO producto VALUES('PRO05', 'CAT02', 'PANDERETA PROFESIONAL CHICA', '16', '100', 'PANDERETA_CHICA.jpg');  
INSERT INTO producto VALUES('PRO06', 'CAT02', 'METALOFÓN COLORES', '16', '100', 'METALOFÓN_COLORES.jpg');  
INSERT INTO producto VALUES('PRO07', 'CAT02', 'KINSE BRAILLE', '19', '100', 'KINSE_BRAILLE.jpg');  
INSERT INTO producto VALUES('PRO09', 'CAT02', 'TABLERO MATEMÁTICO BRAILLE', '18', '100', 'TABLERO_BRAILLE.jpg');  
INSERT INTO producto VALUES('PRO10', 'CAT01', 'CARTAS LSA - ANIMALES', '34', '100', 'CARTAS_ANIMALES.jpg');  
INSERT INTO producto VALUES('PRO11', 'CAT01', 'CARTAS LSA - MESES', '29', '100', 'CARTAS_MESES.jpg');  
INSERT INTO producto VALUES('PRO12', 'CAT01', 'CARTAS LSA - VESTIMENTA', '19', '100', 'CARTAS_VESTIMENTA.jpg');  
INSERT INTO producto VALUES('PRO13', 'CAT01', 'CARTAS ABECEDARIO IMPRENTA', '34', '100', 'ABEC_IMPRENTA.jpg');  
INSERT INTO producto VALUES('PRO14', 'CAT01', 'CARTAS ABECEDARIO CURSIVA', '26', '100', 'ABEC_CURSIVA.jpg');  
INSERT INTO producto VALUES('PRO15', 'CAT01', 'TÚNEL TRANSPARENTE', '29', '100', 'TÚNEL_TRANSPARENTE.jpg');  
INSERT INTO producto VALUES('PRO16', 'CAT01', 'CARTAS NUMÉRICAS', '62', '100', 'CARTAS_NUMÉRICAS.jpg');  
INSERT INTO producto VALUES('PRO17', 'CAT01', 'LAS ACCIONES', '25', '100', 'ACCIONES.jpg');  
INSERT INTO producto VALUES('PRO18', 'CAT01', 'CARTAS OROFACIALES', '56', '100', 'CARTAS_OROFACIALES.jpg');  
INSERT INTO producto VALUES('PRO08', 'CAT01', 'A VER A VER - EMOCIONES', '18', '100', 'VER_EMOCIONES.jpg');  
INSERT INTO producto VALUES('PRO19', 'CAT03', 'PICTOGRAMAS CREANDO HISTORIAS', '75', '100', 'PICTOGRAMAS_HISTORIAS.jpg');  
INSERT INTO producto VALUES('PRO20', 'CAT03', 'ENCADENANDO SÍLABAS', '60', '100', 'ENCADENANDO_SÍLABAS.jpg');  
INSERT INTO producto VALUES('PRO21', 'CAT03', 'LAS ACCIONES', '73', '100', 'ACCIONES.jpg');  
INSERT INTO producto VALUES('PRO22', 'CAT03', 'IMANTADITOS ANIMALES SALVAJES', '13', '100', 'ANIMALES_SALVAJES.jpg');  
INSERT INTO producto VALUES('PRO23', 'CAT03', 'IMANTADITOS ANIMALES DOMESTICOS', '67', '100', 'ANIMALES_DOMES.jpg');  
INSERT INTO producto VALUES('PRO24', 'CAT03', 'CAJA LETRAS IMANTADAS', '42', '100', 'CAJA_LETRAS_IMANTADAS.jpg');  
INSERT INTO producto VALUES('PRO25', 'CAT03', 'CAJA DE PERMANENCIA', '89', '100', 'CAJA DE PERMANENCIA.jpg');  
INSERT INTO producto VALUES('PRO26', 'CAT03', 'MUÑECOS DE EQUILIBRIO NATURAL', '58', '100', 'MUÑECOS DE EQUILIBRIO.jpg');  
INSERT INTO producto VALUES('PRO27', 'CAT03', 'MINI PANEL DE RECORRIDO', '59', '100', 'MINI PANEL DE RECORRIDO.jpg');  
INSERT INTO producto VALUES('PRO28', 'CAT04', 'CAJA DE PERMANENCIA', '89', '100', 'CAJA DE PERMANENCIA.jpg');  
INSERT INTO producto VALUES('PRO29', 'CAT05', 'MUÑECOS DE EQUILIBRIO NATURAL', '58', '100', 'MUÑECOS DE EQUILIBRIO.jpg');  
INSERT INTO producto VALUES('PRO30', 'CAT06', 'MINI PANEL DE RECORRIDO', '59', '100', 'MINI PANEL DE RECORRIDO.jpg');  
INSERT INTO producto VALUES('PRO31', 'CAT04', 'TÚNEL TRANSPARENTE', '29', '100', 'TÚNEL_TRANSPARENTE.jpg');  
INSERT INTO producto VALUES('PRO32', 'CAT04', 'CARTAS NUMÉRICAS', '62', '100', 'CARTAS_NUMÉRICAS.jpg');  
INSERT INTO producto VALUES('PRO33', 'CAT04', 'LAS ACCIONES', '25', '100', 'ACCIONES.jpg');  
INSERT INTO producto VALUES('PRO34', 'CAT05', 'CARTAS OROFACIALES', '56', '100', 'CARTAS_OROFACIALES.jpg');  
INSERT INTO producto VALUES('PRO35', 'CAT05', 'A VER A VER - EMOCIONES', '18', '100', 'VER_EMOCIONES.jpg');  
INSERT INTO producto VALUES('PRO36', 'CAT05', 'CARTAS LSA - ANIMALES', '34', '100', 'CARTAS_ANIMALES.jpg');  
INSERT INTO producto VALUES('PRO37', 'CAT06', 'CARTAS LSA - MESES', '29', '100', 'CARTAS_MESES.jpg');  
INSERT INTO producto VALUES('PRO38', 'CAT06', 'CARTAS LSA - VESTIMENTA', '19', '100', 'CARTAS_VESTIMENTA.jpg');  
INSERT INTO producto VALUES('PRO39', 'CAT06', 'CARTAS ABECEDARIO IMPRENTA', '34', '100', 'ABEC_IMPRENTA.jpg');  
INSERT INTO producto VALUES('PRO40', 'CAT06', 'CARTAS ABECEDARIO CURSIVA', '26', '100', 'ABEC_CURSIVA.jpg');  
INSERT INTO producto VALUES('PRO41', 'CAT05', 'HUEVITO DE PERCUSIÓN', '16', '100', 'HUEVITO_PERCUSIÓN.jpg');  
INSERT INTO producto VALUES('PRO42', 'CAT05', 'PANDERETA PROFESIONAL CHICA', '16', '100', 'PANDERETA_CHICA.jpg');  
INSERT INTO producto VALUES('PRO43', 'CAT04', 'METALOFÓN COLORES', '16', '100', 'METALOFÓN_COLORES.jpg');  
INSERT INTO producto VALUES('PRO44', 'CAT04', 'KINSE BRAILLE', '19', '100', 'KINSE_BRAILLE.jpg');  
CREATE TABLE categorias (
  IdCategoria char(5) NOT NULL  ,
  Descripcion varchar(30) NOT NULL  ,
  Imagen varchar(30) ,
  PRIMARY KEY (IdCategoria)
);  


INSERT INTO categorias VALUES('CAT01', 'JUGUETES AUDITIVOS', 'AUDITIVOS.jpg') ; 
INSERT INTO categorias VALUES('CAT02', 'DISCAPACIDAD VISUAL', 'VISUAL.jpg')  ;
INSERT INTO categorias VALUES('CAT03', 'DISCAPACIDAD MOTRIZ', 'MOTRIZ.jpg')  ;
INSERT INTO categorias VALUES('CAT04', 'DISCAPACIDAD COGNITIVA', 'COGNITIVA.jpg')  ;
INSERT INTO categorias VALUES('CAT05', 'MOTRICIDAD FINA', 'MOTRICIDAD.jpg')  ;
INSERT INTO categorias VALUES('CAT06', 'ESTIMULACIÓN TEMPRANA', 'ESTIMULACIÓN.jpg')  ;




CREATE TABLE  clientes (
  IdCliente char(8) NOT NULL ,
  Nombres varchar(30) NOT NULL  ,
  Dni varchar(8) NOT NULL  ,
  Email varchar(30) NOT NULL  ,
  PassWord char(8) NOT NULL ,
  PRIMARY KEY (IdCliente)
);  



INSERT INTO clientes VALUES('CLI00001', 'Vera Perez Alberto',  '12345689','perez@yahoo.es',  '123456');  
INSERT INTO clientes VALUES('CLI00002', 'Aliaga Mendez Carlos', '12486633','pdiaz@yahoo.es',  'alfa') ; 
INSERT INTO clientes VALUES('CLI00003', 'Castro Diaz Ricardo','96852555', 'jmendez@yahoo.es',  'omega');
INSERT INTO clientes VALUES('CLI00004', 'Castro Diaz Ricardo', '96852555', 'Prueba',  '123');    

select IdCliente,Nombres,Dni,Email,PassWord from clientes where Email="Prueba";

CREATE TABLE faccab (
  NroFactura char(8) NOT NULL,
  FechaFactura datetime NOT NULL  ,
  IdCliente char(8) NOT NULL ,
  MontoTotal decimal(10,0) NOT NULL  ,
  PRIMARY KEY (NroFactura)
) ; 




CREATE TABLE  facdet (
  NroFactura char(8) NOT NULL ,
  IdArticulo char(6) NOT NULL  ,
   Cantidad int NOT NULL ,
   primary key(Nrofactura,Idarticulo)
);

DELIMITER @@
DROP PROCEDURE IF EXISTS SPdetalle @@
CREATE PROCEDURE SPdetalle(fac CHAR(8), coda char(6),  can int)
BEGIN
insert into facdet values (fac,coda, can);
update producto set stock= stock -can where idproducto=coda;
END@@
DROP PROCEDURE IF EXISTS SPFACTURA @@
CREATE PROCEDURE SPFACTURA(in codc char(8),in tot numeric(8,1))
BEGIN
declare nro int;
declare fac char(8);
select ifnull(max(nrofactura),0) + 1  from faccab into nro;
set fac = lpad(nro,8,'0');
insert into faccab values (fac,current_date(),codc,tot);
select fac;
END@@
DELIMITER ;
