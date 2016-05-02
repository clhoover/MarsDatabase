# MarsDatabase

Hello team

To be able to run this you need to setup a MySQL server with the database that was provided by Jeanette over GMAIL
and get PHP installed and run it's built in web server. 

If you're navigating to something like: http://localhost:8000/showCandidates.html in your browser you're doing it right!

PHP Web Server - http://php.net/manual/en/features.commandline.webserver.php

Initiate PHP web server from the root directory of the project

The current configuration for the MySQL server that I was testing it on and how it's configured in mysqli_connect.php:

DEFINE ('DB_USER', 'general');</br>
DEFINE ('DB_PASSWORD', 'ser322');</br>
DEFINE ('DB_HOST', 'localhost');</br>
DEFINE ('DB_NAME', 'PeopleToMars');</br>

If your mySQL isn't setup exactly like this you will need to change these variables in order to get it to run

State of the project:</br>
2 html pages: Index + show all candidates</br>
Index is simply a landing page</br>
Show all candidates gives the user the option to query the SQL database to generate a list of all candidates</br>

![Alt text](http://i.imgur.com/e2MKuDy.png "Before First Query")
![Alt text](http://i.imgur.com/ESt4XLs.png "After First Query")


Contributions:

Christopher Hoover: Front End/PHP Coding, Implemented Git-Repo for group

Jeanette Reser: Back End/SQL Coding, Develop SQL statements, Data Base Normalization, Reviewed ER Diagram

Mitchell Warrenburg: Develop SQL statements for video presentation, Data Base Normalization

Kevin Bryant: ER Diagram, Record and create demo video
