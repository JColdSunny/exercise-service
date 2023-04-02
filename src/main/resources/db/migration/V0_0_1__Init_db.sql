CREATE TABLE body_part
(
    id        SERIAL,
    name      TEXT        NOT NULL,
    create_at timestamptz NOT NULL DEFAULT now(),
    CONSTRAINT pk_body_part_id PRIMARY KEY (id)
);

CREATE TABLE exercise
(
    id           SERIAL,
    name         TEXT        NOT NULL,
    body_part_id INTEGER     NOT NULL,
    create_at    timestamptz NOT NULL DEFAULT now(),
    CONSTRAINT pk_exercise_id PRIMARY KEY (id),
    CONSTRAINT fk_body_part_id FOREIGN KEY (body_part_id) REFERENCES body_part (id)
);