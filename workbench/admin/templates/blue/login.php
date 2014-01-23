<div id='adminlogin'>
<h1> <?php echo $lang->ADMINLOGIN; ?></h1>
<?php
	if( isset($_SESSION['ERRMSG_ARR']) && is_array($_SESSION['ERRMSG_ARR']) && count($_SESSION['ERRMSG_ARR']) >0 ) {
		echo '<ul class="err">';
		foreach($_SESSION['ERRMSG_ARR'] as $msg) {
			echo '<li>',$msg,'</li>'; 
		}
		echo '</ul>';
		unset($_SESSION['ERRMSG_ARR']);
	}
	if( isset($_SESSION['ERRMSG_ARR']) && !is_array($_SESSION['ERRMSG_ARR'])) {
		echo '<ul class="err">';
			echo '<li>',$_SESSION['ERRMSG_ARR'],'</li>'; 
		echo '</ul>';
		unset($_SESSION['ERRMSG_ARR']);
	}
?>
<form id="adminloginForm" name="adminloginForm" method="post" action="modules/user/login.php">
  <table border="0" align="center" cellpadding="2" cellspacing="0">
    <tr>
      <th>Login:</td>
      <td><input name="login" type="text" class="textfield" id="login" /></td>
    </tr>
    <tr>
      <th>Password:</td>
      <td><input name="password" type="password" class="textfield" id="password" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Login" /></td>
    </tr>
  </table>
</form>
</div>