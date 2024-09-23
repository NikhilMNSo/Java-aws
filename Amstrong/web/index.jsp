<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Armstrong Number Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        h1 {
            color: #1b91a8;
            margin-top: 50px;
        }

        .result-container {
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: 20px auto;
            padding: 20px;
            box-sizing: border-box;
        }

        p {
            font-size: 18px;
            margin: 20px 0;
        }

        .success {
            color: #4CAF50;
            font-weight: bold;
        }

        .error {
            color: #F44336;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>Armstrong Number Result</h1>
        <h2>21MIC0124 NIKHIL M</h2>

    <div class="result-container">
        <%
            String numStr = request.getParameter("num");
            if (numStr != null && !numStr.isEmpty()) {
                try {
                    int num = Integer.parseInt(numStr);
                    int originalNum = num;
                    int remainder;
                    int result = 0;

                    // Calculate the result
                    while (originalNum != 0) {
                        remainder = originalNum % 10;
                        result += Math.pow(remainder, 3); // Cubing the digit
                        originalNum /= 10;
                    }

                    // Check if the number is an Armstrong number
                    if (result == num) {
                        out.println("<p class='success'>Entered number " + num + " is an Armstrong Number.</p>");
                    } else {
                        out.println("<p class='error'>Entered number " + num + " is Not an Armstrong Number.</p>");
                    }
                } catch (NumberFormatException e) {
                    out.println("<p class='error'>Invalid number format. Please enter a valid integer.</p>");
                }
            } else {
                out.println("<p class='error'>No number entered. Please provide a number.</p>");
            }
        %>
    </div>
</body>
</html>
