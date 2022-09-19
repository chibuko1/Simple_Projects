/*
-- Query: SELECT * FROM HotelReservation.Guests
LIMIT 0, 1000

-- Date: 2022-04-21 10:21
*/
INSERT INTO Guests(`GuestID`,`first_name`, `last_name`,`addr`,`city`,`state`,`zip`,`phone`) VALUES 
	(1, 'Chibuko', 'Ozobu', '2440 Winding Ridge Rd', 'Odenton', 'MD', 21113, '2404702298'),
	(2, 'Mack', 'Simmer', '379 Old Shore Street', 'Council Bluffs', 'IA', 51501, '2915530508'),
	(3, 'Bettyann', 'Seer', '750 Wintergreen Dr.', 'Wasilla', 'AK', 99654, '4782779632'),
	(4, 'Duane', 'Cullison', '9662 Foxrun Lane', 'Harlingen', 'TX', 78552, '3084940198'),
	(5, 'Karie', 'Yang', '9378 W. Augusta Ave.', 'West Deptford', 'NJ', 08096, '2147300298'),
	(6, 'Aurore', 'Lipton', '762 Wild Rose Street', 'Saginaw', 'MI', 48601, '3775070974'),
	(7, 'Zachery', 'Luechtefeld', '7 Poplar Dr.', 'Arvada', 'CO', 80003, '8144852615'),
	(8, 'Jeremiah', 'Pendergrass', '70 Oakwood St.', 'Zion', 'IL', 60099, '2794910960'),
	(9, 'Walter', 'Holaway', '7556 Arrowhead St.', 'Cumberland', 'RI', 02864, '4463966785'),
	(10, 'Wilfred', 'Vise', '77 West Surrey Street', 'Oswego', 'NY', 13126, '8347271001'),
	(11, 'Maritza', 'Tilton', '939 Linda Rd.', 'Burke', 'VA', 22015, '4463516860'),
	(12, 'Joleen', 'Tison', '87 Queen St.', 'Drexel Hill', 'PA', 19026, 2318932755);


INSERT INTO RoomType(`RoomTypeID`,`Type`,`extra_person_fee`,`standard_occupancy`,`max_occupancy`,`base_price`) VALUES
	(1, 'Single', 0, 2, 2, 149.99),
	(2, 'Double', 10, 2, 4, 174.99),
    (3, 'Suite', 20, 3, 8, 399.99);
    
INSERT INTO Room(`RoomID`,`Amenities`,`ada_access`,`RoomTypeID`) VALUES 
	(201,'Microwave, Jacuzzi','no',2),
	(202,'Refigerator','yes',2),
	(203,'Microwave, Jacuzzi', 'no', 2),
	(204,'Refrigerator','yes',2),
	(205,'Microwave, Refrigerator, Jacuzzi','no',1),
	(206,'Microwave, Refrigerator','yes',1),
	(207,'Microwave, Refrigerator, Jacuzzi','no',1),
	(208,'Microwave, Refrigerator','yes',1),
	(301,'Microwave, Jacuzzi','no',2),
	(302,'Refrigerator','yes',2),
	(303,'Microwave, Jacuzzi','no',2),
	(304,'Refrigerator','yes',2),
	(305,'Microwave, Refrigerator, Jacuzzi','no',1),
	(306,'Microwave, Refrigerator','yes',1),
	(307,'Microwave, Refrigerator, Jacuzzi','no',1),
	(308,'Microwave, Refrigerator','yes',1),
	(401,'Microwave, Refrigerator, Oven','yes',3),
	(402,'Microwave, Refrigerator, Oven','yes',3);

INSERT INTO Reservations(`ReservationID`,`Adults`,`Children`,`start_date`,`end_date`,`total_room_cost`,`GuestID`,`RoomID`) VALUES
 (1,1,0,'2023-02-02','2023-02-04',299.98,2,308),
(2,2,1,'2023-02-05','2023-02-10',999.95,3,203),
(3,2,0,'2023-02-22','2023-02-24',349.98,4,305),
 (4,2,2,'2023-03-06','2023-03-07',199.99,5,201),
(5,1,1,'2023-03-17','2023-03-20',524.97,1,307),
 (6,3,0,'2023-03-18','2023-03-23',924.95,6,302),
(7,2,2,'2023-03-29','2023-03-31',349.98,7,202),
(8,2,0,'2023-03-31','2023-04-05',874.95,8,304),
 (9,1,0,'2023-04-09','2023-04-14',799.96,9,301),
 (10,1,1,'2023-04-23','2023-04-24',174.99,10,207),
 (11,2,4,'2023-05-30','2023-06-02',1199.97,11,401),
 (12,2,0,'2023-06-10','2023-06-14',599.96,12,206),
 (13,1,0,'2023-06-10','2023-06-14',599.96,12,208),
 (14,3,0,'2023-06-17','2023-06-18',184.99,6,304),
 (15,2,0,'2023-06-28','2023-07-02',699.96,1,205),
 (16,3,1,'2023-07-13','2023-07-14',184.99,9,204),
(17,4,2,'2023-07-18','2023-07-21',1259.97,10,401),
 (18,2,1,'2023-07-28','2023-07-29',199.99,3,303),
 (19,1,0,'2023-08-30','2023-09-01',349.98,3,305),
 (20,2,0,'2023-09-16','2023-09-17',149.99,2,208),
 (21,2,2,'2023-09-13','2023-09-15',399.98,5,203),
 (22,2,2,'2023-11-22','2023-11-25',1199.97,4,401),
 (23,2,0,'2023-11-22','2023-11-25',449.97,2,206),
 (24,2,2,'2023-11-22','2023-11-25',599.97,2,301),
(25,2,0,'2023-12-24','2023-12-28',699.96,11,302);

DELETE FROM Reservations WHERE GuestID = 8;
DELETE FROM Guests WHERE GuestID = 8;