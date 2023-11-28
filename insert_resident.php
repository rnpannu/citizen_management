<html>
<head><title> Manager for the citizens of University Hall </title></head>
<body>

<?php
if(isset($_COOKIE["username"])){
    echo "<form action=\"insertcourse.php\" method=post>";
   
   $username = $_COOKIE["username"];
   $password = $_COOKIE["password"];
   $server = "vlamp.cs.uleth.ca"; 
   $db = "panr3660"; 

   $conn = new mysqli($server,$username,$password,$db);
   
	
   $sql = "select dname from DEPT"; 
   $result = $conn->query($sql);
   if($result->num_rows != 0)
   {
    echo "SIN Number: <input type=text name=\"cno\" size=8> <br><br>";
      echo "Name: <input type=text name=\"cname\" size=20> <br><br>";
      echo "Address: <input type=text name=\"crhrs\" size=3> <br><br>"; 
      echo "Department Name: <select name=\"dname\">";
      
      while($val = $result->fetch_assoc())
      {
	 echo "<option value='$val[dname]'>$val[dname]</option>"; 
	 
      }
      echo "</select>"; 
      echo "<input type=submit name=\"submit\" value=\"Add Course\">"; 
   }
   else
   {
      echo "<H3>There are no departments in the system! </H3>"; 
   }
   
   echo "</form>";
} else {
   echo "<h3>You are not logged in!</h3><p> <a href=\"index.php\">Login First</a></p>"; 
   
}
?>


 
</body>
</html>
