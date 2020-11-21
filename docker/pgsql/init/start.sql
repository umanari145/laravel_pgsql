CREATE TABLE persons (
  id  SERIAL PRIMARY KEY,
  person_name varchar(50) DEFAULT '',
  sex smallint DEFAULT NULL,
  birth_day date DEFAULT NULL,
  zip varchar(7)  DEFAULT '',
  address_code varchar(15) DEFAULT '',
  address1 varchar(100) DEFAULT '',
  address2 varchar(100) DEFAULT '',
  contact smallint DEFAULT NULL,
  email varchar(200) DEFAULT '',
  tel varchar(15) DEFAULT '',
  delivery_zip varchar(7) DEFAULT '',
  delivery_address1 varchar(100) DEFAULT '',
  delivery_address2 varchar(100) DEFAULT '',
  traffic json DEFAULT NULL,
  contents text,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE custom_users (
  user_id  SERIAL PRIMARY KEY,
  user_name varchar(255) ,
  email varchar(255) unique,
  password varchar(255) ,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE users (
  id  SERIAL PRIMARY KEY,
  name varchar(255) ,
  email varchar(255) unique,
  password varchar(255) ,
  remenber_token varchar(100),
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO persons (person_name, sex) VALUES 
('山田太郎',1);
INSERT INTO persons (person_name, sex) VALUES 
('山田花子',2);