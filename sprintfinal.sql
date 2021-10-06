-- insertar usuarios

insert into usuario (id_usuario, nombre_usuario, apellido_usuario, edad_usuario, correo_electronico, n_veces_utiliza_app)  values  
  (1,'Carl', 'Figuroa', 44 ,'carl@gmail.com', 3),  
  (2,'Manuel', 'Morgado', 54 ,'manuel@gmail.com', 6),
  (3,'Minerva', 'Mcgonnagal', 60 ,'minne@gmail.com', 4),  
  (4,'monserrat', 'Mannus', 70 ,'monse@gmail.com', 2),     
  (5,'Maricarmen', 'Iturra', 21 ,'mari@gmail.com', 2);

-- insertar operario
INSERT INTO operario (nombre_operario, apellido_operario, edad_operario, correo_electronico, n_soportes) 
 VALUES  ('Elias', 'Cortes', 24 ,'elias@gmail.com', 2),  
 ('Maria', 'Teruel','29','maria@gmail.com', 4), 
 ('Alfredo', 'Lamadrid', 26 , 'alfredo@gmail.com', 3),  
 ('Isabella', 'Jordan', 32 ,'isabella@gmail.com', 2),  
 ('Tomas', 'valencia', 30 , 'Tomas@gmail.com' , 6 );

 
 
 
 -- operaciones con mejor evaluacion 
 select * FROM soporte ORDER BY nota DESC
 LIMIT 3;
 
-- operaciones con menor evaluacion
SELECT * FROM soporte ORDER BY nota ASC
 LIMIT 3;
 
-- operario que mas veces ha realizado mas soportes
select id_operario,count(*) from soporte
 group by id_operario
 order by count(id_operario) desc
 limit 1;
-- id_operario 5 ha realizado 6 soportes


-- Selecciona al cliente que menos ha utilizado la app
-- id_cliente 4	2 
-- id_cliente 5	2
select id_cliente,count(*) from soporte
 group by id_cliente
 order by count(id_cliente) asc;
 

-- Agregar 10 años a los 3 primeros usuarios
UPDATE usuario SET edad_usuario = edad_usuario+10 where id_usuario=1;	
UPDATE usuario SET edad_usuario = edad_usuario+10 where id_usuario=2;	
UPDATE usuario SET edad_usuario = edad_usuario+10 where id_usuario=3;	

-- Renombrar las columnas correo_Electronico por email
ALTER TABLE usuario CHANGE correo_electronico email VARCHAR(20);
ALTER TABLE operario CHANGE correo_electronico email VARCHAR(20);	

-- Selecciona a los operarios mayores de 20 años
select nombre_operario, edad_operario from  operario where edad_operario > 20;	