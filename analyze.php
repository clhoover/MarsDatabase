<?php

require_once('mysqli_connect.php');

if(isset($_POST['query'])){
$query = $_POST['query'];

$response = @mysqli_query($dbc, $query);

if($response){

$data = array();
  while($row = mysqli_fetch_assoc($response))
  {
     $data[] = $row;
  }

$colNames = array_keys(reset($data));

echo "<table class='center'>";
echo"<tr>";

foreach($colNames as $colName)
{
	echo"<th>$colName</th>";
}

echo"</tr>";

foreach($data as $row)
{
	echo"<tr>";
	foreach($colNames as $colName)
	{
		echo"<td>".$row[$colName]."</td>";
	}
	echo"</tr>";
}

echo"</table>";

} else {

echo "Couldn\'t issue database query<br />";

echo mysqli_error($dbc);

}
} else {
echo "Couldn't process query<br/>";
}

mysqli_close($dbc);

?>
