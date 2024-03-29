<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html dir="<?php echo $direction; ?>" lang="<?php echo $code; ?>">
<head>
<title><?php echo $title; ?></title>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo $charset; ?>">
<base href="<?php echo $base; ?>">
<link rel="stylesheet" type="text/css" href="template/default/css/default.css">
</head>
<body>
<?php if (isset($header)) { ?>
<div id="header"><?php echo $header; ?></div>
<?php } ?>
<?php if (isset($menu)) { ?>
<?php echo $menu; ?>
<?php } ?>
<?php if (isset($content)) { ?>
<?php echo $content; ?>
<?php } ?>
<?php if (isset($footer)) { ?>
<div id="footer"><?php echo $footer; ?></div>
<?php } ?>
<?php if (isset($time)) { ?>
<div id="time"><?php echo $time; ?></div>
<?php } ?>
</body>
</html>
