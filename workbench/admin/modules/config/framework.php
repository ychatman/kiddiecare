<?php
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
class users{
	function getuser($id=""){
		$lang = new lang();
		$config = new KConfig();
		$qry="SELECT `".$config->dbprefix."g_user`.*, `".$config->dbprefix."g_person`.firstname, `".$config->dbprefix."g_person`.lastname FROM `".$config->dbprefix."g_user` LEFT JOIN `".$config->dbprefix."g_person` ON `".$config->dbprefix."g_user`.personid = `".$config->dbprefix."g_person`.personid WHERE `".$config->dbprefix."g_user`.userid != '-1'";
		if ($id!=''){
			$qry.="AND `".$config->dbprefix."g_user`.userid = ".$id;
		}
		mysql::connect($config->dbname);
		$result=mysql_query($qry);
		$r=0;
		while ($row = mysql_fetch_array($result)){
			$userlist[$r]['userid']=$row['userid'];
			$userlist[$r]['title']=$row['title'];
			$userlist[$r]['personid']=$row['personid'];
			$userlist[$r]['identifier']=$row['identifier'];
			$userlist[$r]['username']=$row['username'];
			$userlist[$r]['isactive']=$row['isactive'];
			$userlist[$r]['isadmin']=$row['isadmin'];
			$userlist[$r]['firstname']=$row['firstname'];
			$userlist[$r]['lastname']=$row['lastname'];
			$r++;
		}
		return($userlist);
	}
	function usertable($userlist){
		$config = new KConfig();
		$lang = new lang();
		$return="<table class='usertable'> <tr id='table_header'><th id='selector'>&nbsp;</th><th id='userid'>ID</th><th id='username'>".$lang->USERNAME."</th><th id='title'>".$lang->TITLE."</th><th id='name'>".$lang->FULLNAME."</th><th id='active'>".$lang->ACTIVE."</th><th id='admin'>".$lang->ADMIN."</th><th id='edit'>".$lang->EDIT."</th><th id='delete'>".$lang->DELETE."</th></tr>";
		$i=0;
		while($i<count($userlist)){
			$return.= "<tr id='table_data'><td id='selector'></td>";
			$return.= "<td id='userid'>".$userlist[$i]['userid']."</td>";
			$return.= "<td id='username'>".$userlist[$i]['username']."</td>";
			$return.= "<td id='title'>".$userlist[$i]['title']."</td>";
			$return.= "<td id='name'>".$userlist[$i]['firstname']." ".$userlist[$i]['lastname']."</td>";
			if ($userlist[$i]['isactive'] == '1'){
				$return.= "<td id='active'><a href='?module=config&page=user&action=deactivate'><img src='".$config->base_url."/admin/templates/".$_SESSION['KC_USER']['TEMPLATE']."/images/tick.png' title='Yes'></a></td>";
			} else {
				$return.= "<td id='active'><a href='?module=config&page=user&action=activate'><img src='".$config->base_url."/admin/templates/".$_SESSION['KC_USER']['TEMPLATE']."/images/x.png' title='No'></a></td>";
			}
			if ($userlist[$i]['isadmin'] == '1'){
				if ($userlist[$i]['userid'] == $_SESSION['KC_USER']['USERID']){
					$return.= "<td id='admin'><img src='".$config->base_url."/admin/templates/".$_SESSION['KC_USER']['TEMPLATE']."/images/no_tick.png' title='Yes'></td>";
				} else {
					$return.= "<td id='admin'><a href='?module=config&page=user&action=noadmin'><img src='".$config->base_url."/admin/templates/".$_SESSION['KC_USER']['TEMPLATE']."/images/tick.png' title='Yes'></a></td>";
				}
			} else {
				$return.= "<td id='admin'><a href='?module=config&page=user&action=makeadmin'><img src='".$config->base_url."/admin/templates/".$_SESSION['KC_USER']['TEMPLATE']."/images/x.png' title='No'></a></td>";
			}
			$return.="<td id='edit'><a href='?module=config&page=user&action=edit&itemid=".$userlist[$i]['userid']."'><img src='".$config->base_url."/admin/templates/".$_SESSION['KC_USER']['TEMPLATE']."/images/edit.png' title='Edit'></a></td>";
			if ($userlist[$i]['userid'] == $_SESSION['KC_USER']['USERID']){
				$return.="<td id='delete'><img src='".$config->base_url."/admin/templates/".$_SESSION['KC_USER']['TEMPLATE']."/images/no_delete.png' title='No Delete'></td>";
			} else {
				$return.="<td id='delete'><a href='?module=config&page=user&action=delete&itemid=".$userlist[$i]['userid']."'><img src='".$config->base_url."/admin/templates/".$_SESSION['KC_USER']['TEMPLATE']."/images/delete.png' title='Delete'></td>";
			}
			
			$return.="</tr>";
			$i++;
		}
		$return.="</table>";
		return ($return);
	}
	function newuser(){
		$config = new KConfig();
		$lang = new lang();
		$return="<h3>".$lang->ADD." ".$lang->USER."</h3>";
		return($return);
	}
	function edituser(){
		$itemid=$_GET['itemid'];
		$config = new KConfig();
		$lang = new lang();
		$return="<h3>".$lang->EDIT." ".$lang->USER."</h3>";
		if (!$_GET['itemid']){
			$return.="<h4>".$lang->NODATA."</h4>";
		} else {
			$return.=html::formOpen($config->base_url."admin/index.php?module=config&page=user&action=save&itemid=".$itemid,"post");
			$qry="SELECT `".$config->dbprefix."g_user`.*, `".$config->dbprefix."g_person`.firstname, `".$config->dbprefix."g_person`.lastname FROM `".$config->dbprefix."g_user` LEFT JOIN `".$config->dbprefix."g_person` ON `".$config->dbprefix."g_user`.personid = `".$config->dbprefix."g_person`.personid WHERE `".$config->dbprefix."g_user`.userid = ".$itemid;
			mysql::connect($config->dbname);
			$result=mysql_query($qry);
			while ($row = mysql_fetch_array($result)){
			//($name, $type="text", $id="", $size="40", $value="", $attributes="")
				$return.=html::formInput("userid", "hidden", "", "40", $row['userid']);
				$return.=html::formInput("title", "text", "", 40, $row['title'])."<br>";
				$return.=html::formInput("username", "text", "", 40, $row['username'])."<br>";
				$return.=html::formInput("password", "password", "", 40)."<br>";
				$return.=html::formInput("password_c", "password", "", 40)."<br>";
				$return.=html::languageDropdown("language", $row['lang'])."<br>";
				$return.=html::formInput("active", "check", "", 40, $row['isactive'])."<br>";
				$return.=html::formInput("admin", "check", "", 40, $row['isadmin'])."<br>";
				$return.=html::formInput("testdropdown", "dropdown", "", 1, array(array("value"=>1,"label"=>"One"),array("selected"=>1, "value"=>2,"label"=>"Two")))."<br>";
			}
			"<br>";
			$return.=html::formClose();
			//<button value='Save' name='Save'></button></form>
		}
		return($return);
	}
}
?>