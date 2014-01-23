<?php
/**
* @version		0.1
* @package		KiddieCare
* @copyright	Copyright (C) 2014 Moko Consulting. All rights reserved.
*/
class head{
	function css(){
		$config = new KConfig();
		echo "<link rel='stylesheet' type='text/css' href='".$config->base_url."admin/templates/".$config->template."/css/style.css'>\n<link rel='stylesheet' type='text/css' href='".$config->base_url."admin/includes/css/system.css'>";
	}
	function script(){
		if(isset($_SESSION['ERRMSG_ARR'])){
			$lang = new lang();
			$config = new KConfig();
			$return="<script language='JavaScript'>\n";
			$return.="<!--\n";
			$return.="alert(\"ERROR: \\n";
			foreach ($_SESSION['ERRMSG_ARR'] as $err){
				$return.="     >".$err."\\n";
			}
			$return.="\");\n";
			$return.="//-->\n";
			$return.="</script>";
			unset($_SESSION['ERRMSG_ARR']);
			echo $return;
		}
	}
	
}
class layout{
	function welcome(){
		$lang = new lang();
		$config = new KConfig();
		$return= "&nbsp;<strong>".$lang->WELCOME."</strong> - ".$_SESSION['KC_USER']['FIRST_NAME']." ".$_SESSION['KC_USER']['LAST_NAME']."&nbsp;|&nbsp;<a href='?module=config&page=user&action=edit&itemid=".$_SESSION['KC_USER']['USERID']."' id='myaccount'>".$lang->MYACCOUNT."</a>&nbsp;|&nbsp;";
		if ($_SESSION['KC_USER']['ACL']['CONFIG']>0){
				$return.= "<a href='".$config->base_url."admin/?module=config'>".$lang->CONFIGURATION."</a>&nbsp;|&nbsp;";
			}
		$return.="<a id='logout' href='index.php?action=logout'>".$lang->LOGOUT."</a>";
		return($return);
	}
	function timestamp(){
		$lang = new lang();
		$config = new KConfig();
		date_default_timezone_set($config->timezone);
		$return=date('l | F d, Y | h:i a');
		return($return);
	}
	function footer(){
		$lang = new lang();
		$config = new KConfig();
		$return="&copy; ".date('Y')." ".$config->site_name." ".$lang->ALLRIGHTSRESERVED."<br>".$lang->CONFIDENTIALITY;
		return($return);
	}
	function content($component=''){
		$lang = new lang();
		$config = new KConfig();
		$module = $_GET['module'];
		if ($component==''){
		}
		if ($component=='mainmenu'){
			$return= "<ul>";
			$return.= "<li><a href='".$config->base_url."admin/'>".$lang->DASHBOARD."</a></li>";
			if ($_SESSION['KC_USER']['ACL']['GENERAL']>0){
				$return.= "<li><a href='".$config->base_url."admin/?module=fd'>".$lang->FAMILYDATA."</a></li>";
			}
			if ($_SESSION['KC_USER']['ACL']['ED']>0){
				$return.= "<li><a href='".$config->base_url."admin/?module=ed'>".$lang->EMPLOYEEDATA."</a></li>";
			}
			if ($_SESSION['KC_USER']['ACL']['PR']>0){
				$return.= "<li><a href='".$config->base_url."admin/?module=pr'>".$lang->PAYROLL."</a></li>";
			}
			if ($_SESSION['KC_USER']['ACL']['GL']>0){
				$return.= "<li><a href='".$config->base_url."admin/?module=gl'>".$lang->GENERALLEDGER."</a></li>";
			}
			if ($_SESSION['KC_USER']['ACL']['FP']>0){
				$return.= "<li><a href='".$config->base_url."admin/?module=fp'>".$lang->FOODPROGRAM."</a></li>";
			}
			$return.= "</ul>";
			return($return);
		}
		if ($component=='quicklinks'){
			$return= "<span id='quicklinks'>".$lang->QUICKLINKS.">> &nbsp;</span>";
			$return.= "<ul>";
				if ($module=='config'){
					$return.= "<li><a href='".$config->base_url."admin/?module=config&page=users'>".$lang->USERS."</a></li>";
				}
				if ($module=='fd'){
					$return.= "FD";
				}
				if ($module=='ed'){
					$return.= "ED";
				}
				if ($module=='pr'){
					$return.= "PR";
				}
				if ($module=='gl'){
					$return.= "GL";
				}
				if ($module=='fp'){
					$return.= "fp";
				}
			$return.= "</ul>";
			return($return);
		}
		if ($component=='main'){
			if ($module==''){
				require_once ('../modules/dashboard/component.php');
			} else {
				require_once ('modules/'.$module.'/component.php');
			}
		}
	}
}
class footer{
	function copyright(){
		$lang = new lang();
		$config = new KConfig();
		echo "&copy; ".date('Y')." ".$config->site_name." ".$lang->ALLRIGHTSRESERVED;
	}
	function confidentiality(){
		$lang = new lang();
		echo "<br>".$lang->CONFIDENTIALITY;
	}
}
?>