<?php
	session_start();
?>
<!DOCTYPE html>
<html>
	<head></head>
	<body>
		<p>
			Hello, ton nom est <?php echo $_SESSION['nom']?>.
		</p>
		<br>
		<?php var_dump($_SESSION)?>

	</body>
</html>


