USE HotelReservation;

# 1st Query
/*SELECT CONCAT(Guests.`first_name`, " ", Guests.`last_name`) AS Name_of_Guest, Reservations.RoomID AS Room_Number, Reservations.start_date AS Reservation_Start_Date, Reservations.end_date AS Reservation_End_Date 
FROM Reservations 
JOIN Guests ON Reservations.GuestID = Guests.GuestID
WHERE end_date BETWEEN '2023-07-01' AND '2023-07-31';
*/
#Query #2
/*SELECT CONCAT(Guests.`first_name`, " ", Guests.`last_name`) AS Name_of_Guest, Reservations.RoomID AS Room_Number, Reservations.start_date AS Reservation_Start_Date 
FROM Room
JOIN Reservations ON Reservations.RoomID = Room.RoomID
JOIN Guests ON Reservations.GuestID = Guests.GuestID
WHERE Room.Amenities LIKE '%Jacuzzi%';
*/
#Query 3
/*SELECT CONCAT(Guests.`first_name`, " ", Guests.`last_name`) AS Name_of_Guest, Room.RoomID, Reservations.start_date, (Reservations.Adults + Reservations.Children) AS people_reserved
FROM Room
JOIN Reservations ON Reservations.RoomID = Room.RoomID
JOIN Guests ON Reservations.GuestID = Guests.GuestID
WHERE Guests.`first_name` = 'Mack';
*/
#Query 4
/*SELECT Room.RoomID AS Room_Number, Reservations.ReservationID, RoomType.base_price AS per_room_cost
FROM Reservations
RIGHT JOIN Room ON Reservations.RoomID = Room.RoomID
JOIN RoomType ON Room.RoomTypeID = RoomType.RoomTypeID
ORDER BY Room.RoomID ASC;
*/
#Query 5
/*SELECT Room.RoomID AS Room_Number 
FROM Reservations 
JOIN Room ON Reservations.RoomID = Room.RoomID
WHERE end_date BETWEEN '2023-04-01' AND '2023-04-30'
AND (Reservations.Adults + Reservations.Children) >= 3;
*/
#Query 6
/*SELECT Guests.`last_name`, COUNT(Reservations.ReservationID) AS reservations_per_guest
FROM Reservations
JOIN Guests ON Reservations.GuestID = Guests.GuestID
GROUP BY Guests.`last_name`
ORDER BY COUNT(Reservations.ReservationID) DESC;
*/
#Query 7
/*SELECT CONCAT(Guests.`first_name`, " ", Guests.`last_name`) AS Name_of_Guest, Guests.`addr`, Guests.`phone`
FROM Guests
WHERE Guests.`phone` = 2404702298;
*/