<!DOCTYPE html>
<html>
    <head>
        <title>Exercitiul 4.a</title>
        <style>
body {
  background-image: url('2.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}

.button {
  display: inline-block;
  padding: 15px 25px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;	
  text-decoration: none;
  outline: none;
  color: ##8ba811;
  background-color: #cbed6e;
  border: solid;
  border-radius: 45px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #cbed6e}

.button:active {
  background-color: #cbed6e;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
div {
    width: 1200px;
    padding: 15px;
    <!-- border: 25px groove; -->
    margin: 30px;
    text-align: center;
}
p {
    font-family: "Times New Roman", Times, serif;
    font-size: 30px;
}



table {
    text-align:center;
    margin: auto;
    border: none;
    border-color: black;
}
th {
    background-color: #cbed6e;
    color: black;
    border: 3px;
}
td{
    border: solid 1px;
    border-color: black;
    width: auto;
    margin: 5px;
}
tr{
    text-align: center;
    margin: 5px;
    
}

</style>
    </head>
<body>
    <div>
<?php
echo "<table>";
echo "<tr><th>pret</th><th>Cantitate</th><th>numep</th><th>numef</th><th>";

class TableRows extends RecursiveIteratorIterator { 
     function __construct($it) { 
         parent::__construct($it, self::LEAVES_ONLY); 
     }

     function current() {
         return "<td style='width: 200px; border: 1px solid black;'>" . parent::current(). "</td>";
     }

     function beginChildren() { 
         echo "<tr style='text-align:center'>"; 
     } 

     function endChildren() { 
         echo "</tr>" . "\n";
     } 
} 
include "Connection.php";
try {
     $conn = new PDO("mysql:host=$db_host;dbname=$dbname", $db_username, $db_pass);
     $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
     $stmt = $conn->prepare("SELECT c.pret, o.cantitate, f.numef, p.numep
							 FROM catalog c, comenzi o, furnizori f, piese p 
							 WHERE c.pret > 35 AND (c.idf = f.idf OR o.idp = p.idp)"); 
     $stmt->execute();
     $result3 = $stmt->setFetchMode(PDO::FETCH_ASSOC); 
     foreach(new TableRows(new RecursiveArrayIterator($stmt->fetchAll())) as $k=>$v) { 
         echo $v;
     }
}
catch(PDOException $e) {
     echo "Error: " . $e->getMessage();
}
$conn = null;
echo "</table>";
?>  
        <br><br>
        <a href="index.html" class="button">Inapoi</a>
    </div>
</body>
</html>

