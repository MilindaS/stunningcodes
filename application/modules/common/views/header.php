<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2//EN">
<html lang="en">
  <head>
    <meta charset="utf-8">
	<title>Stunning Codes</title>
	<meta name="description" content="Description" />
    <meta name="keywords" content="keywords" />
	
    <meta name="viewport" content="width=device-width">
	<?php
		if(isset($meta_array) && !empty($meta_array)){
			foreach($meta_array AS $item){
				echo '<meta name="'.$item['name'].'" content="'.$item['content'].'" />';
				}
		}
	?>
	<?php
		if(isset($meta_og_array) && !empty($meta_og_array)){
			foreach($meta_og_array AS $item){
				echo '<meta property="'.$item['property'].'" content="'.$item['content'].'" />';
				}
		}
	?>

    <!-- <link rel="stylesheet" href="<?php	echo BASEURL;?>public/dist/css/ionicons.min.css">
    <link rel="stylesheet" href="<?php	echo BASEURL;?>public/vendor/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php	echo BASEURL;?>public/dist/css/animate.css">
    <link rel="stylesheet" href="<?php	echo BASEURL;?>public/dist/css/jquery.growl.css"> -->
	<link href="<?php	echo BASEURL;?>public/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
	<link href="<?php	echo BASEURL;?>public/vendor/node-waves/waves.css" rel="stylesheet" />
    <link href="<?php	echo BASEURL;?>public/vendor/animate-css/animate.css" rel="stylesheet" />
    
	<link rel="stylesheet" href="<?php	echo BASEURL;?>public/dist/css/style.css">
	<link rel="stylesheet" href="<?php	echo BASEURL;?>public/dist/css/jquery.growl.css">
	<!-- <link rel="stylesheet" href="<?php//	echo BASEURL;?>public/css/pill.css"> -->

	<?php

		if(isset($css_array) && !empty($css_array)){

			foreach($css_array AS $item){
					echo '<link rel="stylesheet" href="'.BASEURL.'public/dist/css/'.$item.'" type="text/css" />'."\n";
				}

		}

	?>
	<script src="<?php	echo BASEURL;?>public/dist/js/framework.js"></script>
	<script src="<?php	echo BASEURL;?>public/dist/js/admin.js"></script>

	

	<?php

	if(isset($js_array) && !empty($js_array))
	{
		foreach($js_array AS $item){
				echo  '<script type="text/javascript"  src="'.BASEURL.'public/dist/js/'.$item.'"  ></script>'."\n";

		}

	}

	?>
	
  </head>
  <body class="body-bg">

<!-- Logo -->




	<!-- End of logo -->