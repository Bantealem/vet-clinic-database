/*Queries that provide answers to the questions from all projects.*/

/*Queries that provide answers to the questions from all projects.*/

-- Find all animals whose name ends in "mon"
SELECT * FROM animals WHERE name LIKE '%mon';

-- List the name of all animals born between 2016 and 2019.
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';

-- List the name of all animals that are neutered and have less than 3 escape attempts.
SELECT name FROM animals WHERE neutered = TRUE AND escape_attempts < 3;

-- List the date of birth of all animals named either "Agumon" or "Pikachu".
SELECT date_of_birth FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';

-- List name and escape attempts of animals that weigh more than 10.5kg
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;

-- ind all animals that are neutered.
SELECT * FROM animals WHERE neutered = TRUE;

-- List all animals not named Gabumon.
SELECT * FROM animals WHERE name != 'Gabumon';

-- Find all animals with a weight between 10.4kg and 17.3kg (including the animals with the weights that equals precisely 10.4kg or 17.3kg).
SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;

BEGIN;
UPDATE animals SET species = 'unspecified';
ROLLBACK;

BEGIN;
UPDATE animals SET species = 'Digmon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'Pokemon' WHERE species IS NULL;
COMMIT;

BEGIN;
DELETE FROM animals;
ROLLBACK;

BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT sp1;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO sp1;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;

SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT MAX(escape_attempts) FROM animals;
SELECT MIN(weight_kg), MAX(weight_kg) FROM animals;
SELECT AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';

SELECT animals.name FROM animals JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Melody Pond';
SELECT * FROM animals JOIN species ON animals.species_id = species.id WHERE species.name = 'Pokemon';
SELECT animals.name, owners.full_name FROM animals RIGHT JOIN owners ON animals.owner_id = owners.id;
SELECT species.name, COUNT(animals.species_id) FROM animals JOIN species ON species.id = animals.species_id GROUP BY species.name;
SELECT animals.name from animals JOIN owners ON owners.id = animals.owner_id JOIN species on species.id = animals.species_id WHERE animals.species_id = '2' AND animals.owner_id = '2';
SELECT animals.name from animals JOIN owners ON owners.id = animals.owner_id WHERE animals.escape_attempts = '0' AND animals.owner_id = '5';
SELECT full_name, COUNT(owner_id) FROM owners JOIN animals on owners.id = animals.owner_id GROUP BY full_name ORDER BY COUNT (owner_id) desc limit 1;

SELECT animals.name FROM animals JOIN visits ON animals.id = visits.animal_id WHERE vet_id = '1' ORDER BY visits.date_of_visit desc limit 1;
SELECT COUNT(DISTINCT animal_id) FROM visits WHERE vet_id = '2';
SELECT vets.name, specializations.vet_id, specializations.species_id FROM vets LEFT JOIN specializations ON specializations.vet_id = vets.id;
SELECT animals.name , visits.date_of_visit FROM animals JOIN visits ON animals.id = visits.animal_id WHERE visits.date_of_visit BETWEEN '2020-04-01' AND '2020-08-30' AND vet_id = '3';
SELECT animals.name, COUNT(animal_id) FROM animals JOIN visits ON animals.id = visits.animal_id GROUP BY animals.name ORDER BY COUNT(animal_id) desc limit 1;
SELECT animals.name, date_of_visit FROM animals JOIN visits ON animals.id = visits.animal_id WHERE vet_id = '2'ORDER BY visits.date_of_visit ASC LIMIT '1';
SELECT animals.name, vets.name, visits.date_of_visit FROM animals JOIN visits ON animals.id = visits.animal_id JOIN vets ON vets.id = visits.vet_id WHERE visits.date_of_visit = (SELECT MIN(date_of_visit) FROM visits);
SELECT *, visits.date_of_visit FROM animals JOIN visits ON animals.id = visits.animal_id JOIN vets ON vets.id = visits.vet_id WHERE visits.date_of_visit = (SELECT MIN(date_of_visit) FROM visits);
SELECT COUNT(visits.animal_id) FROM visits JOIN vets ON vets.id = visits.vet_id WHERE vet_id = '2';
SELECT species.name, COUNT(animals.species_id) FROM animals JOIN visits ON animals.id = visits.animal_id JOIN vets ON vets.id = visits.vet_id JOIN species ON species.id = animals.species_id WHERE vets.name = 'Vet Maisy Smith' GROUP BY species.name ORDER BY COUNT(animals.species_id) desc limit 1;
SELECT full_name, COUNT(owner_id) FROM owners JOIN animals on owners.id = animals.owner_id GROUP BY full_name ORDER BY COUNT (owner_id) desc limit 1;