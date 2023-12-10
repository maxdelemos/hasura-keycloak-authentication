CREATE TABLE farmer (
    id UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
    name VARCHAR(50),
    age INTEGER,
    user_id VARCHAR(50),
    group_id VARCHAR(50)
);

-- Criando a tabela "cars" com UUID
CREATE TABLE car (
    id UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
    code VARCHAR(50),
    user_id VARCHAR(50),
    group_id VARCHAR(50)
);

CREATE TABLE farmer_car_rel (
    farmer_id UUID REFERENCES farmer(id),
    car_id UUID REFERENCES car(id),
    PRIMARY KEY (farmer_id, car_id)
);
