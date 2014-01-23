<?php
//Start session
	session_start();
	//Include database connection details
	if (file_exists('../../../config.php')) {
		require_once ('../../../config.php');
	} else {
		require_once ('../../../config-dist.php');
	}
	//Array to store validation errors
	$errmsg_arr = array();
	
	//Validation error flag
	$errflag = false;
	$config = new KConfig();
		class mysql{
//Select database
	function connect(){
		//Connect to mysql server
		$config = new KConfig();
		$link = mysql_connect($config->dbhost, $config->dbuser, $config->dbpassword);
		if(!$link) {
			die('Failed to connect to server: ' . mysql_error());
		}
		$select = mysql_select_db($config->dbname);
		if(!$select) {
			die("Unable to select database");
		}
	}
}
	mysql::connect($config->dbname);
		
	//Function to sanitize values received from the form. Prevents SQL injection
	function clean($str) {
		$str = @trim($str);
		if(get_magic_quotes_gpc()) {
			$str = stripslashes($str);
		}
		return mysql_real_escape_string($str);
	}
	
	//Sanitize the POST values
	$login = clean($_POST['login']);
	$password = md5($_POST['password']);
	
	//Input Validations
	if($login == '') {
		$errmsg_arr[] = $lang->LOGINMISSING;
		$errflag = true;
	}
	if($password == '') {
		$errmsg_arr[] = $lang->PASSWORDMISSING;
		$errflag = true;
	}
	
	//If there are input validations, redirect back to the login form
	if($errflag) {
		$_SESSION['ERRMSG_ARR'] = $errmsg_arr;
		session_write_close();
		header("location: ../index.php");
		exit();
	}
	
	//Create query
	$qry="SELECT * FROM ".$config->dbprefix."g_user WHERE username='".$login."' AND password='".$password."' AND isactive='1' AND isadmin='1'";
	$result=mysql_query($qry);
	
	//Check whether the query was successful or not
	if($result) {
		if(mysql_num_rows($result) == 1) {
			//Login Successful
			session_regenerate_id();
			$adminuser = mysql_fetch_assoc($result);
			$_SESSION['KC_USER']['USERID'] = $adminuser['userid'];
			$_SESSION['KC_USER']['TITLE'] = $adminuser['title'];
			$_SESSION['KC_USER']['PERSONID'] = $adminuser['personid'];
			$_SESSION['KC_USER']['ISADMIN'] = $adminuser['isadmin'];
			$_SESSION['KC_USER']['IDENTIFER'] = $adminuser['identifer'];
			$_SESSION['KC_USER']['USERGROUPTID'] = $adminuser['usergrouptid'];
			if (is_null($adminuser['template'])){
				$_SESSION['KC_USER']['TEMPLATE']=$config->template;
			} else {
				$_SESSION['KC_USER']['TEMPLATE']=$adminuser['template'];
			}
			if (is_null($adminuser['lang'])){
				$_SESSION['KC_USER']['LANG']=$config->language;
			} else {
				$_SESSION['KC_USER']['LANG']=$adminuser['lang'];
			}
			$qry="SELECT * FROM ".$config->dbprefix."g_person WHERE personid='".$adminuser['personid']."'";
			$result=mysql_query($qry);
			$adminuser = mysql_fetch_assoc($result);
			$_SESSION['KC_USER']['FIRST_NAME'] = $adminuser['firstname'];
			$_SESSION['KC_USER']['MIDDLE_INITIAL'] = $adminuser['middleinit'];
			$_SESSION['KC_USER']['LAST_NAME'] = $adminuser['lastname'];
			$qry="SELECT * FROM ".$config->dbprefix."g_usergrouplimits WHERE usergrouptid='".$_SESSION['KC_USER']['USERGROUPTID']."'";
			$result=mysql_query($qry);
			$adminuser = mysql_fetch_assoc($result);
			$_SESSION['KC_USER']['ACL']['ALIAS'] = $adminuser['alias'];
			$_SESSION['KC_USER']['ACL']['FRONT_END'] = $adminuser['front_end'];
			$_SESSION['KC_USER']['ACL']['CONFIG'] = $adminuser['config'];
			$_SESSION['KC_USER']['ACL']['GENERAL'] = $adminuser['gen'];
			$_SESSION['KC_USER']['ACL']['AR'] = $adminuser['ar'];
			$_SESSION['KC_USER']['ACL']['AP'] = $adminuser['ap'];
			$_SESSION['KC_USER']['ACL']['FP'] = $adminuser['fp'];
			$_SESSION['KC_USER']['ACL']['ED'] = $adminuser['ed'];
			$_SESSION['KC_USER']['ACL']['PR'] = $adminuser['pr'];
			session_write_close();
			header("location: ../../index.php");
			exit();
		}else {
			//Login failed
			$errmsg_arr[] = $lang->ACCESSDENIED;
			$_SESSION['ERRMSG_ARR'] = $errmsg_arr;
			session_write_close();
			header("location: ../../index.php");
			exit();
		}
	}else {
		die("Query failed");
	}
?>