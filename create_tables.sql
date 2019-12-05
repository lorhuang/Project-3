create table VehicleType (
	vtname varchar(50) not null PRIMARY KEY,
	features varchar(50),
	wrate integer,
	drate integer,
	hrate integer,
	wirate integer,
	dirate integer,
	hirate integer,
	krate integer
);

create table Customer (
	dlicense varchar(10) not null PRIMARY KEY,
	name varchar(50),
	address varchar(50),
	cellphone varchar(10)
);

create table Reservation ( 
	confNo integer not null PRIMARY KEY,
	vtname varchar(50),
	dlicense varchar(10),
	fromTimestamp timestamp,
	toTimestamp timestamp,
	foreign key (vtname) references VehicleType,
	foreign key (dlicense) references Customer
);

create table Vehicle (
	vid integer not null PRIMARY KEY,
	vlicense varchar(50),
	make varchar(50),
	model varchar(50),
	year integer,
	color varchar(50),
	odometer integer,
	status varchar(30),
	vtname varchar(50),
	location varchar(50),
	city varchar(50),
	foreign key (vtname) references VehicleType
);

create table Rent ( 
	rid integer not null PRIMARY KEY,
	vid integer,
	vtname varchar(50),
	dlicense varchar(10),
	fromTimestamp timestamp,
	toTimestamp timestamp,
	foreign key (vid) references Vehicle,
	foreign key (vtname) references VehicleType,
	foreign key (dlicense) references Customer
);

create table Return (
	rid integer not null PRIMARY KEY,
	rdate timestamp,
	odometer integer,
	fulltank varchar(20),
	value integer,
	foreign key (rid) references Rent
);

insert into Customer values ('232321342', 'Loretta', '324 Loretta Street', '7781111111');
insert into Customer values ('234982340', 'Suzanne', '32 Suzanne Street', '7782222222');
insert into Customer values ('934820394', 'Karen', '83 Karen Street', '7783333333');
insert into Customer values ('347832947', 'Albert', '129 Albert Street', '7784444444');
insert into Customer values ('384723984', 'Stacey', '3984 Stacey Street', '7785555555');
insert into Customer values ('384738473', 'Pine', '984 Pine Street', '7786666666');
insert into Customer values ('283948394', 'Walnut', '29384 Walnut Street', '7787777777');
insert into Customer values ('456734587', 'Peach', '12 Peach Street', '7788888888');
insert into Customer values ('230948349', 'Cranberry', '90 Cranberry Street', '7789999999');
insert into Customer values ('783293478', 'Orange', '5201 Orange Street', '7781010101');
insert into Customer values ('134873198', 'Grape', '1342 Grape Street', '7785429832');
insert into Customer values ('228957442', 'Apple', '543 Apple Street', '7786230394');
insert into Customer values ('245972512', 'Mango', '6356 Mango Street', '7780923843');
insert into Customer values ('485739452', 'Banana', '3548 Banana Street', '7784234687');
insert into Customer values ('295874345', 'Papaya', '342 Papaya Street', '7788459032');
insert into Customer values ('232322345', 'Papaya1', '346 Papaya Street', '4592831234');
insert into Customer values ('232323342', 'Papaya2', '3426 Papaya Street', '4362567382');
insert into Customer values ('232324342', 'Papaya3', '4426 Papaya Street', '3748291239');
insert into Customer values ('232325342', 'Papaya4', '42 Papaya Street', '5839280947');
insert into Customer values ('232326342', 'Papaya5', '427 Papaya Street', '7328920123');
insert into Customer values ('232327342', 'Papaya6', '4278 Papaya Street', '4637289087');
insert into Customer values ('232328342', 'Papaya7', '42787 Papaya Street', '4638279384');
insert into Customer values ('232329342', 'Papaya8', '427827 Papaya Street', '4326543652');
insert into Customer values ('232319342', 'Papaya9', '527 Papaya Street', '9034283746');
insert into Customer values ('232351342', 'Papaya10', '5278 Papaya Street', '8473829102');
insert into Customer values ('232361342', 'Papaya11', '528 Papaya Street', '4738279087');
insert into Customer values ('232371342', 'Papaya12', '5238 Papaya Street', '3726379182');
insert into Customer values ('232381342', 'Papaya13', '52389 Papaya Street', '1928765364');

insert into VehicleType values ('SUV', 'GPS', 300, 100, 30, 50, 20, 10, 2);
insert into VehicleType values ('Standard', 'GPS', 300, 100, 30, 50, 20, 10, 2);
insert into VehicleType values ('Economy', 'GPS', 250, 80, 25, 40, 15, 8, 2);
insert into VehicleType values ('Compact', 'GPS', 200, 70, 20, 35, 10, 6, 1);
insert into VehicleType values ('Mid-Size', 'GPS', 190, 100, 35, 30, 15, 7, 2);
insert into VehicleType values ('Truck', 'GPS', 150, 80, 30, 25, 15, 7, 2);

insert into Vehicle values (001, 'lic001', 'Lexus', 'RX', 2019, 'white', 10000, 'Rented', 'SUV', 'Van Branch', 'Vancouver');
insert into Vehicle values (002, 'lic002', 'Lexus', 'RX', 2019, 'white', 23000, 'Available', 'SUV', 'Van Branch', 'Vancouver');
insert into Vehicle values (003, 'lic003', 'Audi', 'R8', 2020, 'black', 5000, 'Available', 'Standard', 'Bby Branch', 'Burnaby');
insert into Vehicle values (004, 'lic004', 'Smart', 'Smart EQ fortwo', 2019, 'blue', 60000, 'Available', 'Compact', 'Van Branch', 'Vancouver');
insert into Vehicle values (005, 'lic005', 'Smart', 'Smart EQ fortwo', 2018, 'black', 55000, 'Rented', 'Compact', 'Bby Branch', 'Burnaby');
insert into Vehicle values (006, 'lic006', 'Smart', 'Smart EQ fortwo', 2018, 'black', 45000, 'Available', 'Compact', 'Bby Branch', 'Burnaby');
insert into Vehicle values (007, 'lic007', 'Toyota', 'Corolla', 2019, 'grey', 80000, 'Available', 'Economy', 'Van Branch', 'Vancouver');
insert into Vehicle values (008, 'lic008', 'Toyota', 'Highlander', 2018, 'grey', 20000, 'Rented', 'Economy', 'Bby Branch', 'Burnaby');
insert into Vehicle values (009, 'lic009', 'Toyota', 'Corolla', 2019, 'grey', 45000, 'Rented', 'Economy', 'Van Branch', 'Vancouver');
insert into Vehicle values (010, 'lic010', 'Dodge', 'Charger', 2019, 'white', 45000, 'Rented', 'Mid-Size', 'Bby Branch', 'Burnaby');
insert into Vehicle values (011, 'lic011', 'Chrysler', 'Ram', 2019, 'black', 20000, 'Rented', 'Truck', 'Van Branch', 'Vancouver');
insert into Vehicle values (012, 'lic012', 'Chrysler', 'Ram', 2018, 'grey', 10000, 'Rented', 'Truck', 'Bby Branch', 'Burnaby');
insert into Vehicle values (013, 'lic013', 'Chrysler', 'Ram', 2017, 'white', 50000, 'Rented', 'Truck', 'Van Branch', 'Vancouver');
insert into Vehicle values (014, 'lic014', 'Toyota', 'Camry', 2019, 'grey', 60000, 'Rented', 'Economy', 'Van Branch', 'Vancouver');
insert into Vehicle values (015, 'lic015', 'Toyota', 'Camry', 2019, 'black', 70000, 'Rented', 'Economy', 'Bby Branch', 'Burnaby');
insert into Vehicle values (016, 'lic016', 'Lexus', 'RX', 2019, 'white', 10000, 'Rented', 'SUV', 'Van Branch', 'Vancouver');
insert into Vehicle values (017, 'lic001', 'Lexus', 'RX', 2019, 'white', 10000, 'Rented', 'SUV', 'Van Branch', 'Vancouver');
insert into Vehicle values (018, 'lic001', 'Lexus', 'RX', 2019, 'white', 10000, 'Rented', 'SUV', 'Van Branch', 'Vancouver');
insert into Vehicle values (019, 'lic001', 'Lexus', 'RX', 2019, 'white', 10000, 'Rented', 'SUV', 'Van Branch', 'Vancouver');
insert into Vehicle values (020, 'lic001', 'Lexus', 'RX', 2019, 'white', 10000, 'Rented', 'SUV', 'Van Branch', 'Vancouver');
insert into Vehicle values (021, 'lic001', 'Lexus', 'RX', 2019, 'white', 10000, 'Rented', 'SUV', 'Van Branch', 'Vancouver');
insert into Vehicle values (022, 'lic001', 'Lexus', 'RX', 2019, 'white', 10000, 'Rented', 'SUV', 'Van Branch', 'Vancouver');
insert into Vehicle values (023, 'lic001', 'Lexus', 'RX', 2019, 'white', 10000, 'Rented', 'SUV', 'Van Branch', 'Vancouver');
insert into Vehicle values (024, 'lic001', 'Lexus', 'RX', 2019, 'white', 10000, 'Rented', 'SUV', 'Van Branch', 'Vancouver');
insert into Vehicle values (025, 'lic001', 'Lexus', 'RX', 2019, 'white', 10000, 'Rented', 'SUV', 'Van Branch', 'Vancouver');
insert into Vehicle values (026, 'lic001', 'Lexus', 'RX', 2019, 'white', 10000, 'Rented', 'SUV', 'Van Branch', 'Vancouver');
insert into Vehicle values (027, 'lic001', 'Lexus', 'RX', 2019, 'white', 10000, 'Rented', 'SUV', 'Van Branch', 'Vancouver');
insert into Vehicle values (028, 'lic001', 'Lexus', 'RX', 2019, 'white', 10000, 'Rented', 'SUV', 'Van Branch', 'Vancouver');

insert into Rent values (01, 001, 'SUV', '232321342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Rent values (02, 002, 'SUV', '234982340', '06-DEC-2019 12:10:00', '06-DEC-2019 11:10:00');
insert into Rent values (03, 003, 'Standard', '934820394', '10-NOV-2019 12:50:00', '02-DEC-2019 12:10:00');
insert into Rent values (04, 004, 'Compact', '347832947', '02-DEC-2019 12:10:00', '03-DEC-2019 12:40:00');
insert into Rent values (05, 005, 'Compact', '384723984', '14-DEC-2019 01:00:00', '19-DEC-2019 12:00:00');
insert into Rent values (06, 006, 'Compact', '384738473', '02-DEC-2019 10:15:00', '03-DEC-2019 09:45:00');
insert into Rent values (07, 007, 'Economy', '283948394', '01-DEC-2019 12:10:00', '05-DEC-2019 09:00:00');
insert into Rent values (08, 008, 'Economy', '456734587', '16-DEC-2019 12:00:00', '17-DEC-2019 09:00:00');
insert into Rent values (09, 009, 'Economy', '230948349', '20-DEC-2019 11:00:00', '20-DEC-2019 12:00:00');
insert into Rent values (10, 010, 'Mid-Size', '783293478', '21-DEC-2019 12:00:00', '28-DEC-2019 12:00:00');
insert into Rent values (11, 011, 'Truck', '134873198', '17-DEC-2019 12:00:00', '18-DEC-2019 12:00:00');
insert into Rent values (12, 012, 'Truck', '228957442', '5-DEC-2019 11:00:00', '07-DEC-2019 11:00:00');
insert into Rent values (13, 013, 'Truck', '245972512', '10-DEC-2019 10:00:00', '15-DEC-2019 11:00:00');
insert into Rent values (14, 014, 'Economy', '485739452', '16-NOV-2019 12:00:00', '17-NOV-2019 12:00:00');
insert into Rent values (15, 015, 'Economy', '295874345', '23-NOV-2019 10:00:00', '30-NOV-2019 12:00:00');
insert into Rent values (16, 016, 'SUV', '232322345', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Rent values (17, 017, 'SUV', '232323342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Rent values (18, 018, 'SUV', '232324342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Rent values (19, 019, 'SUV', '232325342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Rent values (20, 020, 'SUV', '232326342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Rent values (21, 021, 'SUV', '232327342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Rent values (22, 022, 'SUV', '232328342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Rent values (23, 023, 'SUV', '232329342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Rent values (24, 024, 'SUV', '232319342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Rent values (25, 025, 'SUV', '232351342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Rent values (26, 026, 'SUV', '232361342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Rent values (27, 027, 'SUV', '232371342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Rent values (28, 028, 'SUV', '232381342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');

insert into Return values (01, '04-DEC-2019 02:50:00', 15000, 'Full', 100);
insert into Return values (02, '07-DEC-2019 01:00:00', 25000, 'Half', 200);
insert into Return values (03, '15-DEC-2019 10:30:00', 9000, 'Full', 300);
insert into Return values (04, '02-DEC-2019 08:40:00', 61000, 'Half', 400);
insert into Return values (05, '16-DEC-2019 11:00:00', 57000, 'Full', 500);
insert into Return values (06, '12-DEC-2019 8:00:00', 55000, 'Half', 600);
insert into Return values (07, '04-DEC-2019 04:50:00', 30000, 'Half', 200);
insert into Return values (08, '04-DEC-2019 02:50:00', 40000, 'Full', 400);
insert into Return values (09, '07-DEC-2019 01:00:00', 60000, 'Half', 300);
insert into Return values (10, '11-DEC-2019 01:00:00', 40000, 'Full', 200);
insert into Return values (11, '10-DEC-2019 12:00:00', 40000, 'Full', 200);
insert into Return values (12, '17-DEC-2019 08:00:00', 40000, 'Full', 200);
insert into Return values (13, '10-DEC-2019 03:00:00', 40000, 'Full', 200);
insert into Return values (14, '07-DEC-2019 07:00:00', 40000, 'Full', 200);
insert into Return values (15, '02-DEC-2019 12:00:00', 40000, 'Full', 200);
insert into Return values (16, '03-DEC-2019 11:10:00', 40000, 'Full', 200);
insert into Return values (17, '03-DEC-2019 11:10:00', 40000, 'Full', 200);
insert into Return values (18, '03-DEC-2019 11:10:00', 40000, 'Full', 200);
insert into Return values (19, '03-DEC-2019 11:10:00', 40000, 'Full', 200);
insert into Return values (20, '03-DEC-2019 11:10:00', 40000, 'Full', 200);
insert into Return values (21, '03-DEC-2019 11:10:00', 40000, 'Full', 200);
insert into Return values (22, '03-DEC-2019 11:10:00', 40000, 'Full', 200);
insert into Return values (23, '03-DEC-2019 11:10:00', 40000, 'Full', 200);
insert into Return values (24, '03-DEC-2019 11:10:00', 40000, 'Full', 200);
insert into Return values (25, '03-DEC-2019 11:10:00', 40000, 'Full', 200);
insert into Return values (26, '03-DEC-2019 11:10:00', 40000, 'Full', 200);
insert into Return values (27, '03-DEC-2019 11:10:00', 40000, 'Full', 200);
insert into Return values (28, '03-DEC-2019 11:10:00', 40000, 'Full', 200);



insert into Reservation values (1, 'SUV', '232321342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Reservation values (2, 'SUV', '234982340', '06-DEC-2019 12:10:00', '06-DEC-2019 12:10:00');
insert into Reservation values (3, 'Standard', '934820394', '10-NOV-2019 12:50:00', '03-DEC-2019 12:10:00');
insert into Reservation values (4, 'Compact', '347832947', '02-DEC-2019 12:10:00', '03-DEC-2019 12:40:00');
insert into Reservation values (5, 'Compact', '384723984', '14-DEC-2019 01:00:00', '19-DEC-2019 12:00:00');
insert into Reservation values (6, 'Compact', '384738473', '02-DEC-2019 10:15:00', '03-DEC-2019 09:45:00');
insert into Reservation values (7, 'Economy', '283948394', '01-DEC-2019 12:10:00', '05-DEC-2019 09:00:00');
insert into Reservation values (8, 'Economy', '456734587', '16-DEC-2019 12:00:00', '17-DEC-2019 09:00:00');
insert into Reservation values (9, 'Economy', '230948349', '20-DEC-2019 11:00:00', '20-DEC-2019 12:00:00');
insert into Reservation values (10, 'Mid-Size', '783293478', '21-DEC-2019 12:00:00', '28-DEC-2019 12:00:00');
insert into Reservation values (11, 'Truck', '134873198', '17-DEC-2019 12:00:00', '18-DEC-2019 12:00:00');
insert into Reservation values (12, 'Truck', '228957442', '5-DEC-2019 11:00:00', '07-DEC-2019 11:00:00');
insert into Reservation values (13, 'Truck', '245972512', '10-DEC-2019 10:00:00', '15-DEC-2019 11:00:00');
insert into Reservation values (14, 'Economy', '485739452', '16-NOV-2019 12:00:00', '17-NOV-2019 12:00:00');
insert into Reservation values (15, 'Economy', '295874345', '23-NOV-2019 10:00:00', '30-NOV-2019 12:00:00');
insert into Reservation values (16, 'SUV', '232322345', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Reservation values (17, 'SUV', '232323342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Reservation values (18, 'SUV', '232324342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Reservation values (19, 'SUV', '232325342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Reservation values (20, 'SUV', '232326342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Reservation values (21, 'SUV', '232327342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Reservation values (22, 'SUV', '232328342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Reservation values (23, 'SUV', '232329342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Reservation values (24, 'SUV', '232319342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Reservation values (25, 'SUV', '232351342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Reservation values (26, 'SUV', '232361342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Reservation values (27, 'SUV', '232371342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');
insert into Reservation values (28, 'SUV', '232381342', '02-DEC-2019 11:10:00', '03-DEC-2019 11:10:00');



commit;
