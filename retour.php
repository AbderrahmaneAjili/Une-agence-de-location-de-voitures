<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<?php
mysql_connect("localhost", "root");
mysql_select_db("Location");
$ns = $_POST["ns"];
$ne = $_POST["ne"];
$imat = $ns . "TU" . $ne;
$req = "select * from voiture where imat='$imat'";
$rep = mysql_query($req) or die(mysql_error());
if (mysql_num_rows($rep) == 0) die("Voiture inexistante");
$T = mysql_fetch_array($rep);
if ($T[3] == "D") die("Attention ! Vérifier le numéro d’immatriculation de la voiture");
$d = Date('Y-m-d H:i:s');
$req = "update voiture set disponible='D' where imat='$imat'";
$rep = mysql_query($req) or die(mysql_error());
$req = "update louer set dateret='$d' where imat='$imat'";
$rep = mysql_query($req) or die(mysql_error());
if (mysql_affected_rows() != -1) die("Retour enregistré avec succès");
?>