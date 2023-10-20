<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Booking Details</title>
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
        form {
            border: 1px solid #000;
            border-radius: 10px;
            padding: 20px;
            background-color: #e0ffff;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        h3 {
            text-align: center;
            margin-bottom: 20px;
            color: #555;
        }
        label {
            margin-bottom: 10px;
            font-weight: bold;
            width: 150px;
            display: inline-block;
        }
        input[type="text"],
        input[type="date"],
        input[type="number"] {
            width: calc(100% - 160px);
            padding: 8px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px 20px;
            border-radius: 5px;
            text-align: center;
            border: 1px solid #000;
            background-color: #8FBC8F; 
            cursor: pointer;
            font-size: 16px;
        }
    </style>
    <script>
        function setMinCheckOutDate() {
            var checkInDate = document.getElementById("checkInDate").value;
            document.getElementById("checkOutDate").min = checkInDate;
            if (document.getElementById("checkOutDate").value < checkInDate) {
                document.getElementById("checkOutDate").value = checkInDate;
            }
        }
    </script>
</head>
<body>
    <h2>EDIT BOOKING DETAILS</h2><br>
    <h3>(Auto update based on Booking ID or Guest name)</h3>
    <form action="editBookingDetails" method="post">
        <div style="display: flex; align-items: center;">
            <label for="id">Booking ID:</label>
            <input type="text" name="id" required>
        </div>
        <div style="display: flex; align-items: center;">
            <label for="guestName">Guest Name:</label>
            <input type="text" name="guestName" id="guestName" required>
        </div>
        <div style="display: flex; align-items: center;">
            <label for="checkInDate">Check-in Date:</label>
            <input type="date" name="checkInDate" id="checkInDate" min="<%= java.time.LocalDate.now() %>" onchange="setMinCheckOutDate()" required>
        </div>
        <div style="display: flex; align-items: center;">
            <label for="checkOutDate">Check-out Date:</label>
            <input type="date" name="checkOutDate" id="checkOutDate" min="<%= java.time.LocalDate.now() %>" required>
        </div>
        <div style="display: flex; align-items: center;">
            <label for="roomType">Room Type:</label>
            <input type="text" name="roomType" id="roomType" required>
        </div>
        <div style="display: flex; align-items: center;">
            <label for="numGuests">Number of Guests:</label>
            <input type="number" name="numGuests" id="numGuests" required>
        </div>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
