<?php

DEFINE ('DB_USER', 'general');
DEFINE ('DB_PASSWORD', 'ser322');
DEFINE ('DB_HOST', 'localhost');
DEFINE ('DB_NAME', 'PeopleToMars');

$dbc = @mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME)
OR die('Could not connect to MySql: ' .
mysqli_connect_error());
?>
