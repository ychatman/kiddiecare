# [< Function Reference](FunctionReference.md) #
## htmlOutput ##

---

### htmlOutput::languageDropdown() ###
This function returns a dropdown menu with langauges, based on the [g\_lang](g_lang.md) table of the database. This information is used to assign language variables to both user entries and general configuration entries.

**_NOTE: In order to work properly, a language file (PHP extension) with the same two letter country code (ISO 3166-1 alpha-2) must be in the language folders._**

#### Variables ####
  * $name = Name of dropdown element. **REQUIRED**
  * $selected = Two letter Country Code (ISO 3166-1 alpha-2) of language file. (Default = $config->language )
  * $attributes = MISC attributes. (Default = "").

#### Sample Return ####
```
	<select size="1" name="$name" $attributes>
		## $selected
		<option selected="selected" value="en">
			English
		</option>
		<option value="es">
			Spanish
		</option>
	</select>
```

---

### htmlOutput::formOpen() ###
This function returns a HTML `<form>` tag with applicable parameters.

#### Variables ####
  * $action = Form action address. **REQUIRED**
  * $method = Form method, GET or POST. (Default = "POST" )
  * $attributes = MISC attributes. (Default = "").

#### Sample Return ####
```
	<form method="$method" action="$action" $attributes>
```

---

### htmlOutput::formClose() ###
This function returns a HTML `</form>` tag.

#### Variables ####
  * No Variables

#### Sample Return ####
```
	</form>
```

---

### htmlOutput::formLabel() ###
This function returns a formatable label within a `<label>` tag.

#### Variables ####
  * $for = Field to attach label to. Must match $id of [htmlOutput::formInput()](htmlOutput#htmlOutput::formInput().md) **REQUIRED**
  * $label = HTML formatted Text for label, displayed as HTML markup. **REQUIRED**
  * $attributes = MISC attributes. (Default = "").

#### Sample Return ####
```
	<label for="$for" $attributes>
		$label
	</label>
```

---

### htmlOutput::formInput() ###
This function returns a `<input>` field, formatted based on the "type".

#### Variables ####
  * $name = sets "name" parameter of field. **REQUIRED**
  * $type = HTML formatted Text for label, displayed. (Default = "text")
  * **Possible Values:
    * "text" - returns a normal text input field.
    * "hidden" - returns a hidden field.
    * "password" - returns a password text field.
    * "check" - returns a check mark field.
    * "radio" - returns a radio button field.
      * Groups of radio buttons must have the same $name.
      * For ease of use, radio type fields $value can be declared as an array, but is not required.
    * "dropdown" - returns a dropdown style field.
      * $value must be an array()
      * Selected attribute is assigned via the array declared in $value.
        * $value array must follow this layout:**

```
	array(
		array(
			"value"=>1,
			"label"=>"One"
		)
		array(
			"selected"=>1,
			"value"=>2,
			"label"=>"Two"
		)
	)
```

  * $id = sets "id" parameter of field. (Default = $name)
    * sed to map [htmlOutput::formLabel()](htmlOutput#htmlOutput::formLabel().md)
  * $size = sets "size" parameter of field. (Default = "40")
    * Not used where $type = "hidden", "check", or "radio".
  * $value sets "value" parameter of field. (Default = "")
    * Dropdown fields require this to be declared as an array.
  * For ease of use, radio type fields $value can be declared as an array, but is not required.
    * $attributes = MISC attributes. (Default = "").

#### Sample Return ####
**$type="text"**
```
	<input name="$name" id="$id" size="$size" value="$value" $attributes>
```

**$type="hidden"**
```
	<input type="hidden" name="$name" id="$id" value="$value" $attributes>
```

**$type="password"**
```
	<input type="password" name="$name" id="$id" size="$size" value="$value" $attributes>
```

**$type="check"**
```
	<input type="checkbox" name="$name" id="$id" value="$value" $attributes>
```

**$type="radio"**
```
	<input type='radio' name="$name" id="$id" value="$value" $attributes>
```

**$type="dropdown"**
```
	<select size="$size" name="$name" id="$id" $attributes>
		<option selected='selected' value="$v1['value']"> <-## if $selected declered in array
		<option value="$v2['value']">
	</select>
```

---

### htmlOutput::formSubmitButton() ###
This function returns a submit button.

#### Variables ####
  * $name = name parameter (Default = "submit")
  * $value = value parameter. (Default = "Submit")
  * $attributes = MISC attributes. (Default = "")

#### Sample Return ####
```
	<input type="submit" name="$name" value="$value" $attributes>
```

---

### htmlOutput::formResetButton() ###
This function returns a reset button.

#### Variables ####
  * $name = name parameter (Default = "reset")
  * $value = value parameter. (Default = "Reset")
  * $attributes = MISC attributes. (Default = "")

#### Sample Return ####
```
	<input type="reset" name="$name" value="$value" $attributes>
```

---
