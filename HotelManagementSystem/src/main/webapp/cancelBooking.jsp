<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cancel Booking</title>
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
            align-items: center;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        label {
            margin-bottom: 10px;
            font-weight: bold;
            width: 150px;
            display: inline-block;
        }
        input[type="number"] {
            width: calc(100% - 170px);
            padding: 8px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
        }
        input[type="submit"] {
            width: 150px;
            padding: 10px 20px;
            border-radius: 5px;
            text-align: center;
            border: 1px solid #000;
            background-color: #90ee90;
            cursor: pointer;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <h2>Cancel Booking</h2>
    <form action="cancelBooking" method="post">
        <div style="display: flex; align-items: center;">
            <label for="id">Booking ID:</label>
            <input type="number" name="id" required>
        </div>
        <div style="display: flex; justify-content: center; width: 100%;">
            <input type="submit" value="Submit">
        </div>
    </form>
</body>
</html>
