CREATE DATABASE;

CREATE TABLE marcas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR (25)
)

CREATE TABLE colores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    color VARCHAR(25)
)

CREATE TABLE tipo_vehiculos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo_vehiculo VARCHAR(25)
    marcas_id INT
)

CREATE TABLE vehiculos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    modelo VARCHAR (15),
    placa VARCHAR(15) UNIQUE,
    color_id INT,
    tipo_vehiculo_id INT
)

INSERT INTO vehiculos (modelo, placa) VALUES ('2023', 'MAZ367');



ALTER TABLE vehiculos ADD FOREIGN KEY (color_id) REFERENCES colores(id);

ALTER TABLE vehiculos ADD COLUMN color_id INT;
ALTER TABLE vehiculos ADD COLUMN tipo_vehiculo_id INT;

ALTER TABLE  vehiculos ADD FOREIGN KEY (tipo_vehiculo_id) REFERENCES  tipo_vehiculos(id)

ALTER TABLE tipo_vehiculos ADD FOREIGN KEY (marcas_id) REFERENCES marcas(id);

ALTER TABLE tipo_vehiculos ADD COLUMN marcas_id INT;

SELECT * FROM vehiculos INNER JOIN colores WHERE vehiculos_id = color_id
