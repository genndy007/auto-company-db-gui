-- Insert data into tables

-- Clients
INSERT INTO clients (last_name, first_name, email, phone)
VALUES 
('Kochev', 'Hennadii', 'kohe@web.site', '+13475676789'),
('Kinchur', 'Vadym', 'kiva@web.site', '+13456787890'),
('Petrov', 'Denis', 'pede@web.com', '+74954562345'),
('Ivanov', 'Vasiliy', 'ivva@web.ua', '+380613457289'),
('Fetisov', 'Boris', 'febo@web.ru', '+45678903452'),
('Watson', 'John', 'wajo@web.uk', '+45123567880'),
('Puaro', 'Erkul', 'puer@web.it', '+463452760546'),
('Antonov', 'Yuriy', 'anyu@game.mail', '+79238874387'),
('Koronov', 'Antonio', 'koan@cli.fr', '+3455667658'),
('Pomerov', 'Stefan', 'post@site.ru', '+45689867262'),
('Ovechkin', 'Petr', 'ovpetr@site.com', '+74761982938'),
('Ukrainec', 'Danil', 'ukda@site.ua', '+380764567828');


-- Suppliers
INSERT INTO suppliers (company_name, contact_name, country, city, address, phone)
VALUES
('BMW', 'Walter Hans', 'Germany', 'Munich', 'Strasse 7a', '+34567716235'),
('Renault', 'Francois Bureau', 'France', 'Paris', 'Baguette 87c', '+47568779289'),
('Toyota', 'Akawaki Yamamoto', 'Japan', 'Tokyo', 'Zinchin 345b', '+26587827387'),
('Lada', 'Fedorov Ivan', 'Russia', 'St.Petersburg', 'Lermontova 16', '+7498265376'),
('Lifan', 'Yang Yin', 'China', 'Lhasa', 'Xinpian 809', '+1267465658'),
('Dodge', 'Walker Alan', 'USA', 'San Francisco', 'Apple Street 90', '+12345738667'),
('MAN', 'Gunter Mark', 'Germany', 'Berlin', 'Strasse 778', '+34557878992'),
('KAMAZ', 'Sidorov Evgeny', 'Russia', 'Moscow', 'Turgeneva 78', '+74951567389'),
('Mitsubishi', 'Yamuki Miyazaki', 'Japan', 'Honsyu', 'Chinmin 45', '+9876546726'),
('Volkswagen', 'Vater Moren', 'Germany', 'Bayern', 'Mutter 36', '+67438734434'),
('Volvo', 'Hakkarainen Markka', 'Sweden', 'Stockholm', 'Stockrainnen 73', '+3783976478');


-- Employees
INSERT INTO employees (last_name, first_name, birth_date, hire_date, salary, email, phone)
VALUES
('Nunez', 'Jody', '1980-09-14', '2018-03-11', 11000, 'nujo@auto.company', '+18739186640'),
('Rodgers', 'Corey', '1982-11-16', '2020-05-20', 10000, 'roco@auto.company', '+19436527749'),
('Hammond', 'Roger', '1967-06-23', '2019-08-19', 9800, 'haro@auto.company', '+12621518559'),
('Underwood', 'Arnold', '1978-03-24', '2019-09-15', 15000, 'unar@auto.company', '+18661275420'),
('Kim', 'Harvey', '1977-02-12', '2018-12-17', 13500, 'kiha@auto.company', '+11182109895'),
('Mitchell', 'Clayton', '1960-03-17', '2018-05-13', 12050, 'micl@auto.company', '+18861518442'),
('Burton', 'Seth', '1969-04-18', '2019-06-19', 10500, 'buse@auto.company', '+16666368108'),
('Roy', 'Lyle', '1972-07-29', '2017-09-10', 14500, 'roly@auto.company', '+15300927907'),
('Hanson', 'Raymond', '1973-08-10', '2016-01-03', 15900, 'hara@auto.company', '+19689186539'),
('Davidson', 'Lester', '1976-10-12', '2017-02-08', 15000, 'dale@auto.company', '+12282864729'),
('Townsend', 'Kyle', '1979-11-10', '2018-05-09', 13450, 'toky@auto.company', '+11285037015');



-- Payments
INSERT INTO payments (client_id, card_number, payment_date, is_paid)
VALUES
(1, '4929076465480275', '2016-03-12', TRUE),
(2, '4539341335102919', '2016-06-23', TRUE),
(3, '4024007107032723', '2016-10-12', TRUE),
(4, '4485842861298017', '2017-04-17', TRUE),
(5, '4539251672979920', '2017-05-18', TRUE),
(6, '4539642323055633', '2017-11-10', TRUE),
(7, '4485219382038117', '2018-02-18', TRUE),
(8, '4716614596058888', '2018-04-28', TRUE),
(9, '4716171420372829', '2018-10-27', TRUE),
(10, '4781394468339472', '2019-04-15', TRUE),
(11, '4929796205904256', '2020-10-13', TRUE),
(12, '4024007193600177', '2020-12-25', FALSE);


-- Orders
INSERT INTO orders (client_id, employee_id, payment_id, destination_country, destination_city, destination_address, cargo, cost)
VALUES
(2, 9, 1, 'Jordan', 'Amman', 'Jorka 12', 'Cars', 135000),
(1, 9, 2, 'India', 'Delhi', 'Baghadur 475', 'Constructors', 35000),
(3, 9, 4, 'Finland', 'Helsinki', 'Rainenn 982', 'Cement', 45000),
(5, 10, 3, 'China', 'Beijing', 'Xinuao 15', 'Bricks', 57900),
(7, 8, 6, 'Moldova', 'Chisinau', 'Rybina 16', 'Logs', 20000),
(6, 10, 5, 'Mongolia', 'Ulaanbaatar', 'Baarima 87', 'Flour', 35000),
(4, 9, 9, 'Montenegro', 'Podgorica', 'Gornoe 874', 'Clay', 45000),
(8, 1, 8, 'Norway', 'Oslo', 'Bornaden 64', 'Twigs', 15000),
(10, 7, 7, 'Romania', 'Bucharest', 'Romanour 73', 'Wood', 45800),
(9, 6, 11, 'Serbia', 'Belgrade', 'Svobody 52', 'Sand', 12000),
(11, 2, 10, 'Spain', 'Madrid', 'Toreos 84', 'Rocks', 11000),
(12, 3, 12, 'Switzerland', 'Bern', 'Conventio 93', 'Distilled water', 10000);


-- Fuel types (there are little of them)
INSERT INTO fuel_types (fuel_name)
VALUES
('Diesel'),
('Propane'),
('Gas-87'),
('Gas-89'),
('Gas-93');


-- Models
INSERT INTO models (fuel_type_id, type, brand, model, mass, color, fuel_volume)
VALUES
(5, 'Van', 'Volkswagen', 'Caddy', 3000, 'Blue', 2.5),
(2, 'Van', 'Lada', 'Largus', 2500, 'Gray', 3),
(3, 'Van', 'Volkswagen', 'Transporter', 4000, 'Red', 3),
(3, 'Lorry-highload', 'KAMAZ', 'AZ-6520', 13000, 'Green', 10),
(1, 'Highload-truck', 'MAN', 'TGS', 15000, 'White', 12.5),
(1, 'Van', 'Volkswagen', 'Crafter', 5000, 'Black', 4),
(2, 'Open platform', 'Mitsubishi', 'Counter', 10000, 'Brown', 5.5),
(1, 'Truck', 'Volvo', 'FH XXL', 9000, 'Gray', 4.5),
(2, 'Container truck', 'Lifan', 'T11', 7000, 'Green', 3.5),
(1, 'Container truck', 'Lifan', 'LF1011', 6500, 'Black', 3.5),
(4, 'Open platform', 'Toyota', 'Hiace', 8000, 'Blue', 5.5);


-- Vehicles 
INSERT INTO vehicles (employee_id, supplier_id, model_id, register_number)
VALUES 
(2, 10, 3, '5PPP064'),
(3, 4, 2, '7AGB784'),
(1, 8, 4, '0NGH465'),
(4, 7, 5, '3KHN285'),
(6, 10, 1, '8LSN947'),
(5, 9, 7, '3KNG068'),
(8, 11, 8, '2KFB756'),
(7, 10, 6, '9SEN745'),
(9, 5, 10, '5MTH057'),
(10, 5, 9, '6LER645'),
(11, 3, 11, '0LWT944');








