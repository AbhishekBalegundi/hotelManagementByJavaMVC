<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.hms.dto.Booking" %>
<%@ page import="java.util.List" %>

<html>
<head>
    <title>Booked Rooms</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: gray;
        }
        h2 {
            text-align: center;
        }
        table {
            margin: 20px auto;
            border-collapse: collapse;
            width: 80%;
            background-color: white;
        }
        th, td {
            border: 4px solid #ddd;
            padding: 10px;
            text-align: center;
        }
        th {
        background-color: #d9ead3;
    }
    </style>
</head>
<body>
    <h2>Booked Rooms</h2>
    <table>
        <tr>
            <th>Guest Name</th>
            <th>Booking ID</th>
            <th>Check-in Date</th>
            <th>Check-out Date</th>
            <th>Room Type</th>
            <th>Number of Guests</th>
        </tr>
        <%
        List<Booking> bookings = (List<Booking>) request.getAttribute("bookings");
        if (bookings != null && !bookings.isEmpty()) {
            for (Booking booking : bookings) {
        %>
                <tr>
                    <td><%= booking.getGuestName() %></td>
                    <td><%= booking.getId() %></td>
                    <td><%= booking.getCheckInDate() %></td>
                    <td><%= booking.getCheckOutDate() %></td>
                    <td><%= booking.getRoomType() %></td>
                    <td><%= booking.getNumGuests() %></td>
                </tr>
        <%
            }
        } else {
        %>
            <tr>
                <td colspan="6">No bookings yet.</td>
            </tr>
        <%
        }
        %>
    </table>
</body>
</html>
