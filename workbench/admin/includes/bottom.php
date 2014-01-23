<?php
$debugexcludeList = array('GLOBALS', '_FILES', '_COOKIE', '_POST', 'debugexcludeList', '_ENV', 'HTTP_ENV_VARS', '_SERVER');
$config = new KConfig();
if ($config->debug==1){
	if($_SERVER['REMOTE_ADDR']==$config->debugip){
		/**
		* @desc   works out the variables in the current scope(from where function was called).
		*         Returns an array with variable name as key and vaiable value as value
		* @param  $varList: variables returned by get_defined_vars() in desired scope.
		*         $excludeList: variables to be excluded from the list.
		* @return array
		*/
		function getDefinedVars($varList, $excludeList){
			$temp1 = array_values(array_diff(array_keys($varList), $excludeList));
			$temp2 = array();
			while (list($key, $value) = each($temp1)) {
				global $$value;
				$temp2[$value] = $$value;
			}
			return $temp2;
		}
		$varList = get_defined_vars();
echo "<pre style='background-color: #F3F781'>";
	print_r(getDefinedVars($varList, $debugexcludeList));
echo "</pre>";
	}
}
?>
