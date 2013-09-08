<?php

draw_stats("52");
draw_stats("61");


function draw_stats($version)
{
	$headbg = "000000";
	$userbg = "121212";

	$sql_db = "cs_" . $version . "stats";
	$sql_user = "xxxxxxxxxxxxxx";
	$sql_host = "127.0.0.1:3306";
	$sql_pass = "xxxxxxxxxxxxxxxxxx";
	$sqltable_players = "player";
	$sqltable_maps = "maps";
	$sqltable_weapons = "weapons";
	$sqltable_kills = "kills";
	$sqltable_wpn_types = "wpn_types";

	mysql_connect($sql_host,$sql_user,$sql_pass);
	@mysql_select_db($sql_db) or die("Unable to select database");

	echo "
		<center><h2><u>Stats for server \"Phalanx CS " . $version . "\"</u></h2></center><table>
		<center><h3>Stats by Player:</h3></center>
		<table border=\"0\" width=\"100%\" bordercolor=\"#202020\" bgcolor=\"#000000\" cellspacing=\"0\" cellpadding=\"0\">	
		<tr>
		<th>Player Name</th>
		<th>Kills</th>
		<th>Deaths</th>
		<th>Kills/Deaths <br> Ratio</th>
		<th>Part of total kills</th>
		</tr>
	";

	$query = "SELECT * FROM $sqltable_players WHERE `ratio`!=0 ORDER BY ratio DESC, ct_kills DESC, ct_deaths DESC";
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
				<td>$name</td>
				<td>$ct_kills</td>
				<td>$ct_deaths</td>
				<td>$ratio</td>
				<td>$kills_part%</rd>
				</tr>
			";
		}

		$i++;
	}

	echo "
		</table><center><h3>Stats by Weapon:</h3></center>
		<table border=\"0\" width=\"100%\" bordercolor=\"#202020\" bgcolor=\"#000000\" cellspacing=\"0\" cellpadding=\"0\">	
		<tr>
		<th>Weapon Name</th>
		<th>Kills</th>
		<th>Part of total kills</th>
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
			<td>$name</td>
			<td>$ct_kills</td>
			<td>$kills_part%</rd>
			</tr>
		";

		$i++;
	}
	echo "</table>";
}

?>