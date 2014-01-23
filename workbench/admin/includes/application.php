<?php
session_start();
if($_GET['action']=='logout'){
	session_destroy();
	session_start();
	$_SESSION['ERRMSG_ARR'] = array($lang->LOGGEDOUT);
}
if(!isset($_SESSION['KC_USER']['USERID'])) {
	include ('modules/user/login.php');
} else {
	if($_SESSION['KC_USER']['ISADMIN']!=1){
		$lang = new lang();
		session_destroy();
		session_start();
		$_SESSION['ERRMSG_ARR'] = array($lang->ACCESSDENIED);
		require_once ('modules/user/login.php');
		exit();
	} else {
		include ('includes/framework.php');
		require_once ('includes/htmlOutput.php');
		$lang = new lang();
	}
	require_once ('templates/'.$_SESSION['KC_USER']['TEMPLATE'].'/index.php');
}
?>