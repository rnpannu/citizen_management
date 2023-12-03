<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            /*background-image: url('yqp997.jpg');*/
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            text-align: center;
            display: flex;
            flex-direction: column; /* Stack elements vertically */
            align-items: center;
            min-height: 100vh;
            color: white;
            margin: 0; /* Remove default margin */
        }

        .banner {
            width: 100%;
            background-color: #333333; /* Dark background for the banner */
            padding: 15px 0;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Adds a subtle shadow to the banner */
        }

        .banner h1 {
            margin: 0;
            color: white;
        }

        .navigation-menu {
            background-color: #f8f8f8; /* Light background for the navigation menu */
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-top: 30px;
            width: 80%; /* Adjust as per requirement */
            max-width: 500px; /* Maximum width of the menu */
        }

        .nav-button {
            background-color: #4CAF50; /* Green background for buttons */
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            margin: 10px 0;
            width: 100%; /* Full width buttons */
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .nav-button:hover {
            background-color: #45a049; /* Darker green on hover */
        }

        .logout-link {
            color: white;
            background-color: transparent;
            padding: 5px;
            margin-top: 20px;
            text-decoration: none;
        }

        .logout-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="banner">
        <h1>Accessing The Person Table</h1>
    </div>

    <div class="navigation-menu">
        <form action="#" method="post"> 
            <button type="submit" formaction="insert_resident.php" class="nav-button">Insert into the Resident table</button>
            <button type="submit" formaction="delete_resident.php" class="nav-button">Delete from the Resident table</button>
            <button type="submit" formaction="update_resident.php" class="nav-button">Update the Resident table</button>
            <button type="submit" formaction="query_resident.php" class="nav-button">Query the Resident table (Search)</button>
        </form>
    </div>

    <a href="logout.php" class="logout-link">Logout</a>
</body>
</html>

