<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Cancellation confirmation</title>
    <style>
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: rgba(0, 0, 0, 0.5);
        }

        .dialog-box {
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 20px;
            max-width: 400px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="dialog-box">
        <h2>CANCELLATION CONFIRMATION</h2>
        <p><%= request.getAttribute("response") %></p>
    </div>
</body>
</html>
