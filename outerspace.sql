CREATE TABLE planets (
    id TEXT PRIMARY KEY,
    orbital_yrs FLOAT NOT NULL
)

CREATE TABLE stars (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    temp FLOAT NOT NULL,
    planet_name TEXT REFERENCES planets
)

CREATE TABLE moons (
    id SERIAL PRIMARY KEY,
    name TEXT,
    planet_name TEXT REFERENCES planets
)