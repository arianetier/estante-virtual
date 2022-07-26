-- Active: 1654804337420@@35.226.146.116@3306@silveira-21814348-ariane-mello

CREATE TABLE estante_virtual_competition (
    id_competition VARCHAR(255) PRIMARY KEY,
    competition_name VARCHAR(255) NOT NULL UNIQUE,
    start_date VARCHAR(255) NOT NULL,
    end_date VARCHAR(255) NOT NULL
);

CREATE TABLE estante_virtual_result (
    id_athlete VARCHAR(255) PRIMARY KEY,
    competition_name VARCHAR(255) NOT NULL, 
    athlete_name VARCHAR(255) NOT NULL,
    value VARCHAR(255) NOT NULL,
    unity VARCHAR(255) NOT NULL,
    FOREIGN KEY (competition_name) REFERENCES estante_virtual_competition(competition_name)
);