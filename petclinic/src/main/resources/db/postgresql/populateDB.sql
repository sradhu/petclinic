INSERT INTO vets (id,first_name,last_name) SELECT 1 as id, 'James' as first_name, 'Carter' as last_name WHERE NOT EXISTS (select 1 from specialties where id=1);
INSERT INTO vets (id,first_name,last_name) SELECT 2 as id, 'Helen' as first_name, 'Leary' as last_name WHERE NOT EXISTS (select 1 from specialties where id=2);
INSERT INTO vets (id,first_name,last_name) SELECT 3 as id, 'Linda' as first_name, 'Douglas' as last_name WHERE NOT EXISTS (select 1 from specialties where id=3);
INSERT INTO vets (id,first_name,last_name) SELECT 4 as id, 'Rafael' as first_name, 'Ortega' as last_name WHERE NOT EXISTS (select 1 from specialties where id=4);
INSERT INTO vets (id,first_name,last_name) SELECT 5 as id, 'Henry' as first_name, 'Stevens' as last_name WHERE NOT EXISTS (select 1 from specialties where id=5);
INSERT INTO vets (id,first_name,last_name) SELECT 6 as id, 'Sharon' as first_name, 'Jenkins' as last_name WHERE NOT EXISTS (select 1 from specialties where id=6);


INSERT INTO specialties (id,name) SELECT 1 as id, 'radiology' as name WHERE NOT EXISTS (select 1 from specialties where id=1);
INSERT INTO specialties (id,name) SELECT 2 as id, 'dentistry' as name WHERE NOT EXISTS (select 1 from specialties where id=2);
INSERT INTO specialties (id,name) SELECT 3 as id, 'surgery' as name WHERE NOT EXISTS (select 1 from specialties where id=3);

INSERT INTO vet_specialties (vet_id, specialty_id) SELECT 2 as vet_id,1 as specialty_id WHERE NOT EXISTS (select 1 from vet_specialties where vet_id=2);
INSERT INTO vet_specialties (vet_id, specialty_id) SELECT 3 as vet_id,2 as specialty_id WHERE NOT EXISTS (select 1 from vet_specialties where vet_id=3);
INSERT INTO vet_specialties (vet_id, specialty_id) SELECT 3 as vet_id,3 as specialty_id WHERE NOT EXISTS (select 1 from vet_specialties where vet_id=3);
INSERT INTO vet_specialties (vet_id, specialty_id) SELECT 4 as vet_id,2 as specialty_id WHERE NOT EXISTS (select 1 from vet_specialties where vet_id=4);
INSERT INTO vet_specialties (vet_id, specialty_id) SELECT 5 as vet_id,1 as specialty_id WHERE NOT EXISTS (select 1 from vet_specialties where vet_id=4);

INSERT INTO types (id,name) SELECT 1 as id, 'cat' as name WHERE NOT EXISTS (select 1 from types where id=1);
INSERT INTO types (id,name) SELECT 2 as id, 'dog' as name WHERE NOT EXISTS (select 1 from types where id=2);
INSERT INTO types (id,name) SELECT 3 as id, 'lizard' as name WHERE NOT EXISTS (select 1 from types where id=3);
INSERT INTO types (id,name) SELECT 4 as id, 'snake' as name WHERE NOT EXISTS (select 1 from types where id=4);
INSERT INTO types (id,name) SELECT 5 as id, 'bird' as name WHERE NOT EXISTS (select 1 from types where id=5);
INSERT INTO types (id,name) SELECT 6 as id, 'hamster' as name WHERE NOT EXISTS (select 1 from types where id=6);




INSERT INTO owners (id, first_name, last_name, address, city, telephone) SELECT 1 as id, 'George' as first_name, 'Franklin' as last_name
, '110 W. Liberty St.' as address, 'Madison' as city, '6085551023' as telephone WHERE NOT EXISTS (select 1 from owners where id=1);
INSERT INTO owners (id, first_name, last_name, address, city, telephone) SELECT 2 as id, 'Betty' as first_name, 'Davis' as last_name
, '638 Cardinal Ave.' as address, 'Sun Prairie' as city, '6085551749' as telephone WHERE NOT EXISTS (select 1 from owners where id=2);
INSERT INTO owners (id, first_name, last_name, address, city, telephone) SELECT 3 as id, 'Eduardo' as first_name, 'Rodriquez' as last_name
, '2693 Commerce St.' as address, 'McFarland' as city, '6085551045' as telephone WHERE NOT EXISTS (select 1 from owners where id=3);
INSERT INTO owners (id, first_name, last_name, address, city, telephone) SELECT 4 as id, 'Harold' as first_name, 'Davis' as last_name
, '563 Friendly St.' as address, 'Windsor' as city, '6085558976' as telephone WHERE NOT EXISTS (select 1 from owners where id=4);
INSERT INTO owners (id, first_name, last_name, address, city, telephone) SELECT 4 as id, 'Peter' as first_name, 'McTavish' as last_name
, '2387 S. Fair Way' as address, 'Madison' as city, '6085558530' as telephone WHERE NOT EXISTS (select 1 from owners where id=5);


INSERT INTO pets SELECT 1 as id, 'Leo' as name, '2000-09-07' as birth_date, 1 as type_id, 1 as owner_id WHERE NOT EXISTS (select 1 from pets where id=1);
INSERT INTO pets SELECT 2 as id, 'Brasi' as name, '2001-03-07' as birth_date, 6 as type_id, 2 as owner_id WHERE NOT EXISTS (select 1 from pets where id=2);
INSERT INTO pets SELECT 3 as id, 'Rosy' as name, '2002-05-07' as birth_date, 2 as type_id, 3 as owner_id WHERE NOT EXISTS (select 1 from pets where id=3);
INSERT INTO pets SELECT 4 as id, 'George' as name, '2004-06-07' as birth_date, 3 as type_id, 4 as owner_id WHERE NOT EXISTS (select 1 from pets where id=4);

INSERT INTO visits SELECT 1 as id, 7 as pet_id, '2010-03-04' as visit_date, 'rabies shot' as description WHERE NOT EXISTS (select 1 from visits where id=1);
INSERT INTO visits SELECT 2 as id, 5 as pet_id, '2011-04-04' as visit_date, 'neutered' as description WHERE NOT EXISTS (select 1 from visits where id=2);
INSERT INTO visits SELECT 3 as id, 9 as pet_id, '2012-06-08' as visit_date, 'spayed' as description WHERE NOT EXISTS (select 1 from visits where id=3);
