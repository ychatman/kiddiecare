<?php
if (file_exists('../../../config.php')) {
	require_once ('../../../config.php');
} else {
	require_once ('../../../config-dist.php');
}
$config = new KConfig();
$link = mysql_connect($config->dbhost, $config->dbuser, $config->dbpassword);
if (!$link) {
    echo 'Could not connect: ' . mysql_error();
} else {
	echo '<h1>Connected successfully</h1><br>';
	mysql_select_db($config->dbname, $link);
	$query = "SHOW TABLES";
	$result = mysql_query($query);
	while($row = mysql_fetch_array($result)){
		$key = $row['Tables_in_'.$config->dbname.''];
		$dump[]['table_name'] = $key;
		unset($key);
	}
	$i=0;
	while ($i<=count($dump)) {
		$table=$dump[$i]['table_name'];
		$query="Describe ".$table;
		$result = mysql_query($query);
		$r=0;
		while($row = mysql_fetch_array($result)){
			$dump[$i]['tabledata'][$r]['field'] = $row['Field'];
			$dump[$i]['tabledata'][$r]['type'] = $row['Type'];
            $dump[$i]['tabledata'][$r]['null'] = $row['Null'];
            $dump[$i]['tabledata'][$r]['key'] = $row['Key'];
            $dump[$i]['tabledata'][$r]['default'] = $row['Default'];
            $dump[$i]['tabledata'][$r]['extra'] = $row['Extra'];
			$cqry="SHOW FULL COLUMNS FROM ".$table." WHERE Field='".$row['Field']."'";
			$cresult=mysql_query($cqry);
			while($crow = mysql_fetch_assoc($cresult)){
				$dump[$i]['tabledata'][$r]['comment'] = $crow['Comment'];
			}
			$r++;
		}
		$r=0;
		$query="SHOW INDEXES FROM ".$table;
		$result = mysql_query($query);
		while($row = mysql_fetch_array($result)){
			$dump[$i]['tableindex'][$r]['Non_unique'] = $row['Non_unique'];
			$dump[$i]['tableindex'][$r]['Key_name'] = $row['Key_name'];
			$dump[$i]['tableindex'][$r]['Seq_in_index'] = $row['Seq_in_index'];
			$dump[$i]['tableindex'][$r]['Column_name'] = $row['Column_name'];			
			$dump[$i]['tableindex'][$r]['Collation'] = $row['Collation'];
			$dump[$i]['tableindex'][$r]['Cardinality'] = $row['Cardinality'];
			$dump[$i]['tableindex'][$r]['Sub_part'] = $row['Sub_part'];
			$dump[$i]['tableindex'][$r]['Packed'] = $row['Non_unique'];
			$dump[$i]['tableindex'][$r]['Null'] = $row['Non_unique'];
			$dump[$i]['tableindex'][$r]['Index_type'] = $row['Non_unique'];
			$dump[$i]['tableindex'][$r]['Comment'] = $row['Non_unique'];
			$r++;
		}
		$r=0;
		$query="Select * FROM ".$table;
		$result = mysql_query($query);
		while($row = mysql_fetch_assoc($result)){
			$dump[$i]['defaultdata'][$r]=$row;
			$r++;
		}
		$i++;
	}
	$i=0;
		$myFileIndex = "../../../../wiki/DatabaseSchema.wiki";
		$fhi = fopen($myFileIndex, 'w') or die("can't open file");
		$stringDataI ="#summary Details of mySQL database schema.\n=Database Schema=\n\n";
		fwrite($fhi, $stringDataI);
	while ($i<count($dump)) {
		$r=0;
		$myFile = "../../../../wiki/".substr($dump[$i]['table_name'], -(strlen($dump[$i]['table_name'])-strlen($config->dbprefix))).".wiki";
		echo "<br>writing ".$myFile;
		$stringDataI = "===[".substr($dump[$i]['table_name'], -(strlen($dump[$i]['table_name'])-strlen($config->dbprefix)))."]==\n";
		fwrite($fhi, $stringDataI);
		$fh = fopen($myFile, 'w') or die("can't open file");
		$stringData = "#summary Details of mySQL database schema for table: ".substr($dump[$i]['table_name'], -(strlen($dump[$i]['table_name'])-strlen($config->dbprefix)))."\n=[DatabaseSchema < Database Schema]=\n\n";
		fwrite($fh, $stringData);
		$stringData = "==".$dump[$i]['table_name']."==\n";
		fwrite($fh, $stringData);
		$stringData = "|| *Field* || Type || Null || Key || Default || Extra || Comment ||\n";
		fwrite($fh, $stringData);
		while ($r<count($dump[$i]['tabledata'])){
			$stringData = "|| *".$dump[$i]['tabledata'][$r]['field']."* || ".$dump[$i]['tabledata'][$r]['type']." || ".$dump[$i]['tabledata'][$r]['null']." || ".$dump[$i]['tabledata'][$r]['key']." || ".$dump[$i]['tabledata'][$r]['default']." || ".$dump[$i]['tabledata'][$r]['extra']." || ".$dump[$i]['tabledata'][$r]['comment']." ||\n";
			fwrite($fh, $stringData);
			$r++;
		}
		$r=0;
		$stringData = "\n\n===Indexes===\n";
		fwrite($fh, $stringData);
		$stringData = "|| *Keyname* || Type || Unique || Packed || Column || Seq || Cardinality || Collation || Null || Comment ||\n";
		fwrite($fh, $stringData);
		while ($r<count($dump[$i]['tableindex'])){
			$stringData = "|| *".$dump[$i]['tableindex'][$r]['Key_name']."* || ".$dump[$i]['tableindex'][$r]['Index_type']." || ".$dump[$i]['tableindex'][$r]['Non_unique']." || ".$dump[$i]['tableindex'][$r]['Packed']." || ".$dump[$i]['tableindex'][$r]['Column_name']." || ".$dump[$i]['tableindex'][$r]['Seq_in_index']." || ".$dump[$i]['tableindex'][$r]['Cardinality']." || ".$dump[$i]['tableindex'][$r]['Collation']." || ".$dump[$i]['tableindex'][$r]['Null']." || ".$dump[$i]['tableindex'][$r]['Comment']." ||\n";
			fwrite($fh, $stringData);
			$r++;
		}
		$r=0;
		$stringData = "\n\n===Default Data===\n";
		fwrite($fh, $stringData);
		if (!$dump[$i]['defaultdata']){
			$stringData = "No Default Data";
		} else {
			$stringData="";
			while ($r<count($dump[$i]['tabledata'])){
				$stringData.= "|| ".$dump[$i]['tabledata'][$r]['field']." ";
				$r++;
			}
			$stringData.="||\n";
			
			$r=0;
			while ($r<count($dump[$i]['defaultdata'])){
				foreach ($dump[$i]['defaultdata'][$r] as $d){
					$stringData.= "|| ".$d." ";
				}
				$r++;
			$stringData.="||\n";
			}
		}
		fwrite($fh, $stringData);
		fclose($fh);
		$i++;
	}
	fclose($fhi);
}
mysql_close($link);
/**
			* @desc   works out the variables in the current scope(from where function was called).
			*         Returns an array with variable name as key and vaiable value as value
			* @param  $varList: variables returned by get_defined_vars() in desired scope.
			*         $excludeList: variables to be excluded from the list.
			* @return array
			*/
			function getDefinedVars($varList, $excludeList)
			{
				$temp1 = array_values(array_diff(array_keys($varList), $excludeList));
				$temp2 = array();
				while (list($key, $value) = each($temp1)) {
					global $$value;
					$temp2[$value] = $$value;
				}
				return $temp2;
			}
 
			/**
			* @desc   holds the variable that are to be excluded from the list.
			*         Add or drop new elements as per your preference.
			* @var    array
			*/
 			//get all variables defined in current scope
			$varList = get_defined_vars();
			$debugexcludeList = array('GLOBALS', '_FILES', '_COOKIE', '_POST', 'debugexcludeList', '_ENV', 'HTTP_ENV_VARS', '_SERVER');
			//Time to call the function
			print "<pre style='background-color: #F3F781'>";
				print_r(getDefinedVars($varList, $debugexcludeList));
			print "</pre>";

?>