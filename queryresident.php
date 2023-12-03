<?php

if(isset($_COOKIE['username']))
{
   $username = $_COOKIE['username']; 
   $password = $_COOKIE["password"];
   $server = "vlamp.cs.uleth.ca";
   $db = "panr3660"; 
   $SIN = $_POST['SIN']; 

try {
   $conn = new mysqli($server,$username,$password,$db);
} catch (Exception $e) {
  echo $e ->getMessage(); 
}
   $sql = "select * from RESIDENT where SIN='$SIN'";
   $result = $conn->query($sql); 
   if($result->num_rows != 0) 
   { 	
      echo "<table border=1>";
      $rec = $result->fetch_assoc();
	 
      echo "<tr>";
      echo "<td>SIN</td>";
      echo "<td>residentName</td>";
      echo "<td>addressOfResidence</td>";
      echo "<td>regionOfResidence</td>";
      echo "<td>dateOfBirth</td>"; 
      echo "<td>surveillanceLevel</td>"; 
      echo "<td>creditScore</td>"; 
      echo "</tr>";
      echo "<tr>";
      echo "<td>$rec[SIN]</td>";
      echo "<td>$rec[residentName]</td>";
      echo "<td>$rec[addressOfResidence]</td>";
      echo "<td>$rec[regionOfResidence]</td>";
      echo "<td>$rec[dateOfBirth]</td>"; 
      echo "<td>$rec[surveillanceLevel]</td>"; 
      echo "<td>$rec[creditScore]</td>"; 
      echo "</tr>";	
      echo "</table>";
   
   }
   else {
      
      echo "<p>Resident $SIN does not exist!</p>"; 
   
   }

}
else
{
   echo "<h3>You are not logged in!</h3><p> <a href=\"index.php\">Login First</a></p>"; 
   
}

echo "<a href=\"main.php\">Return</a> to Home Page."; 

?>