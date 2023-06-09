begin;
    SELECT * from service;
    insert into service (name, location_id) values
    ('Esempio 1', 2500),
    ('Esempio 2', 3100);
    SELECT * from service;
    update service set name = 'Example 1' where name = 'Esempio 1';
    SELECT * from service;
    delete from service where name = 'Esempio 2';
    SELECT * from service;
rollback;

SELECT * from service;

begin;
	insert into service (name, location_id) values
	('Car & Services', 1300),
	('Emo-Car Service', 1500);
	SELECT * from service;
rollback;

select * FROM region;

DELETE FROM region
WHERE region_id = 501;