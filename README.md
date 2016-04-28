# MarsDatabase

Hello team

To be able to run this you need to setup a MySQL server with the database that was provided by Jeanette over GMAIL
and get PHP installed and run it's built in web server. 

If you're navigating to something like: http://localhost:8000/showCandidates.html in your browser you're doing it right!

PHP Web Server - http://php.net/manual/en/features.commandline.webserver.php

Initiate PHP web server from the root directory of the project

The current configuration for the MySQL server that I was testing it on and how it's configured in mysqli_connect.php:

DEFINE ('DB_USER', 'general');
DEFINE ('DB_PASSWORD', 'ser322');
DEFINE ('DB_HOST', 'localhost');
DEFINE ('DB_NAME', 'PeopleToMars');

If your mySQL isn't setup exactly like this you will need to change these variables in order to get it to run

