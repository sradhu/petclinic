ALTER DATABASE petstore_dev OWNER TO petstore_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO petstore_user;


CREATE TABLE IF NOT EXISTS vets (
  id INT PRIMARY KEY NOT NULL,
  first_name VARCHAR(30),
  last_name VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS specialties (
  id INT PRIMARY KEY NOT NULL,
  name VARCHAR(80)
);

CREATE TABLE IF NOT EXISTS vet_specialties (
  vet_id INT PRIMARY KEY NOT NULL,
  specialty_id INT NOT NULL,
  FOREIGN KEY (vet_id) REFERENCES vets(id),
  FOREIGN KEY (specialty_id) REFERENCES specialties(id),
  UNIQUE (vet_id,specialty_id)
);

CREATE TABLE IF NOT EXISTS types (
  id INT PRIMARY KEY NOT NULL,
  name VARCHAR(80)
);

CREATE TABLE IF NOT EXISTS owners (
  id INT PRIMARY KEY NOT NULL,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  address VARCHAR(255),
  city VARCHAR(80),
  telephone VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS pets (
  id INT PRIMARY KEY NOT NULL,
  name VARCHAR(30),
  birth_date DATE,
  type_id INT NOT NULL,
  owner_id INT NOT NULL,
  FOREIGN KEY (owner_id) REFERENCES owners(id),
  FOREIGN KEY (type_id) REFERENCES types(id)
);

CREATE TABLE IF NOT EXISTS visits (
  id INT PRIMARY KEY NOT NULL,
  pet_id INT NOT NULL,
  visit_date DATE,
  description VARCHAR(255),
  FOREIGN KEY (pet_id) REFERENCES pets(id)
);


ALTER TABLE vets ALTER COLUMN id SET DEFAULT nextval('vets_id_seq');
ALTER TABLE specialties ALTER COLUMN id SET DEFAULT nextval('specialties_id_seq');
ALTER TABLE types ALTER COLUMN id SET DEFAULT nextval('types_id_seq');
ALTER TABLE owners ALTER COLUMN id SET DEFAULT nextval('owners_id_seq');
ALTER TABLE pets ALTER COLUMN id SET DEFAULT nextval('pets_id_seq');
ALTER TABLE visits ALTER COLUMN id SET DEFAULT nextval('visits_id_seq');
