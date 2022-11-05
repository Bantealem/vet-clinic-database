/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts INT NOT NULL,
    neutered BOOLEAN NOT NULL,
    weight_kg DECIMAL NOT NULL,
    species VARCHAR(100) 
);

CREATE TABLE owners (
    id BIGSERIAL PRIMARY KEY,
    full_name VARCHAR(255),
    age integer
);

CREATE TABLE species (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255)
);

ALTER TABLE animals ADD species_id BIGINT species(id);
ALTER TABLE animals ADD owner_id BIGINT owners(id);