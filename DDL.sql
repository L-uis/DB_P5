-- Link to code: https://prod.liveshare.vsengsaas.visualstudio.com/join?5D8A3CCA13449F42F02EDD1133A5627AB931

-- Museo DB
create database  Museo;

-- Tables
create table Museo(
    id_museo int NOT NULL PRIMARY KEY,
    nombre varchar(50) NOT NULL,
    calle varchar(59),
    numero int(1000),
    cp int (50),
    estado varchar(100)
)

create table Coleccion(
    nombre_coleccion varchar(50) NOT NULL,
    descripcion varchar(50),
    tipo varchar(50)
    contacto int(15)
)

create table Obra(
    id_obra int NOT NULL PRIMARY KEY,
    -- Falta FK de artista
    descripcion varchar(50),
    titulo varchar(50),
    tipo varchar(50),
    -- Falta FK de museo
    -- Falta FK de coleccion
)

create table Artista(
    nombre varchar(50) varchar(50) NOT NULL,
    paterno varchar(50) NOT NULL,
    materno varchar(50) NOT NULL,
    nacimiento date, 
    defuncion date,
    pais varchar(50),
    epoca date, 
    descripcion varchar(50).
    PRIMARY KEY (nombre, paterno, materno)
)

create table Escultura(
    estilo varchar(50) NOT NULL PRIMARY KEY,
    -- Falta FK de Obra
    dimensiones varchar(50),
    peso int(50)
)

create table Pintura(
    estilo varchar(50) NOT NULL PRIMARY KEY,
    -- Falta FK de Obra
    genero varchar(50)
)

create table Miscelanea(
    nombre varchar(50) NOT NULL,
    -- Falta FK de Obra
    pais varchar(50),
    formato varchar(50)
)

create table Prestada(
    -- Falta FK de obra
    prestador varchar(50),
    fecha_pres date,
    fecha_dev date
)

create table Permanente(
    --Falta FK
    costo money,
    fecha_adq date
)

-- Cellphone Tables

create table Telefono_Museo(
    id_museo int NOT NULL,
    telefono_museo varchar(50) NOT NULL,
    PRIMARY KEY (id_museo, telefono_museo),
    CONSTRAINT fk_telefono_museo FOREIGN KEY (id_museo) REFERENCES Museo(id_museo) 
)

create table Telefono_Coleccion(
    nombre int NOT NULL,
    telefono_coleccion varchar(50) NOT NULL,
    PRIMARY KEY (nombre, telefono_coleccion),
    CONSTRAINT fk_telefono_coleecion FOREIGN KEY (nombre) REFERENCES Coleccion(nombre)
)

