<?php 
  //declare(strict_types=1); 
?>

<!DOCTYPE html>
<html>
	<head></head>
	<body>
		<?php 

			// // Cours 1: Syntaxe // //
			// $a = 10 /*+20*/ + 30;
			// echo "Coucou c'est encore moi"; 



			// // Cours 2: Variables // //
			// $maVariable1 = 10;
			// $maVariable2 = 25;
			// $result = $maVariable1 + $maVariable2;

			// echo $result;

			// $maVariable3 = "Salut les gars c'est beau la vie";
			// $maVariable4 = 'Vous allez bien';
			
			// echo $maVariable3;

			// $version = 7;
			// echo "PHP Version $version";

			// echo "PHP Version" . $version;



			// // Cours 3: Scopes // //

			// $variable1 = 7;
			// $variable2 = 25;

			// // echo $maVariable1;

			// function myfunction(){
			// 	global $variable1;
			// 	echo $variable1;
			// 	echo $GLOBALS['variable1'];
			// }
			// myfunction();

			// function myfunction2(){
			// 	echo $GLOBALS['variable1'] + $GLOBALS['variable2'];
			// }
			// myfunction2();

			// function AndOneAndEcho(){
			// 	static $variable3 = 8;
			// 	$variable3++;
			// 	echo $variable3;
			// }
			// AndOneAndEcho();
			// AndOneAndEcho();
			// AndOneAndEcho();


			
			// // Cours 4: Types de variables // //
			// $x = "Hello, moi c'est Kiki";
			// $y = 5;
			// $z = 12.4;
			// $w = true;
			// $joursDeLaSemaine = array("Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi");
			// $u = null;
			// class Voiture {
			// 	function __construct(){
			// 		$this->couleur = "Bleu";
			// 	} 
			// }
			// $maVoiture = new Voiture();

			// echo $x;
			// echo "<br>";
			// echo $x;
			// echo "<br>";
			// var_dump($x);
			// echo "<br>";
			// var_dump($y);
			// echo "<br>";
			// var_dump($z);
			// echo "<br>";
			// var_dump($w);
			// echo "<br>";
			// var_dump($joursDeLaSemaine);
			// echo "<br>";
			// var_dump($u);
			// echo "<br>";
			// var_dump($maVoiture);

			

			// // Cours 5: Strings // //
			// $x = "Mes chats sont Speedy et Cibou";
			// echo strlen($x); // Longueur d'une string
			// echo "<br>";
			// echo str_word_count($x); // Nombre de mots
			// echo "<br>";
			// echo strrev($x); // Mettre la string à l'envers
			// echo "<br>";
			// echo strpos($x,"Speedy"); //Position de Speedy (en nbre de charactères)
			// echo "<br>";
			// var_dump(strpos($x,"Speedy"));
			// echo "<br>";
			// var_dump(strpos($x,"Moustache"));
			// echo "<br>";
			// echo str_replace("Speedy","Jean-Charles",$x);



			// // Cours 6: Constants // //
			// define("MES_ANIMAUX", "Speedy et Cibou");
			// function myfunction(){
			// echo "Mes chats sont " . MES_ANIMAUX . " !!"; // Constantes sont aussi reconnues dans les fonctions
			// }
			// myfunction();



			// // Cours 7: Operators - Part 1 // //
			// $x = 20;
			// $y = 6;
			// $z = 2;
			// $w = 3;
			// $u = "6";
			// $age = 23;
			// $boisson = ($age >18)? "Bière" : "Coca";
			// $red = "Red";
			// $maCouleur = $blue ?? $orange ?? $red ?? "No Color";
			// echo $x * $y;
			// echo "<br>";
			// echo $x / $y;
			// echo "<br>";
			// echo $x % $y; //le modulo
			// echo "<br>";
			// echo $z ** $w; //$z puissance $w
			// echo "<br>";
			// $x *= $w;
			// echo $x;
			// echo "<br>";
			// var_dump( $y == $u ); // sans comparer type
			// echo "<br>";
			// var_dump( $y === $u ); // avec comparer type
			// echo "<br>";
			// var_dump( $y =! $u ); // sans comparer types
			// echo "<br>";
			// var_dump( $y ==! $u ); // avec comparer types
			// echo "<br>";
			// var_dump( $w >= $z );
			// echo "<br>";
			// echo $boisson; 
			// echo "<br>";
			// echo $maCouleur;
			// echo "<br>";
			// echo $z <=> $w; // Vaut O si z=w, vaut 1 si z>w, vaut -1 si z<w


			
			// // Cours 7: Operators - Part 2 // //
			// $x = 0;
			// $y = 10;
			// $z = 50;
			// $u = true;
			// $w = "Hello, ";
			// $p = "moi c'est kiki";

			// echo $x++;
			// echo " ";
			// echo $x;
			// echo " ";
			// echo ++$x;
			// echo "<br>";
			// var_dump($y >= 10 and $z > 50);
			// echo "<br>";
			// var_dump($y >= 10 or $z > 50);
			// echo "<br>";
			// var_dump($y >= 10 || $z > 50);
			// echo "<br>";
			// var_dump(!$u);
			// echo "<br>";
			// var_dump($y > 4 xor $z > 40); // Si les deux sont vrais retourne faux
			// echo "<br>";
			// echo $w . $p;
			// $w .= $p;
			// echo "<br>";
			// echo $w;


			
			// // Cours 8: Conditions // //
			// $motivation = 6;
			// if($motivation < 3){
			// 	echo "Allaiiiis on se motive";
			// } else if($motivation < 7){
			// 	echo "Ne te démotive pas";
			// } else{
			// 	echo "Ca roule";
			// }

			// echo "<br>";

			// $objectif = "Travailler en voyageant";
			// switch($objectif)
			// {
			// 	case "Travailler en Freelance":
			// 		echo "Freelance, c'est génial!";
			// 		break;
			// 	case "Travailler en voyageant":
			// 		echo "T'as raison, c'est de la balle!";
			// 		break;
			// 	case "Coder mon site web":
			// 		echo "Bonne chance";
			// 		break;
			// 	default:
			// 		echo "Choisis un objectif";
			// }



			// // Cours 9: Loops // //
			// $x = 0;
			// while($x <=10)
			// {
			// 	echo "x vaut: $x<br>";
			// 	$x++;

			// }

			// echo "<br> <br>";
			// $x = 12;
			// do
			// {
			// 	echo "x vaut: $x<br>";
			// 	$x++;

			// }while($x <=10);

			// echo "<br> <br>";
			// for($x = 0; $x <= 10 ; $x++){
			// 	echo "x vaut: $x<br>";
			// }



			// // Cours 10: Functions // //
			// function myfunction($message = "Pas de message"){ //La fonction affichera "Pas de message" si on ne lui donne aucun argument
			// 	echo "$message <br>";
			// }
			// myfunction("Voici mon message");

			// function myfunction2($message, $times){
			// 	for($i=1; $i<$times;$i++)
			// 	echo "$message <br>";
			// }
			// myfunction2("Coucou c'est moi!", 15);

			// function addition($x, $y){
			// 	return $x + $y;
			// }
			// echo addition(2,4);
			// echo "<br>";
			// $z = addition("4",8);
			// echo "$z <br>";

			// function addition_int(int $x, float $y):int{
			// 	$z = $x + $y;
			// 	var_dump($z);
			// 	return $z;
			// }
			// echo "<br>" . addition_int(3,5.2);



			// // Cours 11: Arrays // //
			// $joursdelasemaine = array("Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi","Samedi","Dimanche");
			// var_dump($joursdelasemaine);

			// echo "<br>" . count($joursdelasemaine);

			// for($i=0; $i< count($joursdelasemaine) ;$i++){
			// 	echo "<br> $joursdelasemaine[$i]";
			// }
			// echo "<br>";

			// $personnes = array("Pierre" => 30, "Paul" => 40, "Jacques" => 50);
			// var_dump($personnes);
			// echo "<br>" . $personnes["Paul"];

			// foreach($personnes as $nom => $age){
			// 	echo "<br> $nom a $age ans.";
			// }



			// // Cours 12: Objects // //
			// class Etudiant{

			// 	public $etudie = true;
			// 	public $nom;
			// 	public $age;
			// 	public $notes;

			// 	public function __construct($nomdelapersonne,$age,$notes){
			// 		$this->nom = $nomdelapersonne;
			// 		$this->age = $age;
			// 		$this->notes = $notes;
			// 	}

			// 	public function sePresente(){
			// 		if($this->etudie){
			// 			echo "Je m'apelle $this->nom et j'ai $this->age ans. <br>";
			// 			foreach($this->notes as $cours => $note){
			// 				echo "En $cours, j'ai obtenu $note/20. <br>";
			// 			}
			// 		}else{
			// 			echo "$this->nom n'est pas un étudiant.";
			// 		}
			// 	}

			// }
			// $notesJohn = array("Math" => 17, "Français" => 9, "Anglais" => 12);
			// $john = new Etudiant("John", "31", $notesJohn);
			// $john->sePresente();

			// $notesHarry = array("Philo" => 17, "Sciences politiques" => 19, "Droit" => 12);
			// $harry = new Etudiant("Harry", "14", $notesHarry);
			// echo "<br>";
			// $harry->etudie= false;
			// $harry->sePresente();


			
			// // Cours 13: Super Globales // //
			$x = 5;
			$y = 18;

			function maFonction(){
				echo $GLOBALS['x'] . "<br>";
			}
			maFonction();

			var_dump($_SERVER);
			echo "<br> <br>" . $_SERVER["SERVER_NAME"];

			echo "<br> <br>";
			var_dump($_REQUEST);

			echo "<br> <br>";
			var_dump($_POST);

			echo "<br> <br>";
			var_dump($_COOKIE);

			echo "<br> <br>";
			var_dump($SESSION);

		?>
	</body>
</html>


