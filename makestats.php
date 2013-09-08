#!/usr/bin/php -q
<?php
$version = "61";
$update = false;
$quiet = false;
$verbose = false;

$i = 1;
while ($i < $argc)
{
	if (substr_count($argv[$i], "u") > 0)
		$update = true;

	if (substr_count($argv[$i], "v") > 0)
		$verbose = true;

	if (substr_count($argv[$i], "q") > 0)
		$quiet = true;

	if (substr_count($argv[$i], "31") > 0)
                $version = "31";

	if (substr_count($argv[$i], "52") > 0)
		$version = "52";

	if (substr_count($argv[$i], "61") > 0)
		$version = "61";

	if (substr_count($argv[$i], "71") > 0)
		$version = "71";
	$i++;
}

$sql_user = "root";
$sql_host = "127.0.0.1:3306";
$sql_db = "cs_" . $version . "stats";
$sql_pass = "sie6903";
$sqltable_players = "player";
$sqltable_maps = "maps";
$sqltable_weapons = "weapons";
$sqltable_kills = "kills";
$sqltable_wpn_types = "wpn_types";

$log_path = "/usr/local/games/hla/hlds_l/cstrk" . $version . "/logs";
$log_path_old = "/usr/local/games/hla/hlds_l/cstrk" . $version . "/logs/old";

$no_players = "Upload, Upload By t4r1k, Anonymous, Blaster, Player, Freshmeat";

$num_files = 0;
$num_lines = 0;
$script_path = "/usr/local/games/playerstats/";
$last_file = file_get_contents($script_path . "last_file" . $version);
$last_line = file_get_contents($script_path . "last_line" . $version);
$last_file_new = $last_file;
$last_line_new = $last_line;
$total_kills = 1;


mysql_connect($sql_host,$sql_user,$sql_pass);
@mysql_select_db($sql_db) or die("Unable to select database");

$query = "SELECT id, ent, ct_kills FROM $sqltable_weapons";
$result = MYSQL_QUERY($query) or die('Query failed: ' . mysql_error() . "<br />\n$sql"); 
$result = mysql_query($query);
$num = mysql_numrows($result);
$i = 0;

while ($i < $num)
{
	$weapons['id'][$i] = mysql_result($result,$i,"id");
	$weapons['ent'][$i] = mysql_result($result,$i,"ent");
	if ($update)
		$weapons['ct_kills'][$i] = mysql_result($result,$i,"ct_kills");
	else
		$weapons['ct_kills'][$i] = 0;
	$i++;
}


$query = "SELECT id, name, ct_kills, ct_deaths FROM $sqltable_players";
$result = mysql_query($query);
$num = mysql_numrows($result);
$i = 0;

while ($i < $num)
{
	$players['id'][$i] = mysql_result($result,$i,"id");
	$players['name'][$i] = mysql_result($result,$i,"name");

	if ($update)
	{
		$players['ct_kills'][$i] = mysql_result($result,$i,"ct_kills");
		$players['ct_deaths'][$i] = mysql_result($result,$i,"ct_deaths");
		$total_kills += $players['ct_kills'][$i];
	} else
	{
		$players['ct_kills'][$i] = 0;
		$players['ct_deaths'][$i] = 0;
	}

	$i++;
}

if ($update)
	analyse_dir($log_path, false);
else
{
//	analyse_dir($log_path_old, true);
	analyse_dir($log_path, true);
}

if (!$quiet)
	echo "$num_files files and $num_lines lines analysed\n";

write_data();
file_put_contents($script_path . "last_file" . $version, $last_file_new);
file_put_contents($script_path . "last_line" . $version, $last_line_new);


function player_add($player)
{
	global $players, $sqltable_players, $no_players;

	if (substr_count($no_players, $player) + substr_count($player, "(1)") + substr_count($player, "(2)") > 0)
		return;

	$i = 0;
	while ($i < count($players['name']))
	{
		if (strtolower($players['name'][$i]) == strtolower($player))
			return;

		$i++;
	}

	$players['name'][$i] = $player;
	$players['id'][$i] = -1;
	$players['ct_kills'][$i] = 0;
	$players['ct_deaths'][$i] = 0;
/*
	$query = "INSERT $sqltable_players (name, ct_kills, ct_deaths) VALUES('$player', 0, 0)";
	$result = mysql_query($query);

	$query = "SELECT id FROM $sqltable_players WHERE name='$player'";
	$result = mysql_query($query);
	
	$num = mysql_numrows($result);
	if ($num > 0)
		$players['id'][$i] = mysql_result($result, 0, "id");
*/
}

function player_kill($player, $weapon, $active)
{
	global $weapons, $players, $no_players, $total_kills;
	$weapon_err = false;

	if (!$active)	
	{
		$total_kills++;
		$i = 0;
		while ($i < count($weapons['ent']))
		{
			if ($weapons['ent'][$i] == $weapon)
			{
				$weapons['ct_kills'][$i]++;
				break;
			}

			$i++;
		}

		if ($i == count($weapons['ent']))
			 $weapon_err = true;
	}

	if ($player != "")
	{
		if (substr_count($no_players, $player) + substr_count($player, "(1)") + substr_count($player, "(2)") == 0)
		{

			$i = 0;
			while ($i < count($players['name']))
			{
				if (strtolower($players['name'][$i]) == strtolower($player))
				{
					if ($active)	
						$players['ct_kills'][$i]++;
					else
						$players['ct_deaths'][$i]++;

				}
				$i++;
			}
		}
	}

	return $weapon_err;

}


function analyse_file($file_name)
{
	global $last_file, $last_line, $last_line_new, $last_file_new, $num_files, $num_lines, $verbose, $update;
	$file = file($file_name);
	
	if ($verbose)
		echo $file_name . "\n";

	if ($file_name == $last_file AND $update)
		$i = $last_line;
	else
		$i = 0;

	$max = count($file);

	$num_files++;
	$num_lines += $max - $i;

	$last_file_new = $file_name;
	$last_line_new = $max;

	while ($i < $max)
	{	
		$line = $file[$i];

		if (substr_count($line, " has entered the game") == 1)
		{
			$line = trim($line, "\n");
			$line_pieces = explode("\"", $line);

			$pos = stripos($line_pieces[1], "<", 3);

			if ($pos !== false)
				$player = substr($line_pieces[1], 0, $pos);
			else
				$player = $line_pieces[1];

			player_add($player);
		}

		if (substr_count($line, " killed ") == 1)
		{
			$line = trim($line, "\n");
			$line_pieces = explode("\"", $line);

			if (substr_count($line, " killed by world with ") == 1)
			{
				//$player1 dunno of what he died ^^
				$player = substr($line_pieces[1], 0, stripos($line_pieces[1], "<"));

				$weapon = "world_".substr($line_pieces[2], 22);

				if (player_kill($player, $weapon, false))
					echo $line."\n".$weapon."\n";

			} else if (substr_count($line, " killed self with ") == 1)
			{
				//$player1 died of something
				$player = substr($line_pieces[1], 0, stripos($line_pieces[1], "<"));

				$weapon = "self_".substr($line_pieces[2], 18);

				if (player_kill($player, $weapon, false))
					echo $line."\n".$weapon."\n";

			} else 
			{
				//$player1 killed $player2 with $weapon
				$player1 = substr($line_pieces[1], 0, stripos($line_pieces[1], "<"));
				$player2 = substr($line_pieces[3], 0, stripos($line_pieces[3], "<"));

				$weapon = substr($line_pieces[4], 6);
	
				player_kill($player1, $weapon, true);
				player_kill($player2, $weapon, false);
			}
		}


		
		$i++;
	}
}

function analyse_dir($dir_path, $new)
{
	global $last_file;
	if ($handle = opendir($dir_path))
	{
		while (false !== ($file = readdir($handle)))
		{
			if (is_file($dir_path ."/" . $file))
			{
				if ($dir_path ."/" . $file == $last_file)
					$new = true;

				if ($new)
					analyse_file($dir_path ."/" . $file);
			}
		}
	}
}

function write_data()
{
	global $players, $weapons, $sqltable_players, $sqltable_weapons, $total_kills, $update;
	$i = 0;
	$id = 0;
	$ct_kills = 0;
	$ct_deaths = 0;

	while ($i < count($players['name']))
	{
		$id = $players['id'][$i];
		$name = $players['name'][$i];
		$ct_kills = $players['ct_kills'][$i];
		$ct_deaths = $players['ct_deaths'][$i];

		$kills_part = $ct_kills*100/$total_kills;

		if ($ct_deaths == 0 OR $ct_deaths + $ct_kills < 1)
			$ratio = $ct_kills;
		else
			$ratio = round($ct_kills/$ct_deaths, 2);

		if ($ct_kills + $ct_deaths > 0)
		{
			if ($id == -1)
				$query = "INSERT INTO $sqltable_players (name, ct_kills, ct_deaths, ratio, kills_part) VALUES ('$name', '$ct_kills', '$ct_deaths', '$ratio', '$kills_part')";
			else
				$query = "UPDATE $sqltable_players SET ct_kills='$ct_kills', ct_deaths='$ct_deaths', ratio='$ratio', kills_part='$kills_part' WHERE id='$id'";
				mysql_query($query);
		}
		$i++;
	}

	$i = 0;
	while ($i < count($weapons['id']))
	{
		$id = $weapons['id'][$i];
		$ct_kills = $weapons['ct_kills'][$i];

		$kills_part = $ct_kills*100/$total_kills;
		
		$query = "UPDATE $sqltable_weapons SET ct_kills='$ct_kills', kills_part='$kills_part' WHERE id='$id'";
		mysql_query($query);
		$i++;
	}
	
}
?>
