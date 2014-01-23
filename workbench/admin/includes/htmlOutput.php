<?php
class html{
	function languageDropdown($name, $selected="", $attributes=""){
		$lang = new lang();
		$config = new KConfig();
		if ($selected==""){
			$selected=$config->language;
		}
		$qry="SELECT * FROM `".$config->dbprefix."g_lang`";
		mysql::connect();
		$result=mysql_query($qry);
		$return="<select size='1' name='".$name."' ".$attributes.">";
		while ($row = mysql_fetch_assoc($result)){
			if ($row['code']==$selected){
				$return.="<option selected='selected' value='".$row['code']."'>".$row['language']."</option>";
			} else {
				$return.="<option value='".$row['code']."'>".$row['language']."</option>";
			}
		}
		$return.="</select>";
		return($return);
	}
	function formOpen($action, $method="POST", $attributes=""){
		$return="<form method='".$method."' action='".$action."' ".$attributes.">";
		return($return);
	}
	function formClose(){
		$return="</form>";
		return($return);
	}
	function formLabel($for, $label, $attributes=""){
		$lang = new lang();
		$config = new KConfig();
		$return="<label for='".$for."' ".$attributes.">";
		if (isset($lang->$label)){
			$return.=$lang->$label;
		}else{
			$return.=$label;
		}
		$return.="</label>";
		return($return);
	}
	function formInput($name, $type="text", $id="", $size="40", $value="", $attributes=""){
		if ($id==""){
			$id=$name;
		}
		if ($type=="text"){
			$return="<input name='".$name."' id='".$id."' size='".$size."' value='".$value."' ".$attributes.">";
		}
		if ($type=="hidden"){
			$return="<input type='hidden' name='".$name."' id='".$id."' value='".$value."' ".$attributes.">";
		}
		if ($type=="password"){
			$return="<input type='password' name='".$name."' id='".$id."' size='".$size."' value='".$value."' ".$attributes.">";
		}
		if ($type=='check'){
			$return="<input type='checkbox' name='".$name."' id='".$id."' value='".$value."' ".$attributes.">";
		}
		if ($type=='radio'){
			$return="";
			if (is_array($value)){
				foreach ($value as $v){
					$return.="<input type='radio' name='".$name."' id='".$id."' value='".$v."' ".$attributes.">\n";
				}
			} else {
				$return.="<input type='radio' name='".$name."' id='".$id."' value='".$value."' ".$attributes.">";
			}
		}
		if ($type=='dropdown'){
			$return="<select size='".$size."' name='".$name."' id='".$id."' ".$attributes.">";
			$return.="<pre>".$name."</pre>";
			foreach ($value as $v){
				if (isset($v['selected'])){
					$return.="<option selected='selected' value='".$v['value']."'>";
				} else {
					$return.="<option value='".$v['value']."'>";
				}
				if (isset($lang->$v['label'])){
					$return.=$lang->$v['label'];
				}else{
					$return.=$v['label'];
				}
				$return.="</option>";
			}
			$return.="</select>";
		}
		return($return);
	}
	function formSubmitButton($name="submit", $value="Submit", $attributes=""){
		$return="<input type='submit' name='".$name."' value='".$value."' ".$attributes.">";
		return($return);
	}
	function formResetButton($name="reset", $value="Reset", $attributes=""){
		$return="<input type='reset' name='".$name."' value='".$value."' ".$attributes.">";
		return($return);
	}
}

?>