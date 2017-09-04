<?php if(ENVIRONMENT=='production'){ ?>
	<script src="<?php  echo BASEURL;?>public/dist/js/main.js"></script>
<?php
}else{
?>
	<script src="<?php  echo BASEURL;?>public/src/js/main.js"></script>
<?php
}?>
</body>
</html>
