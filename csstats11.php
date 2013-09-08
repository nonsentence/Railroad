<?php
//draw_stats("52");
//draw_stats("61");
draw_stats("11");


function draw_stats($version)
{
	$headbg = "949cce";
	$userbg = "949cce";

	$sql_db = "cs_11stats";
	$sql_user = "root";
	$sql_host = "127.0.0.1:3306";
	$sql_pass = "sie6903";
	$sqltable_players = "player";
	$sqltable_maps = "maps";
	$sqltable_weapons = "weapons";
	$sqltable_kills = "kills";
	$sqltable_wpn_types = "wpn_types";

	mysql_connect($sql_host,$sql_user,$sql_pass);
	@mysql_select_db($sql_db) or die("Unable to select database");
	
	echo "
		<body bgcolor=bdc6de>		
		<br>
	<map name=\"menu\">
	<area shape=\"rect\" coords=\"0,1,98,27\"    href=\"http://eisbaer.essentrix.net/right.html\" target=\"right\">
	<area shape=\"rect\" coords=\"99,1,192,27\"  href=\"http://eisbaer.essentrix.net/news.html\" target=\"right\">
	<area shape=\"rect\" coords=\"193,1,288,27\" href=\"http://eisbaer.essentrix.net/servers.html\" target=\"right\">
	<area shape=\"rect\" coords=\"289,1,382,27\" href=\"http://eisbaer.essentrix.net/install.html\" target=\"right\">
	<area shape=\"rect\" coords=\"383,1,476,27\" href=\"http://eisbaer.essentrix.net/maps.html\" target=\"right\">
	<area shape=\"rect\" coords=\"477,1,570,27\" href=\"http://eisbaer.essentrix.net/files.html\" target=\"right\">
	<area shape=\"rect\" coords=\"571,1,664,27\" href=\"http://eisbaer.essentrix.net/about.html\" target=\"right\">
	<area shape=\"rect\" coords=\"665,1,762,27\" href=\"http://eisbaer.essentrix.net/contact.html\" target=\"right\">
	<img vspace=0 hspace=0 border=0 width=762 height=28 src=\"images/image_map.jpg\" usemap=\"#menu\"></img>
 		
		<table>
		<tr bgcolor=\"#bdc6de\">
		<td width=755>
		<font color=\"#bdc6de\" size=1>oldschool counter-strike, old school counter-strike, oldschool cs, 
		retro-cs, retro counter-strike, langames.net, hl downgrader, classic cs, setup counterstrike beta, 
		betas</font>
		</img></td></tr>
		</table>

		<table>
		<tr bgcolor=\"#bdc6de\">
		<td width=755><img src=\"images/essentrix_11.jpg\"></img></td></tr>
		</table>
	
		<font color=\"#bdc6de\" size=1>beta counter-strike, counter-strike beta, counter-strike beta 6, 
		setup counter-strike beta 6.1, counter-strike betas, cs beta, cs betas, beta 5.2, beta 3.1, 
		beta 1.1, cs, counter-strike beta 5.2, counter-strike beta 3.1 setup half-life linux server, 
		setup counter-strike linux server, half-life 1016, half-life 3016, dedicated server, valve, won2, hlds</font>
		
		<!--		
		<a href=\"http://eisbaer.essentrix.net\">BACK TO SITE</a>
		-->
		
		<table>
		<tr bgcolor=\"949cce\">
		<td width=757><b>&nbsp;PLAYER STATS (ESSENTRIX CS VERSION 1.1)</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
		</table>

		<br>
		
		<!--
		<center><h2><u>Stats for server \"Docks CS " . $version . "\"</u></h2></center><table>
		<center><h3>Stats by Player:</h3></center>
		-->
	
		<table border=\"0\" width=\"762\" bordercolor=\"#949cce\" bgcolor=\"#bdc6de\" cellspacing=\"2\" cellpadding=\"0\">	
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
	$total_kills = 0;
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
		$total_kills = $total_kills + $ct_kills;

		if ($kills_part >= 0)
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
		<table>
		<br>
		<tr bgcolor=\"949cce\">
		<td width=757><b>Total kills:</b> $total_kills</td>
		</table>
	
		<table>
		<br>
		<tr bgcolor=\"949cce\">
		<td width=757><b>&nbsp;WEAPON STATS (ESSENTRIX CS VERSION 1.1)</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
		</table>

		<br>
		
		<!--
		</table><center><h3>Stats by Weapon:</h3></center>
		-->
		<table border=\"0\" width=\"762\" bordercolor=\"#bdc6de\" bgcolor=\"#bdc6de\" cellspacing=\"2\" cellpadding=\"0\">	
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
	
	<table>
	<tr bgcolor=\"949cce\">
	<td width=757>&nbsp;&copy; 2013&nbsp;&nbsp;
	<a href=\"http://eisbaer.essentrix.net\">BACK TO SITE</a>&nbsp;&nbsp;&nbsp;</td></tr>	
	</table>
	<br>";
	
}
?>
