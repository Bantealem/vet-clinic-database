/* Populate database with sample data. */

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (1,'Agumon', '2020-02-03', 0, TRUE, 10.23);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (2,'Gabumon', '2018-11-15', 2, TRUE, 8.0);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (3,'Pickachu', '2021-01-07', 1, FALSE, 15.0);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (4,'Devimon', '2017-05-12', 5, TRUE, 11.0);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Charmander', date '2020-02-8', '0', 'true', '-11');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Plantmon', date '2021-11-15', '2', 'true', '-5.7');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Squirtle', date '1993-04-02', '3', 'false', '-12.13');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Angemon', date '2005-06-12', '1', 'true', '-45');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Boarmon', date '2005-06-07', '7', 'true', '20.4');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Blossom', date '1998-10-13', '3', 'true', '17');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Ditto', date '2022-05-14', '4', 'true', '22');
