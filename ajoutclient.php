<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<?php
mysql_connect("localhost", "root");
mysql_select_db("location");
$ncin = $_POST["ncin"];
$nom = $_POST["nom"];
$pre = $_POST["pre"];
$tel = $_POST["tel"];
$req = "select * from client where ncin='$ncin'";
$rep = mysql_query($req) or die(mysql_error());
if (mysql_num_rows($rep) != 0) die("Client existant");
$req = "insert into client values('$ncin','$nom','$pre','$tel')";
$rep = mysql_query($req) or die(mysql_error());
if (mysql_affected_rows() != -1) die("Client ajouté avec succès");
?>