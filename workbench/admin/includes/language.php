<?php
	if (isset($_SESSION['KC_USER']['LANG'])){
		if (file_exists('language/'.$_SESSION['KC_USER']['LANG'].'.php')){
			include('language/'.$_SESSION['KC_USER']['LANG'].'.php');
		} else {
			session_start();
			include('language/'.$config->language.'.php');
			$lang = new lang();
			$_SESSION['ERRMSG_ARR']=array($lang->LANGUAGEFILEERROR);
		}
	} else {
		include('language/'.$config->language.'.php');
	}
?>