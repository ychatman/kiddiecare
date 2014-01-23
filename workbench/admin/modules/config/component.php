<?php
include ('framework.php');
if ($_GET['page']=='users'){
	$lang = new lang();
	$config = new KConfig();
	echo "<h2>".$lang->USERS."</h2>";
	$userlist=users::getuser();
	echo users::usertable($userlist);
}
if ($_GET['page']=='user'){
	if ($_GET['action']=='new'){
	}
	if ($_GET['action']=='edit'){
		echo users::edituser();
	}
	if ($_GET['action']=='save'){
	}
}
echo "<div class='clr'>&nbsp;</div>";
?>