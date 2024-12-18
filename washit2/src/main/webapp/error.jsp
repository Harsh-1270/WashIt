<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f8d7da; color: #721c24; }
        .error-container { padding: 20px; border: 1px solid #f5c6cb; background-color: #f8d7da; border-radius: 5px; margin: 20px; }
        .error-title { font-size: 24px; font-weight: bold; }
        .error-message { font-size: 18px; margin-top: 10px; }
        img { max-width: 100px; }
    </style>
</head>
<body>
    <div class="error-container">
        <h1 class="error-title">An Error Occurred</h1>
        <p class="error-message">
            <%= request.getAttribute("errorMessage") %>
        </p>
        <img src="path/to/error-image.png" alt="Error Image">
    </div>
</body>
</html>
