-- Crea la base de datos
CREATE DATABASE clinica;

-- Selecciona la base de datos
\c clinica

-- Crea la tabla Paciente
CREATE TABLE Paciente (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR,
  fecha_nacimiento DATE,
  genero VARCHAR,
  direccion VARCHAR,
  doctora_id INTEGER,
  correo_electronico VARCHAR,
  numero_telefono VARCHAR,
  fecha_ingreso DATE,
  fecha_salida DATE
);

-- Crea la tabla Doctora
CREATE TABLE Doctora (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR,
  especialidad VARCHAR,
  telefono VARCHAR,
  correo_electronico VARCHAR,
  licencia_medica VARCHAR,
  hora_inicio TIME,
  hora_fin TIME,
  foto BYTEA,
  fecha_inicio DATE,
  fecha_termino DATE,
  es_administradora BOOLEAN
);

-- Crea la tabla HistoriaClinica
CREATE TABLE HistoriaClinica (
  id SERIAL PRIMARY KEY,
  fecha DATE,
  sintomas VARCHAR,
  diagnostico VARCHAR,
  tratamiento VARCHAR,
  paciente_id INTEGER,
  doctora_id INTEGER,
  notas VARCHAR,
  examenes_medicos VARCHAR,
  alergias VARCHAR,
  medicamentos VARCHAR,
  antecedentes_familiares VARCHAR
);

-- Crea la tabla Cita
CREATE TABLE Cita (
  id SERIAL PRIMARY KEY,
  fecha_hora TIMESTAMP,
  paciente_id INTEGER,
  doctora_id INTEGER,
  duracion_minutes INTEGER,
  notas VARCHAR
);

-- Agrega las claves foráneas
ALTER TABLE Paciente ADD CONSTRAINT fk_doctora_id FOREIGN KEY (doctora_id) REFERENCES Doctora (id);

ALTER TABLE HistoriaClinica ADD CONSTRAINT fk_paciente_id FOREIGN KEY (paciente_id) REFERENCES Paciente (id);

ALTER TABLE HistoriaClinica ADD CONSTRAINT fk_doctora_id FOREIGN KEY (doctora_id) REFERENCES Doctora (id);

ALTER TABLE Cita ADD CONSTRAINT fk_paciente_id FOREIGN KEY (paciente_id) REFERENCES Paciente (id);

ALTER TABLE Cita ADD CONSTRAINT fk_doctora_id FOREIGN KEY (doctora_id) REFERENCES Doctora (id);
