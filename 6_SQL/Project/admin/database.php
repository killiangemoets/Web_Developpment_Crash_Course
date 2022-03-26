<?php

class Database{

    // Ici on ne crée pas d'instances, on utilise la classe directement, c-a-d la connection de la classe directement sur la classe
    // Pour faire cela, on a besoin de créer des paramètres statiques (c'est-à-dire que les paramètres appartiennent à la classe, pas à l'instance d'une classe)
    // Lorsqu'on utilise le mot static on doit également spécifier le mot public ou private
    // Lorsqu'on est dans la classe et qu'on veut accéder à une propriété qui est statique, on doit utiliser le mot self

    private static $dbHost = "localhost";
    private static $dbName = "burger_code";
    private static $dbUser = "root";
    private static $dbUserPassword = "";

    private static $connection = null;


    public static function connect(){
        try{
            self::$connection = new PDO("mysql:host=". self::$dbHost. ";dbname=" . self::$dbName, self::$dbUser, self::$dbUserPassword);
        }
        catch(PDOException $e){
            die($e->getMessage);
        }
        return self::$connection;
    }

    public static function disconnect(){
        self::$connection = null;
    }

}

// On peut accéder à la fonction connect de l'extérieur de la classe car la fonction est publique.
// Mais il faut mettre les 2 fois 2 points car fonction statique
// Database::connect();


?>