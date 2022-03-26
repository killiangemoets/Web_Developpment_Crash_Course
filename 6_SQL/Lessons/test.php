<?php

    try
    {
        // $database = new PDO('mysql:host=localhost;dbname=store','root','', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
            // le 3e argument est le mot de passe, il n'y en a pas ici
            // Ce qui est écrit en dernier argument va permettre depuis les erreurs plus facilement 
            // dans le code s'il y en a

            //idem que ligne précédente:
        $database = new PDO('mysql:host=localhost;dbname=store','root','');
        $database->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
    catch(Exception $e)
    {
        die('ERROR: ' .$e->getMessage());
    }



    $results = $database->query('SELECT first_name, last_name FROM customers');

    // var_dump($results->fetch()); //ici on n'a pas spécifié si on voulait travailler avec des noms de colonnes ou des indexes de colonnes
    // var_dump($results->fetch(PDO::FETCH_ASSOC)); // ici on travaille avec des noms de colonnes
    // var_dump($results->fetch(PDO::FETCH_NUM)); // ici on travaille avec des indexes de colonnes

    // Le fetch donne ligne par ligne. Si on fait un 2e fetch, on aura la 2e ligne.
    // Le fetchALL donne toutes les lignes directement.
    // $variable = $results->fetchAll(PDO::FETCH_ASSOC);
    // var_dump($variable); 

    // tant que le fetch retourne des valeurs
    // $row = $results->fetch();
    // while($row){
    //     echo $row['first_name'].'<br>';
    //     $row = $results->fetch();
    // }

    // raccourci d'écriture
    while($row = $results->fetch()){
        echo "Je m'apelle " . $row['first_name']. " " . $row['last_name'] . '<br>';
    }



    // // Insérer un nouvel élément
    // $database->query('INSERT INTO customers(first_name, last_name) VALUES (\'Clark\', \'Kent\')');



    $sql = $database->prepare('INSERT INTO customers(first_name, last_name) VALUES (?,?)'); // On ne connait pas encore les valeurs qu'on veut insérer


    
    $firstName = "Johnny";
    $lastName = "Halliday";

    $sql->execute(array($firstName, $lastName));




?>