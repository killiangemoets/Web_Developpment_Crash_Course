<?php

    $array = array("firstname" => "", "name" => "", "email" => "", "phone" => "", "message" => "", 
    "firstnameError" => "", "nameError" => "", "emailError" => "", "messageError" => "", 
    "isSuccess" => false);
   
    $emailTo = "kilgem@live.fr";

    if ($_SERVER["REQUEST_METHOD"] == "POST"){
        $array["firstname"] = verifyInput($_POST["firstname"]);
        $array["name"] = verifyInput($_POST["name"]);
        $array["email"] = verifyInput($_POST["email"]);
        $array["phone"] = verifyInput($_POST["phone"]);
        $array["message"] = verifyInput($_POST["message"]);
        $array["isSuccess"] = true;
        $emailText = "";

        if(empty($array["firstname"])){
            $array["firstnameError"] = "Je veux connaitre ton prénom !";
            $array["isSuccess"] = false;
        }else
            $emailText .= "Firstname: {$array["firstname"]}\n";
            
        if(empty($array["name"])){
            $array["nameError"] = "Je veux connaitre ton nom aussi...";
            $array["isSuccess"] = false;
        }else
            $emailText .= "Name: {$array["name"]}\n";

        if(!isEmail($array["email"])){
            $array["emailError"]= "Entrez un email valide";
            $array["isSuccess"] = false;
        }else
            $emailText .= "Email: {$array["email"]}\n";

        if(!isPhone($array["phone"])){
            $array["phoneError"] = "Que des chiffres et des espaces svp";
            $array["isSuccess"] = false;
        }else
            $emailText .= "Phone Number: {$array["phone"]}\n";
                    
        if(empty($array["message"])){
            $array["messageError"] = "Qu'est-ce que tu veux me dire?";
            $array["isSuccess"] = false;
        }else
             $emailText .= "Message: {$array["message"]}\n";

        if($array["isSuccess"])
        {
            $headers = "From: {$array["firstname"]} {$array["name"]} <{$array["email"]}>\r\nReply-To: {$array["email"]}";
            mail($emailTo, "Un message de votre site", $emailText, $headers);
        }

        echo json_encode($array);
        
    }

    function isEmail($var){
        return filter_var($var, FILTER_VALIDATE_EMAIL);
    }

    function isPhone($var){
        return preg_match("/^[0-9 ]*$/", $var);
    }

    function verifyInput($var){
        $var = trim($var);
        $var = stripslashes($var);
        $var = htmlspecialchars($var);
        return $var;
    }
?>
