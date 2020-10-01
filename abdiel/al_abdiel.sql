# SQL-Front 5.1  (Build 4.16)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: 127.0.0.1    Database: al_abdiel
# ------------------------------------------------------
# Server version 5.5.5-10.4.8-MariaDB

#
# Source for table categorias
#

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

#
# Dumping data for table categorias
#

INSERT INTO `categorias` VALUES (1,'Otros','2020-05-24 19:12:01');
INSERT INTO `categorias` VALUES (8,'GALLETAS','2020-08-20 13:21:19');
INSERT INTO `categorias` VALUES (9,'LECHE','2020-05-24 19:26:45');
INSERT INTO `categorias` VALUES (10,'LIMPIEZA','2020-05-24 19:27:02');
INSERT INTO `categorias` VALUES (11,'FRUTAS Y VERDURAS','2020-05-24 19:27:29');
INSERT INTO `categorias` VALUES (12,'REFRESCOS Y GASEOSAS','2020-05-24 19:27:50');

#
# Source for table clientes
#

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

#
# Dumping data for table clientes
#

INSERT INTO `clientes` VALUES (13,'Común',909090,'comun@comun.com','(123) 456-7890','ninguno','1994-07-10',51,'2020-07-13 14:35:13','2020-09-29 14:52:01');

#
# Source for table productos
#

CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=831 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

#
# Dumping data for table productos
#

INSERT INTO `productos` VALUES (1,10,'80186511','Abrillantador Finish Brillo Protec 400Ml..','vistas/img/productos/default/image180.jpeg',1000,102.5,103,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (2,10,'80139353','Almidon Niagara Heavy Limon Spray 567Gr..','vistas/img/productos/default/image181.jpeg',1000,23.2,23.7,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (3,10,'80167767','Ambientador Aromatic Lavanda 300Ml..','vistas/img/productos/default/image182.jpeg',1000,11.4,11.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (4,10,'80167768','Ambientador Aromatic Pino 300Ml..','vistas/img/productos/default/image183.jpeg',1000,11.4,11.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (5,10,'80181187','Ambientador Ola Aromatic Bebe 300Ml..','vistas/img/productos/default/image184.jpeg',1000,14.4,14.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (6,10,'80167606','Ambientador Ola Bouquet D/Rosa Aer 300Ml..','vistas/img/productos/default/image185.jpeg',1000,11.4,11.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (7,10,'80167603','Ambientador Ola Manzana Verde Aer 300Ml..','vistas/img/productos/default/image186.jpeg',1000,14.4,14.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (8,10,'80167605','Ambientador Ola Marina Aer 300Ml..','vistas/img/productos/default/image187.jpeg',1000,14.4,14.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (9,10,'71024411','Antigrasa-Lh Ola Maximus Original 850Ml..','vistas/img/productos/default/image188.jpeg',1000,20,20.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (10,10,'71024412','Antigrasa-Lh Ola Maximus Recarga 850Ml..','vistas/img/productos/default/image189.jpeg',1000,13,13.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (11,10,'37040682','Antisarro Ola Maximus 550 Ml..','vistas/img/productos/default/image190.jpeg',1000,13.9,14.4,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (12,10,'80174555','Aromatic Ola Momento De Serenidad 1800Ml..','vistas/img/productos/default/image191.jpeg',1000,19.1,19.6,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (13,10,'37074681','Blanqueador Vanish Gatillo 500Ml..','vistas/img/productos/default/image192.jpeg',1000,39.4,39.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (14,10,'80157550','Bolsa Belen Blanca 100Un..','vistas/img/productos/default/image193.jpeg',1000,18.4,18.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (15,10,'80157551','Bolsa Belen Negra 50Un..','vistas/img/productos/default/image194.jpeg',1000,21.2,21.7,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (16,10,'80167776','Bolsa Ola P/Basura 60X63Cm 35Lt 10Un..','vistas/img/productos/default/image195.jpeg',1000,6.6,7.1,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (17,10,'80164035','Bolsa Ola P/Basura 70X75Cm 50Lt 10Un..','vistas/img/productos/default/image196.jpeg',1000,9.4,9.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (18,10,'45010171','Bolsa Ola P/Basura 78X95Cm 75Lt 10Unpaq..','vistas/img/productos/default/image197.jpeg',1000,13.8,14.3,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (19,10,'80167777','Bolsa Ola P/Basura 90X110Cm 140Lt 10Un..','vistas/img/productos/default/image198.jpeg',1000,21.4,21.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (20,10,'80176053','Bolsa Plast American Bags Grd 80X110 10U..','vistas/img/productos/default/image199.jpeg',1000,24.4,24.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (21,10,'80176054','Bolsa Plast American Bags Med 50X85 10Un..','vistas/img/productos/default/image200.jpeg',1000,13.4,13.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (22,10,'80176055','Bolsa Plast American Bags Peq 44X55 30Un..','vistas/img/productos/default/image201.jpeg',1000,15,15.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (23,10,'80169965','Bolsa Reynolds Zipper Bags Medium 25Un..','vistas/img/productos/default/image202.jpeg',1000,27.4,27.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (24,10,'37093390','Cera Lorito Amarilla 1Lt..','vistas/img/productos/default/image203.jpeg',1000,43,43.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (25,10,'37093394','Cera Lorito Pino 1Lt..','vistas/img/productos/default/image204.jpeg',1000,48,48.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (26,10,'37093563','Cera Ola Al Agua Autobrillo Roja 1Lt..','vistas/img/productos/default/image205.jpeg',1000,22.4,22.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (27,10,'37090060','Cera Ola Sachet Amarilla 400Gr..','vistas/img/productos/default/image206.jpeg',1000,13,13.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (28,10,'37093864','Cera Olaliquida Amarilla 1000Ml..','vistas/img/productos/default/image207.jpeg',1000,34.4,34.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (29,10,'37093982','Cera Tigre Sachet 500Cc..','vistas/img/productos/default/image208.jpeg',1000,16.4,16.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (30,10,'80001481','Clorogel Igenix Eucalipto 900Ml..','vistas/img/productos/default/image209.jpeg',1000,21.4,21.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (31,10,'80181183','Desinf Ola Aromatic Neut De Olor 1800Ml..','vistas/img/productos/default/image210.jpeg',1000,19.1,19.6,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (32,10,'37081718','Desinfect Lysoform Bebe Spray 360Ml..','vistas/img/productos/default/image211.jpeg',1000,24.4,24.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (33,10,'37081720','Desinfect Lysoform Original Spray 390Ml..','vistas/img/productos/default/image212.jpeg',1000,24.4,24.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (34,10,'37081719','Desinfect Lysoform Montana Spray 360Ml..','vistas/img/productos/default/image213.jpeg',1000,24.4,24.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (35,10,'80001447','Desinfectante Igenix Tradicional 360Cc..','vistas/img/productos/default/image214.jpeg',1000,22.6,23.1,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (36,10,'80001448','Desinfectante Igenix Vainilla 360 Cc..','vistas/img/productos/default/image215.jpeg',1000,22.6,23.1,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (37,10,'80181186','Desinfectante Ola Aromatic Bebe 390Ml..','vistas/img/productos/default/image216.jpeg',1000,16.4,16.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (38,10,'80181185','Desinfectante Ola Aromatic Orig 390Ml..','vistas/img/productos/default/image217.jpeg',1000,16.4,16.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (39,10,'80196573','Desinfectante T.Brillo Bebe 360Ml..','vistas/img/productos/default/image218.jpeg',1000,15,15.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (40,10,'80196574','Desinfectante T.Brillo Original 360Ml..','vistas/img/productos/default/image219.jpeg',1000,15,15.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (41,10,'80179449','Det. Bol.C.Un.Toque De Suav. 2Kg..','vistas/img/productos/default/image220.jpeg',1000,37,37.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (42,10,'80165782','Det. Boli. Acc.Dual Floral 2Kg..','vistas/img/productos/default/image221.jpeg',1000,37,37.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (43,10,'80165784','Det. Boliv. Acc.Dual Limon 2Kg..','vistas/img/productos/default/image222.jpeg',1000,37,37.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (44,10,'80174012','Det. Bolivar Matic 2Kg..','vistas/img/productos/default/image223.jpeg',1000,37,37.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (45,10,'80171984','Deterg Liq Ola Futuro Maq Bebe 3.8Lt..','vistas/img/productos/default/image224.jpeg',1000,74,74.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (46,10,'80171981','Deterg Liq Ola Futuro Maq L/Complet 3.8L..','vistas/img/productos/default/image225.jpeg',1000,74,74.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (47,10,'80171985','Deterg Liq Ola Futuro Maq R Color 3.8Lt..','vistas/img/productos/default/image226.jpeg',1000,78.3,78.8,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (48,10,'80174296','Deterg Liq.Fut Ola Bebe 1.8Lt..','vistas/img/productos/default/image227.jpeg',1000,40.5,41,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (49,10,'80174295','Deterg Liq.Fut Ola L/Completo 1.8Lt..','vistas/img/productos/default/image228.jpeg',1000,40.5,41,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (50,10,'80174298','Deterg Liq.Fut Ola Ropacolor 1.8Lt..','vistas/img/productos/default/image229.jpeg',1000,41.6,42.1,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (51,10,'80195254','Detergente Ace Limon 800 Gr..','vistas/img/productos/default/image230.jpeg',1000,17.1,17.6,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (52,10,'80187155','Detergente Bolivar Floral 3,8Kg..','vistas/img/productos/default/image231.jpeg',1000,66,66.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (53,10,'80165781','Detergente Bolivar Floral 700Gr..','vistas/img/productos/default/image232.jpeg',1000,13.6,14.1,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (54,10,'80187154','Detergente Bolivar Limon 3,8Kg..','vistas/img/productos/default/image233.jpeg',1000,66,66.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (55,10,'80165783','Detergente Bolivar Limon 700 Gr..','vistas/img/productos/default/image234.jpeg',1000,13.6,14.1,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (56,10,'80187156','Detergente Bolivar Matick 700 Gr..','vistas/img/productos/default/image235.jpeg',1000,13.6,14.1,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (57,10,'80179447','Detergente Bolivar Suavizante 700Gr..','vistas/img/productos/default/image236.jpeg',1000,13.6,14.1,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (58,10,'80007299','Detergente Finish Advance 1Kg..','vistas/img/productos/default/image237.jpeg',1000,96.3,96.8,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (59,10,'80195323','Detergente Liquido Skip Doypack 3Lt..','vistas/img/productos/default/image238.jpeg',1000,58.4,58.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (60,10,'80199069','Detergente Omo Antibacterial 2Kg..','vistas/img/productos/default/image239.jpeg',1000,30.1,30.6,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (61,10,'80199068','Detergente Omo Antibacterial 700G..','vistas/img/productos/default/image240.jpeg',1000,14.4,14.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (62,10,'80197400','Detergente Omo Facil Enjuague 2Kg..','vistas/img/productos/default/image241.jpeg',1000,37,37.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (63,10,'80197403','Detergente Omo Limon 2Kg..','vistas/img/productos/default/image242.jpeg',1000,29.4,29.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (64,10,'80187373','Detergente Omo Limon 3.8Kg..','vistas/img/productos/default/image243.jpeg',1000,67.4,67.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (65,10,'80197406','Detergente Omo Matic 2Kg..','vistas/img/productos/default/image244.jpeg',1000,37,37.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (66,10,'80169595','Detergente Omo Matic Multia Liq.Doy 1.4L..','vistas/img/productos/default/image245.jpeg',1000,37,37.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (67,10,'80197404','Detergente Omo Original 2Kg..','vistas/img/productos/default/image246.jpeg',1000,37,37.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (68,10,'80197401','Detergente Omo Piel Sensible 2Kg..','vistas/img/productos/default/image247.jpeg',1000,37,37.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (69,10,'80197402','Detergente Omo Progress + Blancura 2Kg..','vistas/img/productos/default/image248.jpeg',1000,37,37.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (70,10,'80197405','Detergente Omo Toque Suavizante 2Kg..','vistas/img/productos/default/image249.jpeg',1000,37,37.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (71,10,'80198810','Detergente Pol Skip Escencia Comf 3.8Kg..','vistas/img/productos/default/image250.jpeg',1000,79.4,79.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (72,10,'80198809','Detergente Pol Skip Escencia Comfort 2Kg..','vistas/img/productos/default/image251.jpeg',1000,38.6,39.1,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (73,10,'80187350','Detergente Pol Surf Limon Antibac 2Kg..','vistas/img/productos/default/image252.jpeg',1000,24.6,25.1,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (74,10,'80191137','Detergente Polvo Skip Perfect White 2Kg..','vistas/img/productos/default/image253.jpeg',1000,31.4,31.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (75,10,'80132101','Detergente Skip Intelligent 800Gr..','vistas/img/productos/default/image254.jpeg',1000,15.4,15.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (76,10,'80166685','Detergente Skip Liq Perfect Doyp 1.4Lt..','vistas/img/productos/default/image255.jpeg',1000,40.1,40.6,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (77,10,'80172874','Detergente Skip Perfect Results 2Kilogram..','vistas/img/productos/default/image256.jpeg',1000,38.6,39.1,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (78,10,'80157733','Detergente Skip Reg Perfect Result 3.8Kilogram..','vistas/img/productos/default/image257.jpeg',1000,67.4,67.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (79,10,'80193362','Detregente Omo Facil Enjuague 3.8Kg..','vistas/img/productos/default/image258.jpeg',1000,67.4,67.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (80,10,'80193363','Detregente Omo Progress Blancura 3.8Kg..','vistas/img/productos/default/image259.jpeg',1000,67.4,67.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (81,10,'37100095','Esponja Bettanin Esfrebom..','vistas/img/productos/default/image260.jpeg',1000,6.4,6.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (82,10,'80136040','Esponja Limppano Multiuso 4Un..','vistas/img/productos/default/image261.jpeg',1000,6.8,7.3,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (83,10,'71013206','Esponja Scotch Brite Metalica 1X160..','vistas/img/productos/default/image262.jpeg',1000,7.4,7.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (84,10,'80177542','Esponja Scotch Brite Multiuso 4X120..','vistas/img/productos/default/image263.jpeg',1000,6.7,7.2,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (85,10,'80157604','Guante Asatex Cl Grueso Naranja T/L..','vistas/img/productos/default/image264.jpeg',1000,10.7,11.2,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (86,10,'80157601','Guante Asatex Cl Grueso Naranja T/M..','vistas/img/productos/default/image265.jpeg',1000,10.7,11.2,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (87,10,'80157548','Guante Asatex Cl Grueso Naranja T/S..','vistas/img/productos/default/image266.jpeg',1000,10.7,11.2,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (88,10,'80157607','Guante Asatex Cl Household Colores T/M..','vistas/img/productos/default/image267.jpeg',1000,6.4,6.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (89,10,'80157606','Guante Asatex Cl Household Colores T/S..','vistas/img/productos/default/image268.jpeg',1000,6.4,6.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (90,10,'80155185','Guante Ola Corrugado L..','vistas/img/productos/default/image269.jpeg',1000,15.2,15.7,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (91,10,'80155184','Guante Ola Corrugado M..','vistas/img/productos/default/image270.jpeg',1000,16.4,16.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (92,10,'80157599','Guante Ola Corrugado S..','vistas/img/productos/default/anonymous.png',1000,16.4,16.9,0,'2020-09-30 22:16:29');
INSERT INTO `productos` VALUES (93,10,'71033063','Harpic Power Plus Frescura Floral 500Ml..','vistas/img/productos/default/image272.jpeg',1000,28,28.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (94,10,'37020868','Insecticida Sapolio Matacucar/Horm 360Ml..','vistas/img/productos/default/image273.jpeg',1000,20,20.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (95,10,'37020869','Insecticida Sapolio Matamos/Zancud 360Ml..','vistas/img/productos/default/image274.jpeg',1000,20,20.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (96,10,'80161708','Jabon Bolivar Antibacterial 210Gr..','vistas/img/productos/default/image275.jpeg',1000,4.4,4.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (97,10,'37070408','Jabon Bolivar Bebe 210Gr..','vistas/img/productos/default/image276.jpeg',1000,4.4,4.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (98,10,'80180035','Jabon Bolivar Blancos 210Gr..','vistas/img/productos/default/image277.jpeg',1000,4.4,4.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (99,10,'80145619','Jabon Bolivar Floral 210 Gr..','vistas/img/productos/default/image278.jpeg',1000,4.4,4.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (100,10,'37070406','Jabon Bolivar Limon Barra 210Gr..','vistas/img/productos/default/image279.jpeg',1000,4.4,4.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (101,10,'80180122','Lava Vajilla Ola Baby 500Ml..','vistas/img/productos/default/image280.jpeg',1000,18.5,19,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (102,10,'80187369','Lava Vajilla Ola Doypack Limon 1Lt..','vistas/img/productos/default/image281.jpeg',1000,12.5,13,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (103,10,'80200473','Lava Vajillas Ola Limon Antibacte 1050Ml..','vistas/img/productos/default/image282.jpeg',1000,12.4,12.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (104,10,'80195111','Lavandina Mr Cloro 1Lt..','vistas/img/productos/default/image283.jpeg',1000,9,9.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (105,10,'80199303','Lavandina Mr. Flash Polvo 225Gr..','vistas/img/productos/default/image284.jpeg',1000,29.4,29.9,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (106,10,'80143642','Lavandina Ola Clorito Botella 250Ml..','vistas/img/productos/default/image285.jpeg',1000,3,3.5,0,'2020-09-30 21:09:46');
INSERT INTO `productos` VALUES (107,10,'80143640','Lavandina Ola Clorito Desinfectante 1Lt..','vistas/img/productos/default/anonymous.png',1000,8.5,9,0,'2020-09-30 21:53:11');
INSERT INTO `productos` VALUES (108,10,'80198863','Lavandina Ola Clorito Desinfectante 250M..','vistas/img/productos/default/anonymous.png',1000,2,2.5,0,'2020-09-30 21:53:07');
INSERT INTO `productos` VALUES (109,10,'80143639','Lavandina Ola Clorito Desinfectante 5Lt..','vistas/img/productos/default/anonymous.png',1000,44.4,44.9,0,'2020-09-30 21:53:04');
INSERT INTO `productos` VALUES (110,10,'37074617','Lavandina Tigre Sachet 250Cc..','vistas/img/productos/default/anonymous.png',1000,2.6,3.1,0,'2020-09-30 21:53:00');
INSERT INTO `productos` VALUES (111,10,'71018747','Lavavajilla Ola Limon Spring 1050Ml..','vistas/img/productos/default/image286.jpeg',1000,15.4,15.9,0,'2020-09-30 21:50:01');
INSERT INTO `productos` VALUES (112,10,'80132098','Lavavajilla Ola Manzana Spring 1050Ml..','vistas/img/productos/default/image287.jpeg',1000,15,15.5,0,'2020-09-30 21:40:58');
INSERT INTO `productos` VALUES (113,10,'80133468','Lavavajilla Ola Verde 5 Litros..','vistas/img/productos/default/image288.jpeg',1000,66.1,66.6,0,'2020-09-30 21:41:52');
INSERT INTO `productos` VALUES (114,10,'80158057','Lavavajillas Ola Limon 2Lt..','vistas/img/productos/default/image289.jpeg',1000,21.4,21.9,0,'2020-09-30 21:41:58');
INSERT INTO `productos` VALUES (115,10,'80195046','Limp. Bano Cif Gatillo+Doypack..','vistas/img/productos/default/image290.jpeg',1000,18.5,19,0,'2020-09-30 21:44:18');
INSERT INTO `productos` VALUES (116,10,'80165552','Limpia Bano Cif Repues Doyp 450Ml..','vistas/img/productos/default/anonymous.png',1000,9.7,10.2,0,'2020-09-30 21:53:25');
INSERT INTO `productos` VALUES (117,10,'71024415','Limpia Banos Ola Maximus Original 850Ml..','vistas/img/productos/default/image291.jpeg',1000,19.4,19.9,0,'2020-09-30 21:53:39');
INSERT INTO `productos` VALUES (118,10,'71024416','Limpia Banos Recarga Ola Maximus 12X850M..','vistas/img/productos/default/image292.jpeg',1000,15,15.5,0,'2020-09-30 21:53:41');
INSERT INTO `productos` VALUES (119,10,'37065013','Limpia Vidrios Maximus Rec. 2Lt Ola..','vistas/img/productos/default/image293.jpeg',1000,24,24.5,0,'2020-09-30 21:53:45');
INSERT INTO `productos` VALUES (120,10,'71024417','Limpia Vidrios-Mu Ola Maximus Orig 900Ml..','vistas/img/productos/default/image294.jpeg',1000,14.4,14.9,0,'2020-09-30 21:53:50');
INSERT INTO `productos` VALUES (121,10,'71024418','Limpia Vidrios-Mu Ola Maximus Rec 900Ml..','vistas/img/productos/default/image295.jpeg',1000,10,10.5,0,'2020-09-30 21:53:52');
INSERT INTO `productos` VALUES (122,10,'80169903','Limpiador Ola Brillante Piso Flotant 2Lt..','vistas/img/productos/default/image296.jpeg',1000,37,37.5,0,'2020-09-30 21:54:47');
INSERT INTO `productos` VALUES (123,10,'37040092','Limpiador Sapolio Taza Bacte Cloro 500Ml..','vistas/img/productos/default/image297.jpeg',1000,15.3,15.8,0,'2020-09-30 21:54:53');
INSERT INTO `productos` VALUES (124,10,'37041950','Limpiador Sapolio Taza Quitas Nat 500Ml..','vistas/img/productos/default/image298.jpeg',1000,15.3,15.8,0,'2020-09-30 21:55:30');
INSERT INTO `productos` VALUES (125,10,'71012872','Limpiahornos Archer 860Cc Gatillo..','vistas/img/productos/default/image299.jpeg',1000,24.2,24.7,0,'2020-09-30 21:55:36');
INSERT INTO `productos` VALUES (126,10,'37093075','Lustramueble Virginia Lavanda 500Ml..','vistas/img/productos/default/anonymous.png',1000,22.9,23.4,0,'2020-09-30 21:57:29');
INSERT INTO `productos` VALUES (127,10,'37093074','Lustramueble Virginia Tradicional 500Ml..','vistas/img/productos/default/anonymous.png',1000,22.9,23.4,0,'2020-09-30 21:57:30');
INSERT INTO `productos` VALUES (128,10,'71026575','Lustramuebles Ola Brillante Orig. 890Ml..','vistas/img/productos/default/anonymous.png',1000,23.4,23.9,0,'2020-09-30 21:57:31');
INSERT INTO `productos` VALUES (129,10,'71026576','Lustramuebles Ola Brillante Rec 890Ml..','vistas/img/productos/default/anonymous.png',1000,22,22.5,0,'2020-09-30 21:57:32');
INSERT INTO `productos` VALUES (130,10,'44052140','Mondadientes Theoto Imperial 100Un..','vistas/img/productos/default/anonymous.png',1000,2,2.5,0,'2020-09-30 21:57:33');
INSERT INTO `productos` VALUES (131,10,'37040701','Ola Aromatic Bouquete De Flores 4 X 1800..','vistas/img/productos/default/anonymous.png',1000,15.7,16.2,0,'2020-09-30 21:57:34');
INSERT INTO `productos` VALUES (132,10,'80146719','Ola Aromatic Desinf Lavanda Cremo 1800Ml..','vistas/img/productos/default/anonymous.png',1000,19.1,19.6,0,'2020-09-30 21:57:35');
INSERT INTO `productos` VALUES (133,10,'37083028','Ola Aromatic Frescura Marina 4 X 1800 Ml..','vistas/img/productos/default/anonymous.png',1000,15.7,16.2,0,'2020-09-30 21:57:35');
INSERT INTO `productos` VALUES (134,10,'37083029','Ola Aromatic Lavanda 4 X 1800 Ml..','vistas/img/productos/default/anonymous.png',1000,15.7,16.2,0,'2020-09-30 21:57:36');
INSERT INTO `productos` VALUES (135,10,'37083026','Ola Aromatic Pino 4 X 1800 Ml..','vistas/img/productos/default/anonymous.png',1000,15.7,16.2,0,'2020-09-30 21:57:37');
INSERT INTO `productos` VALUES (136,10,'37100748','Pano Ober P/Piso Plomo 60X50Cm..','vistas/img/productos/default/anonymous.png',1000,5.4,5.9,0,'2020-09-30 21:57:38');
INSERT INTO `productos` VALUES (137,10,'80155207','Pano P/Desempolvar Anaranjado..','vistas/img/productos/default/image300.jpeg',1000,5.6,6.1,0,'2020-09-30 21:57:43');
INSERT INTO `productos` VALUES (138,10,'48020876','Pano Scotch Brite Amar Multi 2X50..','vistas/img/productos/default/image301.jpeg',1000,22,22.5,0,'2020-09-30 21:57:48');
INSERT INTO `productos` VALUES (139,10,'37101088','Pano Scotch Brite X3 Absorbente..','vistas/img/productos/default/image302.jpeg',1000,28.9,29.4,0,'2020-09-30 21:57:53');
INSERT INTO `productos` VALUES (140,10,'45020085','Papel Aluminio Diamond 25Sq..','vistas/img/productos/default/image303.jpeg',1000,20.8,21.3,0,'2020-09-30 21:58:00');
INSERT INTO `productos` VALUES (141,10,'45020086','Papel Aluminio Diamond 37,5Sq..','vistas/img/productos/default/image304.jpeg',1000,38.9,39.4,0,'2020-09-30 21:58:07');
INSERT INTO `productos` VALUES (142,10,'80170797','Papel Cocina Seda Rollo 3Un..','vistas/img/productos/default/image305.jpeg',1000,23.4,23.9,0,'2020-09-30 21:58:13');
INSERT INTO `productos` VALUES (143,10,'45020650','Papel Diamond Film 100Ft 30M..','vistas/img/productos/default/image306.jpeg',1000,28.2,28.7,0,'2020-09-30 21:59:10');
INSERT INTO `productos` VALUES (144,10,'80199228','Papel Nacional Desechable Interf 150Un..','vistas/img/productos/default/image307.jpeg',1000,8.4,8.9,0,'2020-09-30 21:59:13');
INSERT INTO `productos` VALUES (145,10,'80152596','Papel Scott D/Cocina Duramax 3D..','vistas/img/productos/default/image308.jpeg',1000,25,25.5,0,'2020-09-30 21:59:19');
INSERT INTO `productos` VALUES (146,10,'46020556','Papel Toa Scott Calorie Absorb 3Un..','vistas/img/productos/default/image309.jpeg',1000,27.6,28.1,0,'2020-09-30 21:59:23');
INSERT INTO `productos` VALUES (147,10,'80153477','Papel Toalla Scott Duramax 3D 2Un..','vistas/img/productos/default/image310.jpeg',1000,33.2,33.7,0,'2020-09-30 21:59:30');
INSERT INTO `productos` VALUES (148,10,'80195158','Papel Toalla Scott Multiuso 3 X80..','vistas/img/productos/default/image311.jpeg',1000,15.5,16,0,'2020-09-30 21:59:33');
INSERT INTO `productos` VALUES (149,10,'80173096','Pastilla Arom Lavanda 120Grx3Un..','vistas/img/productos/default/anonymous.png',1000,12.6,13.1,0,'2020-09-30 22:06:32');
INSERT INTO `productos` VALUES (150,10,'80169342','Pastilla Tanque Igenix Azul 48Grx3Un..','vistas/img/productos/default/anonymous.png',1000,38,38.5,0,'2020-09-30 22:06:33');
INSERT INTO `productos` VALUES (151,10,'80199672','Pediluvio Aluminio Reforzado 40X60 Cm..','vistas/img/productos/default/anonymous.png',1000,198.5,199,0,'2020-09-30 22:06:34');
INSERT INTO `productos` VALUES (152,10,'80186354','Plastico Diamond D/Envoltura 200Ft..','vistas/img/productos/default/anonymous.png',1000,38.4,38.9,0,'2020-09-30 22:06:35');
INSERT INTO `productos` VALUES (153,10,'80165616','Poder Activo Extra Frescura Sensac 3.8Kg..','vistas/img/productos/default/anonymous.png',1000,50.4,50.9,0,'2020-09-30 22:06:36');
INSERT INTO `productos` VALUES (154,10,'80198999','Protector Facial Perceptron 1 Un..','vistas/img/productos/default/anonymous.png',1000,24.4,24.9,0,'2020-09-30 22:06:37');
INSERT INTO `productos` VALUES (155,10,'37040081','Pulidor Sapolio Antibacterial Tubo 450Gr..','vistas/img/productos/default/anonymous.png',1000,8,8.5,0,'2020-09-30 22:06:38');
INSERT INTO `productos` VALUES (156,10,'71034452','Quita Manchas Ola Futuro Oxipoder 550Ml..','vistas/img/productos/default/anonymous.png',1000,19.2,19.7,0,'2020-09-30 22:06:39');
INSERT INTO `productos` VALUES (157,10,'71022180','Quitaman Vanish Crystal White Pote 450Gr..','vistas/img/productos/default/anonymous.png',1000,49.4,49.9,0,'2020-09-30 22:06:41');
INSERT INTO `productos` VALUES (158,10,'71022181','Quitaman Vanish Poder O2 Pote 450Gr..','vistas/img/productos/default/anonymous.png',1000,49.4,49.9,0,'2020-09-30 22:06:58');
INSERT INTO `productos` VALUES (159,10,'80159310','Quitamancha Vanish Multius Rosa Pol 900G..','vistas/img/productos/default/image312.jpeg',1000,90.4,90.9,0,'2020-09-30 22:07:07');
INSERT INTO `productos` VALUES (160,10,'80133924','Quitamanchas Ola Rec 1Lt..','vistas/img/productos/default/image313.jpeg',1000,28.4,28.9,0,'2020-09-30 22:07:24');
INSERT INTO `productos` VALUES (161,10,'80176060','Quitamanchas Vanish Power Gel 201Gr..','vistas/img/productos/default/image314.jpeg',1000,49.2,49.7,0,'2020-09-30 22:07:30');
INSERT INTO `productos` VALUES (162,10,'80188935','Quitamanchas Vanish Rosa Doy Pack 650Ml..','vistas/img/productos/default/image315.jpeg',1000,26.6,27.1,0,'2020-09-30 22:07:34');
INSERT INTO `productos` VALUES (163,10,'80197737','Saca Grasa Cif Gatillo+Doypack..','vistas/img/productos/default/anonymous.png',1000,18.6,19.1,0,'2020-09-30 22:08:18');
INSERT INTO `productos` VALUES (164,10,'80187844','Sal Finish Doy Pack 1Kg..','vistas/img/productos/default/image316.jpeg',1000,68.9,69.4,0,'2020-09-30 22:08:24');
INSERT INTO `productos` VALUES (165,10,'80183495','Servilleta Perlita Azul 500 Un..','vistas/img/productos/default/image317.jpeg',1000,12.4,12.9,0,'2020-09-30 22:08:42');
INSERT INTO `productos` VALUES (166,10,'46030126','Servilleta Elite 100 Unid..','vistas/img/productos/default/image318.jpeg',1000,10.4,10.9,0,'2020-09-30 22:08:48');
INSERT INTO `productos` VALUES (167,10,'80184770','Servilleta Elite Dobladas En 4 50Un..','vistas/img/productos/default/image319.jpeg',1000,1.7,2.2,0,'2020-09-30 22:08:53');
INSERT INTO `productos` VALUES (168,10,'80007371','Servilleta Elite Gold Blanca 35Un..','vistas/img/productos/default/image320.jpeg',1000,8.9,9.4,0,'2020-09-30 22:08:58');
INSERT INTO `productos` VALUES (169,10,'80196214','Servilleta Hogar Verde 500Un..','vistas/img/productos/default/image321.jpeg',1000,10,10.5,0,'2020-09-30 22:09:07');
INSERT INTO `productos` VALUES (170,10,'80194950','Servilleta Nacional Celeste 500Un..','vistas/img/productos/default/image322.jpeg',1000,11.4,11.9,0,'2020-09-30 22:09:12');
INSERT INTO `productos` VALUES (171,10,'46030645','Servilleta Scott Blanca 100Un..','vistas/img/productos/default/image323.jpeg',1000,3,3.5,0,'2020-09-30 22:09:16');
INSERT INTO `productos` VALUES (172,10,'80195164','Servilleta Scott Super Absorbentes X500..','vistas/img/productos/default/image324.jpeg',1000,10.3,10.8,0,'2020-09-30 22:09:20');
INSERT INTO `productos` VALUES (173,10,'80170796','Servilleta Seda 500Un..','vistas/img/productos/default/image325.jpeg',1000,19.4,19.9,0,'2020-09-30 22:09:24');
INSERT INTO `productos` VALUES (174,10,'80195130','Suavisante Ola Libre Enjuague 1.7Lt..','vistas/img/productos/default/image326.jpeg',1000,28.9,29.4,0,'2020-09-30 22:10:03');
INSERT INTO `productos` VALUES (175,10,'80195131','Suavisante Ola Libre Enjuague 3.7Lt..','vistas/img/productos/default/anonymous.png',1000,52,52.5,0,'2020-09-30 22:11:56');
INSERT INTO `productos` VALUES (176,10,'80141226','Suavizante Downy Floral Lib.Enju 850 Ml..','vistas/img/productos/default/image327.jpeg',1000,22.3,22.8,0,'2020-09-30 22:12:00');
INSERT INTO `productos` VALUES (177,10,'80159195','Suavizante Amor Frescura Natural 1950Ml..','vistas/img/productos/default/image328.jpeg',1000,23.9,24.4,0,'2020-09-30 22:12:03');
INSERT INTO `productos` VALUES (178,10,'80168666','Suavizante Amor Lavanda 1950Ml..','vistas/img/productos/default/image329.jpeg',1000,23.9,24.4,0,'2020-09-30 22:12:07');
INSERT INTO `productos` VALUES (179,10,'80187648','Suavizante Downy Adorable 2.8Lt..','vistas/img/productos/default/image330.jpeg',1000,78.4,78.9,0,'2020-09-30 22:12:12');
INSERT INTO `productos` VALUES (180,10,'80188804','Suavizante Downy Floral Concent 2800 Ml..','vistas/img/productos/default/image331.jpeg',1000,78.4,78.9,0,'2020-09-30 22:12:15');
INSERT INTO `productos` VALUES (181,10,'80188800','Suavizante Downy Nat Beauty 750 Ml..','vistas/img/productos/default/image332.jpeg',1000,22.3,22.8,0,'2020-09-30 22:12:24');
INSERT INTO `productos` VALUES (182,10,'80188801','Suavizante Downy Passion 750 Ml..','vistas/img/productos/default/image333.jpeg',1000,22.3,22.8,0,'2020-09-30 22:12:28');
INSERT INTO `productos` VALUES (183,10,'80174299','Suavizante Ola Brisa Celestial 1.8Lt..','vistas/img/productos/default/image334.jpeg',1000,28.9,29.4,0,'2020-09-30 22:13:08');
INSERT INTO `productos` VALUES (184,10,'80171986','Suavizante Ola Brisa Celestial 3.8Lt..','vistas/img/productos/default/image335.jpeg',1000,52,52.5,0,'2020-09-30 22:13:12');
INSERT INTO `productos` VALUES (185,10,'80174557','Suavizante Ola Sensaciones 1.8L..','vistas/img/productos/default/image336.jpeg',1000,28.4,28.9,0,'2020-09-30 22:13:16');
INSERT INTO `productos` VALUES (186,10,'80171990','Suavizante Ola Sensaciones 3.8Lt..','vistas/img/productos/default/image337.jpeg',1000,52,52.5,0,'2020-09-30 22:13:21');
INSERT INTO `productos` VALUES (187,10,'80174556','Suavizante Ola Suenos De Bebe 1.8L..','vistas/img/productos/default/image338.jpeg',1000,28.9,29.4,0,'2020-09-30 22:13:25');
INSERT INTO `productos` VALUES (188,10,'80171987','Suavizante Ola Suenos De Bebe 3.8Lt..','vistas/img/productos/default/image339.jpeg',1000,52,52.5,0,'2020-09-30 22:13:29');
INSERT INTO `productos` VALUES (189,10,'80194953','Toalla De Cocina Hogar 2Un..','vistas/img/productos/default/image340.jpeg',1000,11,11.5,0,'2020-09-30 22:13:34');
INSERT INTO `productos` VALUES (190,10,'80194952','Toalla De Cocina Nacional 2Un..','vistas/img/productos/default/image341.jpeg',1000,11.4,11.9,0,'2020-09-30 22:14:04');
INSERT INTO `productos` VALUES (191,10,'80184015','Tripack Ola Aromatic Past Tanque 120Kg..','vistas/img/productos/default/image342.jpeg',1000,28,28.5,0,'2020-09-30 22:14:10');
INSERT INTO `productos` VALUES (192,10,'80152540','Viruta Virulim Extra Gruesa 100Gr..','vistas/img/productos/default/image343.jpeg',1000,11.3,11.8,0,'2020-09-30 22:14:15');
INSERT INTO `productos` VALUES (193,10,'80152541','Viruta Virulim Gruesa 100Gr..','vistas/img/productos/default/image344.jpeg',1000,11.3,11.8,0,'2020-09-30 22:14:19');
INSERT INTO `productos` VALUES (194,10,'80152542','Viruta Virulin Intermedia 100Gr..','vistas/img/productos/default/image345.jpeg',1000,11.3,11.8,0,'2020-09-30 22:14:23');

#
# Source for table usuarios
#

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

#
# Dumping data for table usuarios
#

INSERT INTO `usuarios` VALUES (1,'Admin','admin','$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG','Administrador','vistas/img/usuarios/admin/default.jpg',1,'2020-09-30 22:27:21','2020-09-30 23:27:21');

#
# Source for table ventas
#

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

#
# Dumping data for table ventas
#


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
