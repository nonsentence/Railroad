Hi, about the script:
https://www.order-of-phalanx.net/private/phalanx_stats.zip
there are basically 3 parts:

makestats.php - should be run by cron to read the log files and write the mysql database
two .sql files to create databases for cs61 and cs52
cstats.php - the website displaying the stats

you should use the parameter "makestats.php -52" to create the statistics 
for cs 5.2. with "-q" it will be quite and wont give any output. with "-v" 
it will be verbose and give detailed output. and with "-u" it will run in 
updated mode, that means it wont analyse all log files, but only the new once, 
this is much faster, but can lead to problems sometimes. So you have to first 
create the databases, I included mine as .sql. You need one for 5.2 and one for 
6.1 if you want both statistics. For the makestats.php you need to open it 
and change your mysql host, user, password and database to your server. 
Also also the directory where the log files are. then run "makestats.php 52" 
and "makestats.php 61" to create the first statistics. After that you run it 
as "makestats.php -uq52" and "makestats.php -uq61" via cron for example.

you will need php5-cli in order to run the makestats.php
of course you have to put your paths for the log files, 
and your user/db/pass for mysql in the scripts

clear everything from the players table
kills&maps are not used right now, I had some plans when I started writing the script
weapons and wpn_types are used to identify the kills for specific weapons
wpn_types is not used again, but weapons you should keep, and just set all kills to 0, 
but if you start the script without "-u" for update, it will zero all kills automatically