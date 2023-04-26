CREATE TABLE stars (
    id TEXT PRIMARY KEY,
    temp Text
);

CREATE TABLE planets (
    id TEXT PRIMARY KEY,
    orbital_yrs FLOAT NOT NULL,
    star_name TEXT REFERENCES stars
);

CREATE TABLE moons (
    id SERIAL PRIMARY KEY,
    name TEXT,
    planet_name TEXT REFERENCES planets
);

INSERT INTO stars (id,temp)
VALUES
('The Sun' ,'5800°K'),
('Proxima Centauri', '3042°K'),
('Gliese 876','3192°K');

INSERT INTO planets (id,orbital_yrs)
VALUES
('Earth',1.00),
('Mars',1.882),
('Venus',0.62),
('Proxima Centauri b',0.03),
('Gliese 876 b',0.236);

INSERT INTO moons (name)
VALUES
('The Moon'),('Phobos'),('Deimos');