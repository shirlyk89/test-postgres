create database consesionario;

create schema consesionario;

create type estado as enum('nuevo', 'usado');
create type tipo_servicio as enum('reparacion', 'mantenimiento');

create table if not exists inventario(
	id int primary key not null,
	marca varchar(100) not null, 
	modelo varchar(100) not null,
	año date not null,
	precio decimal(10,2) not null,
	type estado not null
);



create table if not exists clientes(
id_cliente int primary key not null,
nombre_completo varchar(100) not null,
telefono varchar(12) not null,
email varchar(30) not null
);


create table if not exists empleados(
id_empleado int primary key not null,
nombre varchar(50) not null,
telefono varchar(12) not null,
rol varchar(50) not null, 
fecha_contratacion date
);

create table if not exists historial_venta(
id_venta int not null primary key,
fecha date not null,
valor decimal(10,2),
id_cliente int not null,
id_vehiculo int not null,
foreign key (id_cliente) references clientes(id_cliente),
foreign key (id_vehiculo) references inventario(id));



create table if not exists proveedores(
id_p int primary key not null,
empresa varchar(40) not null
);


create table if not exists historial_servicios(
codigo int primary key not null,
id_vehiculo int not null,
id_empleado int not null,
id_proveedor int not null,
fecha date not null,
type tipo_servcio,
foreign key (id_vehiculo) references inventario(id),
foreign key (id_empleado) references empleados(id_empleado),
foreign key(id_proveedor) refereces proveedores(id_p));





create table if not exists departamento_ventas(
id_dep int primary key not null,
id_empleado int not null,
comisiones decimal(10,2) not null,
num_ventas int not null,
fecha date,
foreign key(id_empleado) references empleados(id_empleado));



create table if not exists departamaneto_servicio(
id_deps int primary key not null,
id_empleado int not null,
codigo_servicio int not null,
horarios_trabajo time,
foreign key(id_empleado) references empleados(id_empleado),
foreign key(codigo_servicio) references historial_servicios(codigo));



create table if not exists cliente_potencial(
id_usuario int primary key not null,
nombre varchar(60) not null,
email varchar(50) not null,
telefono varchar(12) not null,
id_vehiculo int not null,
foreign key(id_vehiculo) references inventario(id)
);


-- DATOS


insert into inventario values(2, 'Mazda', 'KW2', '2000-07-04', 850000, 'nuevo'),
(3, 'Mazda', 'KW2', '2000-07-04', 850000, 'nuevo'),
(4, 'kia', 'Pikanto', '2020-12-20', 980000, 'nuevo'),
(5, 'tesla', 'V8', '2025-05-16', 150000, 'usado'),
(6, 'cheverlote', 'h20', '2014-08-30', 360000, 'usado'),
(7, 'Ferrari', 'KV9', '1900-01-22', 850000, 'usado')
;

insert into clientes values(1, 'Marta celilia luz', '31205554', 'Martica@gmail.com'),
(2, 'Juan Carlos vargaz', '320145588', 'Juanca2@gmail.com'),
(3, 'Pedro jose de la cruz', '35687123', 'Pedo@gmail.com'),
(4, 'Manolo de la', '31045554', 'manu@gmail.com'),
(5, 'Marcos Jose lopes', '310445555', 'Marcojo@gmail.com'),
(6, 'Maria josefina pedraza', '31004463', 'Mariajo@gmail.com'),
(7, 'Andres torres', '3144100', 'Andre@gmail.com')
;

insert into empleados values(1, 'Marco tulio ruiz', '31204566', 'Vendedor', '2020-05-13'),
(2, 'Jose luis Vangegaz', '314502222', 'Servicio al cliente', '2023-09-14'),
(3, 'Manuel eduardo perez', '31450278', 'vendedor', '2025-11-10'),
(4, 'Camila vera', '3203333', 'mecanica', '2020-05-19'),
(5, 'Felipe pepile', '3250011', 'mecanico', '2022-08-02'),
(6, 'Brayan dias', '32001222', 'vendedor', '2020-05-01'),
(7, 'victor', '314502224', 'vendedor', '2021-09-22');

insert into cliente_potencial values(1, 'Paola Duran', 'Paoloita@gmail.com', '3220555', 1),
(2, 'Veronica paz', 'Veropaz@gmail.com', '3220000', 2),
(3, 'monica florez', 'monif@gmail.com', '3220007', 3),
(4, 'Geronimo pasante', 'Gerom@gmail.com', '3220005', 4);


insert into historial_servicios values(1, 1, 2, '2020-08-04', 'mantenimiento'),
(2, 3, 5, '2021-07-04', 'reparacion'),
(3, 4, 7, '2022-01-04', 'mantenimiento');



insert into proveedores values(1, 'balvunas'),
(2, 'toyota reparaciones'),
(3, 'La 200'),
(4, 'Taller nissan'),
(5, 'Todo lujos');


insert into historial_venta values(1, '2020-04-05', 400000, 1),
(2, '2022-04-12', 400000, 2),
(3, '2022-04-10', 500000, 3),
(4, '2020-12-03', 800000, 4),
(5, 500000, 2, 1, '2022-05-05'),
(6, 850000, 4, 2, '2022-05-05'),
(7, 360000, 4, 6, '2022-05-05'),
(8, 360000, 2, 6, '2022-05-05');


select * from historial_venta hv ;






insert into departamaneto_servicio values(2, 2, 2, '12:00'),
(3, 3, 3, '08:00'),
(1, 1, 1 '07:00');


select * from departamaneto_servicio ds ;



insert into departamento_ventas values(1, 1, 200000, 5);
(2, 2, 500000, 6);
(3, 3, 100000, 1);
(4, 4, 300000, 3);




-- consultas sql

-- CONSULTA 1
select marca, modelo, precio from inventario ;

-- CONSULTA 2

select c.id_cliente, hv.fecha, hv.id_vehiculo, hv.fecha from clientes c inner join historial_venta hv on c.id_cliente = hv.id_cliente 
where hv.fecha between '2022-04-10' and '2022-12-24';

-- CONSULTA 3

select i.id, hs.type as tipo_servicio, hs.id_empleado  from inventario i inner join historial_servicios hs on i.id = hs.id_vehiculo ;

-- CONSULTA 4

select p.id_p, hs.type as tipo_servicio from proveedores p inner join historial_servicios hs on p.id_p = hs.id_proveedor where hs.type = 'mantenimiento';

-- CONSULTA 5

select e.id_empleado, sum(dv.comisiones) as total_comisiones_empleado from departamento_ventas dv inner join empleados e on e.id_empleado = dv.id_empleado
where dv.fecha between '2022-04-10' and '2022-04-28' group by e.id_empleado;

-- CONSULTA 6

select hs.id_empleado, v.id as id_vehiculo, v.marca, v.modelo, v.año as anion from historial_servicios hs inner join inventario v 
on hs.id_vehiculo = v.id where hs.id_empleado = 2;

-- CONSULTA 7

select cp.id_usuario, cp.nombre, cp.telefono, v.id, v.marca, v.modelo  from cliente_potencial cp inner join inventario v on v.id = cp.id_vehiculo ;


-- CONSULTA 8

select e.id_empleado, e.rol, ds.horarios_trabajo from departamaneto_servicio ds inner join empleados e on ds.id_empleado = e.id_empleado  ;

-- CONSULTA 9

select v.id, v.marca, hv.valor from historial_venta hv inner join inventario v on v.id = hv.id_vehiculo where hv.valor between 200000 and 500000;

-- CONSULTA 10

select hv.id_cliente, count(hv.id_cliente) as total_veces_de_compra  from historial_venta hv
group by hv.id_cliente having count(hv.id_cliente) > 1 ;






