<?php
/**
* @version		0.1
* @package		KiddieCare
* @copyright	Copyright (C) 2014 Moko Consulting. All rights reserved.
*/
session_start();
if (file_exists('../config.php')) {
    require_once ('../config.php');
} else {
    require_once ('../config-dist.php');
}
$config = new KConfig();
require_once ('includes/language.php');
?>