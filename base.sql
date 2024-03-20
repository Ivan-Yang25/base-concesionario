CREATE DATABASE IF NOT EXISTS concesionario;
USE concesionario;


CREATE TABLE autos(
id              INT(10) AUTO_INCREMENT NOT NULL,
modelo          VARCHAR(100),
marca           VARCHAR(50),
precio          INT(20) NOT NULL,
stock           INT(255) NOT NULL,
CONSTRAINT pk_autos PRIMARY KEY(id)
)ENGINE=InnoDB;


CREATE TABLE grupos(
id              INT(10) AUTO_INCREMENT NOT NULL,
nombre          VARCHAR(200),
ciudad          VARCHAR(100),
CONSTRAINT pk_grupos PRIMARY KEY(id)
)ENGINE=InnoDB;



CREATE TABLE vendedores(
id              INT(10) AUTO_INCREMENT NOT NULL,
grupo_id        INT(10) NOT NULL,
jefe            INT(10),
nombre          VARCHAR(100),
apellidos       VARCHAR(100),
cargo           VARCHAR(100),
fecha_alta      DATE,
sueldo          FLOAT(20,2),
comision        FLOAT(10,2),
CONSTRAINT pk_vendedores PRIMARY KEY(id),
CONSTRAINT fk_vendedor_grupo FOREIGN KEY(grupo_id) REFERENCES grupos(id),
CONSTRAINT fk_vendedor_jefe FOREIGN KEY(jefe) REFERENCES vendedores(id)
)ENGINE=InnoDB;


CREATE TABLE clientes(
id              INT(10) AUTO_INCREMENT NOT NULL,
vendedor_id     INT(10) NOT NULL,
nombre          VARCHAR(255),
ciudad          VARCHAR(100),
gastado         FLOAT(50,2),
fecha           DATE,
CONSTRAINT pk_clientes PRIMARY KEY(id),
CONSTRAINT fk_cliente_vendedor FOREIGN KEY(vendedor_id) REFERENCES vendedores(id)
)ENGINE=InnoDB;


CREATE TABLE encargos(
id              INT(10) AUTO_INCREMENT NOT NULL,
cliente_id      INT(10) NOT NULL,
autos_id        INT(10) NOT NULL,
cantidad        INT(255),
fecha           DATE,
CONSTRAINT pk_encargos PRIMARY KEY(id),
CONSTRAINT fk_encargos_cliente FOREIGN KEY(cliente_id) REFERENCES clientes(id),
CONSTRAINT fk_encargos_autos FOREIGN KEY(autos_id) REFERENCES autos(id)
)ENGINE=InnoDB;


#RELLENAR LA BASE DE DATOS CON INFORMACION - INSERTS#


#AUTOS

INSERT INTO autos VALUES(NULL, 'Hyundai Accent', 'Hyundai', 10000, 13);
INSERT INTO autos VALUES(NULL, 'Honda Civic', 'Honda', 12000, 10);
INSERT INTO autos VALUES(NULL, 'Suzuki Swift', 'Suzuki', 8000, 8);
INSERT INTO autos VALUES(NULL, 'Ford Fiesta', 'Ford', 9000, 5);
INSERT INTO autos VALUES(NULL, 'Fiat Fiorino', 'Fiat', 6000, 23);

#GRUPOS

INSERT INTO grupos VALUES(NULL, 'Vendedores A', 'Montevideo');
INSERT INTO grupos VALUES(NULL, 'Vendedores B', 'San jose');
INSERT INTO grupos VALUES(NULL, 'Vendedores C', 'Artigas');
INSERT INTO grupos VALUES(NULL, 'Vendedores D', 'Melo');
INSERT INTO grupos VALUES(NULL, 'Vendedores E', 'Atlantida');


#VENDEDORES

INSERT INTO vendedores VALUES(NULL, 1, NULL, 'Ivan', 'Burgio', 'Vendedor JR', CURDATE(), 30000, 4);
INSERT INTO vendedores VALUES(NULL, 2, NULL, 'Nahuel', 'Sueiro', 'Vendedor JR', CURDATE(), 25000, 3);
INSERT INTO vendedores VALUES(NULL, 2, NULL, 'Lucas', 'Viera', 'Vendedor SSR', CURDATE(), 35000, 7);
INSERT INTO vendedores VALUES(NULL, 1, NULL, 'Santiago', 'Cagnone', 'Vendedor TR', CURDATE(), 20000, 1);
INSERT INTO vendedores VALUES(NULL, 3, NULL, 'Bruno', 'Mendez', 'Vendedor JR', CURDATE(), 30000, 4);
INSERT INTO vendedores VALUES(NULL, 3, NULL, 'Emanuel', 'Magallan', 'Vendedor SR', CURDATE(), 50000, 10);
INSERT INTO vendedores VALUES(NULL, 4, NULL, 'David', 'Wieber', 'Vendedor JR', CURDATE(), 30000, 4);
INSERT INTO vendedores VALUES(NULL, 5, NULL, 'Ahilen', 'Guillen', 'Vendedor SSR', CURDATE(), 35000, 7);
INSERT INTO vendedores VALUES(NULL, 4, NULL, 'Camila', 'Rodriguez', 'Vendedor TR', CURDATE(), 20000, 1);
INSERT INTO vendedores VALUES(NULL, 5, NULL, 'Melanie', 'Nalerio', 'Vendedor JR', CURDATE(), 30000, 4);
INSERT INTO vendedores VALUES(NULL, 1, NULL, 'Leandro', 'Solla', 'Vendedor SR', CURDATE(), 50000, 10);
INSERT INTO vendedores VALUES(NULL, 3, NULL, 'Facundo', 'Artigas', 'Vendedor JR', CURDATE(), 30000, 4);
INSERT INTO vendedores VALUES(NULL, 2, NULL, 'Matias', 'Gonzalez', 'Vendedor JR', CURDATE(), 30000, 4);


#CLIENTES

INSERT INTO clientes VALUES(NULL, 7, 'Mathias Camia', 'Artigas', 43000, CURDATE());
INSERT INTO clientes VALUES(NULL, 7, 'Ezequiel Fabri', 'Artigas', 32000, CURDATE());
INSERT INTO clientes VALUES(NULL, 7, 'Santiago  Machin', 'Artigas', 13000, CURDATE());
INSERT INTO clientes VALUES(NULL, 7, 'Florencia Bernachea', 'Artigas', 15000, CURDATE());
INSERT INTO clientes VALUES(NULL, 2, 'Ayelen Rodriguez', 'Montevideo', 20000, CURDATE());
INSERT INTO clientes VALUES(NULL, 2, 'Dahiana Romero', 'Montevideo', 50000, CURDATE());
INSERT INTO clientes VALUES(NULL, 8, 'Kun Aguero', 'Atlantida', 100000, CURDATE());
INSERT INTO clientes VALUES(NULL, 12, 'Florencia Paz', 'Atlantida', 10000, CURDATE());
INSERT INTO clientes VALUES(NULL, 4, 'Jose Varela', 'San jose', 200000, CURDATE());


#ENCARGOS

INSERT INTO encargos VALUES(NULL, 4, 3, 1, CURDATE());
INSERT INTO encargos VALUES(NULL, 2, 4, 2, CURDATE());
INSERT INTO encargos VALUES(NULL, 5, 1, 1, CURDATE());
