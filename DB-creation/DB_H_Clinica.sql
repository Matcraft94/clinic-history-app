CREATE TABLE "Paciente" (
  "id" int PRIMARY KEY,
  "nombre" varchar,
  "fecha_nacimiento" date,
  "genero" varchar,
  "direccion" varchar,
  "doctora_id" int,
  "correo_electronico" varchar,
  "numero_telefono" varchar,
  "fecha_ingreso" date,
  "fecha_salida" date
);

CREATE TABLE "Doctora" (
  "id" int PRIMARY KEY,
  "nombre" varchar,
  "especialidad" varchar,
  "telefono" varchar,
  "correo_electronico" varchar,
  "licencia_medica" varchar,
  "hora_inicio" time,
  "hora_fin" time,
  "foto" blob,
  "fecha_inicio" date,
  "fecha_termino" date,
  "es_administradora" bool
);

CREATE TABLE "HistoriaClinica" (
  "id" int PRIMARY KEY,
  "fecha" date,
  "sintomas" varchar,
  "diagnostico" varchar,
  "tratamiento" varchar,
  "paciente_id" int,
  "doctora_id" int,
  "notas" varchar,
  "examenes_medicos" varchar,
  "alergias" varchar,
  "medicamentos" varchar,
  "antecedentes_familiares" varchar
);

CREATE TABLE "Cita" (
  "id" int PRIMARY KEY,
  "fecha_hora" datetime,
  "paciente_id" int,
  "doctora_id" int,
  "duracion_minutes" int,
  "notas" varchar
);

ALTER TABLE "Paciente" ADD FOREIGN KEY ("doctora_id") REFERENCES "Doctora" ("id");

ALTER TABLE "HistoriaClinica" ADD FOREIGN KEY ("paciente_id") REFERENCES "Paciente" ("id");

ALTER TABLE "HistoriaClinica" ADD FOREIGN KEY ("doctora_id") REFERENCES "Doctora" ("id");

ALTER TABLE "Cita" ADD FOREIGN KEY ("paciente_id") REFERENCES "Paciente" ("id");

ALTER TABLE "Cita" ADD FOREIGN KEY ("doctora_id") REFERENCES "Doctora" ("id");
