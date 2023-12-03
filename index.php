<!DOCTYPE html>
<html>
<head>
    <title>Citizen Management Login</title>
    <style>
        html, body {
            height: 100%; /* Ensures that the body takes the full height of the viewport */
            margin: 0; /* Resets default margin */
            padding: 0; /* Resets default padding */
        }

        body {
            font-family: Arial, sans-serif;
            /*background-image: url('background.jpg');*/
            background-size: cover;
            background-position: center; /* Centers the background image */
            background-attachment: fixed; /* Fixes the background image */
            text-align: center;
            display: flex; /* Uses flexbox to center the content vertically */
            align-items: center; /* Aligns children (form) vertically */
            justify-content: center; /* Centers content horizontally */
            min-height: 100vh; /* Minimum height to cover the full viewport */
            color: white; /* Text color */
        }

        h1 {
            font-size: 2.5em;
            margin-bottom: 70px;s
            color: white;
        }

        form {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 20px;
            border-radius: 10px;
            display: inline-block;
        }

        input[type=text], input[type=password] {
            margin: 10px 0;
            padding: 10px;
            border: none;
            border-radius: 5px;
        }

        input[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div>
        <!--<h1>Citizen Management Login</h1>-->
        <form action="setpass.php" method="post">
            <div>
       		<h1>Citizen Management Login</h1>
                <label for="username"> Username:</label>
                <input type="text" name="username" size="20">
            </div>
            <div>
                <label for="password"> Password:</label>
                <input type="password" name="password" size="20">
            </div>
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
