CREATE DATABASE ConnectPlus; 

CREATE TABLE TipoContato (
    IdTipoContato UNIQUEIDENTIFIER PRIMARY KEY,
    Titulo VARCHAR(100) NOT NULL
);

CREATE TABLE Contato (
    IdContato UNIQUEIDENTIFIER PRIMARY KEY,
    Nome VARCHAR(150) NOT NULL,
    FormaContato VARCHAR(150) NOT NULL,
    Imagem VARCHAR(255),
    IdTipoContato UNIQUEIDENTIFIER,

    FOREIGN KEY (IdTipoContato)
    REFERENCES TipoContato(IdTipoContato)
);

SELECT * FROM Contato;