<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome to Abhi's Hotel Management System</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: gray;
        }
        h2 {
            text-align: center;
            margin-top: 0;
            font-family: "Trebuchet MS", Helvetica, sans-serif;
        }
        .container {
            border: 1px solid black;
            padding: 40px;
            border-radius: 10px;
            margin-top: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: #e0ffff;
        }
        .container > * {
            margin: 10px 0;
        }
        input[type="submit"], a {
            padding: 12px 25px;
            border-radius: 5px;
            text-decoration: none;
            text-align: center;
            display: inline-block;
            border: 1px solid #ccc;
            background-color: #add8e6;
            cursor: pointer;
            font-size: 18px;
            font-family: "Trebuchet MS", Helvetica, sans-serif;
            color: black;
        }
        a:not([href*="showBookedRooms"]) {
            width: 180px;
            background-color: #add8e6;
        }
        a[href*="showBookedRooms"], input[type="submit"] {
            width: 240px;
           
        }
    </style>
</head>
<body>
    <h2>Welcome to Abhi's Hotel Management Software</h2>
    <div class="container">
        <a href="bookRoom.jsp">Book a Room</a>
        <a href="editBookingDetails.jsp">Edit Booking Details</a>
        <a href="cancelBooking.jsp">Cancel Booking</a>
        <form action="showBookedRooms" method="get">
            <input type="submit" value="Show Booked Rooms">
        </form>
    </div>
</body>
</html>
