<?php
if (isset($_COOKIE['username'])) { 
$username = $_COOKIE['username'];
$password = $_COOKIE['password'];
$server = "vlamp.cs.uleth.ca";
$db = "panr3660"; 

try
{
   $conn = new mysqli($server,$username,$password,$db);
} catch (Exception $e) {
	echo $e -> getMessage();   
}
$sql = "INSERT into RESIDENT (residentName, addressOfResidence, regionOfResidence, dateOfBirth, surveillanceLevel, creditScore) VALUES ('$_POST[residentName]', '$_POST[addressOfResidence]', '$_POST[regionOfResidence]', '$_POST[dateOfBirth]', '$_POST[surveillanceLevel]', '$_POST[creditScore]')";

if($conn->query($sql))  
{ 
	echo "<h3> New Person added!</h3>";
}

else {
	$err = $conn->errno;
        if ($err == 1062) {
            echo "<p>personID $personId already exists!</p>";
        } else {
            echo "<p>MySQL error code $err: " . $conn->error . "</p>";
        }
    }
   
   echo "<a href=\"main.php\">Return</a> to Home Page.";


} else {
   echo "<h3>You are not logged in!</h3><p> <a href=\"index.php\">Login First</a></p>"; 
}

?>

