<?php
	setcookie("prenom", "John", time()+3600*24*30);
?>
<!DOCTYPE html>
<html>
	<head></head>
	<body>
		<?php
			if(isset($_COOKIE["prenom"]))
				echo "<h1> Hello " . $_COOKIE["prenom"] . "</h1>";
			else
				echo "<h1>Je ne te connais pas </h1>";
		?>
	</body>
</html>


