<?php
/**
* @version		0.1
* @package		KiddieCare
* @copyright	Copyright (C) 2014 Moko Consulting. All rights reserved.
*/
class KConfig {
	var $offline = '0';
	var $debug = '0';
	var $debugip = '';
	var $salt = '';
	var $log_path = '';
	var $tmp_path = '';
	var $dbhost = 'localhost';
	var $dbuser = '';
	var $dbname = '';
	var $dbprefix = 'kc_';
	var $dbpassword = '';
	var $offline_message = 'This site is down for maintenance. Please check back again soon.';
	var $template = 'blue';
	var $language = 'en';
	var $site_name = '';
	var $timezone = '';
	var $base_url = '';
}
?>