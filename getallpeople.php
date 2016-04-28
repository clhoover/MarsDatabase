<?php

require_once('mysqli_connect.php');

$query = "SELECT fName, lName, gender, age, Nationality.nationality, state, bmi, bloodPressure, cholesterolLevel, 
healthRiskScore,mentalHealthRating
FROM Citizen,Health,Nationality,Address
WHERE (Health.ssn=Citizen.ssn AND Address.ssn=Citizen.ssn) AND nationalID=Citizen.nationality";

$response = @mysqli_query($dbc, $query);

if($response){

echo "<table>

<tr><td align='center'><b>First Name</b></td>
<td align='center'><b>Last Name</b></td>
<td align='center'><b>Gender</b></td>
<td align='center'><b>Age</b></td>
<td align='center'><b>Nationality</b></td>
<td align='center'><b>State</b></td>
<td align='center'><b>bmi</b></td>
<td align='center'><b>BP</b></td>
<td align='center'><b>cholesterol</b></td>
<td align='center'><b>Health Risk</b></td>
<td align='center'><b>Mental Health</b></td></tr>";

while($row = mysqli_fetch_array($response)){

echo "<tr><td align='center'>" .
$row["fName"] . "</td><td align='center'>" .
$row["lName"] . "</td><td align='center'>" .
$row["gender"] . "</td><td align='center'>" .
$row["age"] . "</td><td align='center'>" .
$row["nationality"] . "</td><td align='center'>" .
$row["state"] . "</td><td align='center'>" .
$row["bmi"] . "</td><td align='center'>" . 
$row["bloodPressure"] . "</td><td align='center'>" . 
$row["cholesterolLevel"] . "</td><td align='center'>" .
$row["healthRiskScore"] . "</td><td align='center'>" .
$row["mentalHealthRating"] . "</td><td align='center'>";

echo "</tr>";
}
echo "</table>";

} else {

echo "Couldn\'t issue database query<br />";

echo mysqli_error($dbc);

}

mysqli_close($dbc);

?>
