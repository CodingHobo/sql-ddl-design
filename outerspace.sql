CREATE TABLE stars (
    id TEXT PRIMARY KEY,
    temp TEXT
);

CREATE TABLE planets (
    id TEXT PRIMARY KEY,
    orbital_yrs FLOAT NOT NULL,
    star_id TEXT REFERENCES stars
);

CREATE TABLE moons (
    id SERIAL PRIMARY KEY,
    name TEXT,
    planet_id TEXT REFERENCES planets
);

INSERT INTO stars (id,temp)
VALUES
('The Sun', '5800°K'),
('Proxima Centauri', '3042°K'),
('Gliese 876', '3192°K');

INSERT INTO planets (id, orbital_yrs, star_id)
VALUES
('Earth', 1.00, 'The Sun'),
('Mars', 1.882, 'The Sun'),
('Venus', 0.62, 'The Sun'),
('Proxima Centauri b', 0.03, 'Proxima Centauri'),
('Gliese 876 b',0.236, 'Gliese 876');

INSERT INTO moons (name, planet_id)
VALUES
('The Moon', 'Earth'),('Phobos', 'Mars'),('Deimos', 'Mars');