<!DOCTYPE html>
<html>
	<head></head>
	<body>
		<div class="menu">
			<?php include "menu.php" ?>
		</div>
		<h1>Nos Promotions</h1>
		<p><?php 
			// include "variables.php";
			require "variables.php";
			echo $promotions;
		?></p>
	</body>
</html>


