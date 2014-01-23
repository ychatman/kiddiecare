<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $config->language; ?>" lang="<?php echo $config->language; ?>" >
<?php head::css(); ?>
<?php head::script(); ?>
<head>
<title>
	<?php echo $config->site_name; ?>
</title>
<body>
<div class="header">
	<div class="statusbar">
		<div class="wrapper">
			<div class="welcome">
				<?php echo layout::welcome(); ?>
			</div>
			<div class="timestamp">
				<?php echo layout::timestamp(); ?>
			</div>
		</div>
	</div>
	<div class="wrapper">
		<img id="logo" src="../admin/images/logo.png">
		<div class="mainmenu">
			<?php echo layout::content('mainmenu'); ?>
		</div>
		<div class="quicklinks">
			<?php echo layout::content('quicklinks'); ?>
		</div>
	</div>
</div>
<div class="wrapper">
	<div class="main">
		<?php echo layout::content('main'); ?>
	</div>
</div>
<div class='clr'>&nbsp;</div>
<div class="wrapper">
	<?php echo footer::copyright(); ?>
	<?php echo footer::confidentiality(); ?>
</div>
<div class='clr'>&nbsp;</div>
</body>
</html>