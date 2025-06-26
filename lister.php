<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<?php
mysql_connect("localhost", "root");
mysql_select_db("Location");
$req = "select imat,model,prixloc from voiture where disponible='D'";
$rep = mysql_query($req) or die(mysql_error());
echo "<table border='1'>
    <tr>
    <td><b>Matricule Voiture</b></td>
    <td><b>Modèle Voiture</b></td>
    <td><b>Prix de location</b></td>
    </tr>";
while ($T = mysql_fetch_array($rep)) {
    echo "<tr>
    <td>" . $T[0] . "</td>
    <td>" . $T[1] . "</td>
    <td>" . $T[2] . "</td>
    </tr>";
}
echo "</table>";
?>