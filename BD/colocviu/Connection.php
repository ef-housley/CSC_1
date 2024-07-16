<?php
        $db_host='localhost';
        $db_username='shirin';
        $db_pass='shirin123';
        $dbname='colocviu';

   
        $conn = new mysqli($db_host, $db_username, $db_pass, $dbname);
        if ($conn->connect_error) { die("Connection failed: " . $conn->connect_error);}
    
        
?>
