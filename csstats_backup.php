<?php

//draw_stats("52");
draw_stats("6.1");


function draw_stats($version)
{
	$headbg = "949cce";
	$userbg = "949cce";

	$sql_db = "cs_61stats";
	$sql_user = "root";
	$sql_host = "127.0.0.1:3306";
	$sql_pass = "";
	$sqltable_players = "player";
	$sqltable_maps = "maps";
	$sqltable_weapons = "weapons";
	$sqltable_kills = "kills";
	$sqltable_wpn_types = "wpn_types";

	mysql_connect($sql_host,$sql_user,$sql_pass);
	@mysql_select_db($sql_db) or die("Unable to select database");
	
	echo "
		<body bgcolor=bdc6de>		
		<a href=\"http://eisbaer.essentrix.net\">BACK TO SITE</a>
		<center><h2><u>Stats for server \"Docks CS " . $version . "\"</u></h2></center><table>
		<center><h3>Stats by Player:</h3></center>
		<table border=\"0\" width=\"100%\" bordercolor=\"#949cce\" bgcolor=\"#bdc6de\" cellspacing=\"2\" cellpadding=\"0\">	
		<tr>
		<th bgcolor=\"949cce\">Player Name</th>
		<th bgcolor=\"949cce\">Kills</th>
		<th bgcolor=\"949cce\">Deaths</th>
		<th bgcolor=\"949cce\">Kills/Deaths <br> Ratio</th>
		<th bgcolor=\"949cce\">Part of total kills</th>
		</tr>
	";

	$query = "SELECT * FROM $sqltable_players ORDER BY ct_kills DESC, ct_deaths DESC, ratio DESC";
	$result = mysql_query($query);
	$num = mysql_numrows($result);
	$i = 0;
	$graybg = true;

	while ($i < $num)
	{
		$id = mysql_result($result,$i,"id");
		$uid= mysql_result($result,$i,"uid");
		$name = mysql_result($result,$i,"name");
		$nick = mysql_result($result,$i,"nick");
		$ct_kills = mysql_result($result,$i,"ct_kills");
		$ct_deaths = mysql_result($result,$i,"ct_deaths");
		$ratio = mysql_result($result,$i,"ratio");
		$kills_part = mysql_result($result,$i,"kills_part");
	
		if ($kills_part > 0)
		{
			if ($graybg)
			{
				echo "<tr bgcolor=#$userbg>";
				$graybg = false;
			} else
			{
				echo "<tr>";
				$graybg = true;
			}

			echo "
				<td bgcolor=\"949cce\">$name</td>
				<td bgcolor=\"949cce\">$ct_kills</td>
				<td bgcolor=\"949cce\">$ct_deaths</td>
				<td bgcolor=\"949cce\">$ratio</td>
				<td bgcolor=\"949cce\">$kills_part%</rd>
				</tr>
			";
		}

		$i++;

	}

	echo "
		</table><center><h3>Stats by Weapon:</h3></center>
		<table border=\"0\" width=\"100%\" bordercolor=\"#bdc6de\" bgcolor=\"#bdc6de\" cellspacing=\"2\" cellpadding=\"0\">	
		<tr>
		<th bgcolor=\"949cce\">Weapon Name</th>
		<th bgcolor=\"949cce\">Kills/<br>Weapon</th>
		<th bgcolor=\"949cce\">Part of total kills</th>
		</tr>
	";

	$query = "SELECT * FROM $sqltable_weapons ORDER BY ct_kills DESC";
	$result = mysql_query($query);
	$num = mysql_numrows($result);
	$i = 0;
	$graybg = true;

	while ($i < $num)
	{
		$id = mysql_result($result,$i,"id");
		$name = mysql_result($result,$i,"name");
		$ct_kills = mysql_result($result,$i,"ct_kills");
		$kills_part = mysql_result($result,$i,"kills_part");

		if ($graybg)
		{
			echo "<tr bgcolor=#$userbg>";
			$graybg = false;
		} else
		{
			echo "<tr>";
			$graybg = true;
		}

		echo "
			<td bgcolor=\"949cce\">$name</td>
	       		<td bgcolor=\"949cce\">$ct_kills</td>
			<td bgcolor=\"949cce\">$kills_part%</rd>
			</tr>
		";

		$i++;
	}
	echo "</table>
	<br>
	<a href=\"http://eisbaer.essentrix.net\">BACK TO SITE</a>";
}
?>
