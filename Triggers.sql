-- Triggers
-- Cоздаем таблицу log, куда будем вставлять id юзеров, которые зарегистрировались

-- CREATE TABLE log (
-- id serial PRIMARY KEY,
-- msg VARCHAR( 255 ) NOT NULL,
-- time  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
-- row_id bigint unsigned NOT NULL
-- )

--  триггер
DELIMITER |
CREATE TRIGGER update_test AFTER INSERT ON users
FOR EACH ROW BEGIN
   INSERT INTO log Set msg = 'insert', row_id = NEW.id;
END;
DELIMITER ;

-- INSERT INTO users (id, firstname , lastname,phone,email)  
-- VALUES  (NULL, 'John', 'Smith', '89001230123', 'foo@bar.tld') 
-- ;