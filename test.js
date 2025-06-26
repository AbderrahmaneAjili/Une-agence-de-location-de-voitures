function verif1() {
  ncin = document.getElementById("ncin").value;
  nom = document.getElementById("nom").value;
  pre = document.getElementById("pre").value;
  tel = document.getElementById("tel").value;
  if (ncin.length != 8 || !num(ncin)) {
    alert("ncin incorrect");
    return false;
  }
  if (nom.length < 3 || !alpha(nom)) {
    alert("Nom incorrect");
    return false;
  }
  if (pre.length < 3 || !alpha(pre)) {
    alert("Prénom incorrect");
    return false;
  }
  if (
    tel.length != 8 ||
    !num(tel) ||
    tel.charAt(0) == 0 ||
    tel.charAt(0) == 1 ||
    tel.charAt(0) == 6
  ) {
    alert("téléphone incorrect");
    return false;
  }
}
function verif2() {
  ns = document.getElementById("ns").value;
  ne = document.getElementById("ne").value;
  if (!num(ns) || ns.length != 3) {
    alert("numéro de série incorrect");
    return false;
  }
  if (!num(ne) || ne < 1 || ne > 9999) {
    alert("numéro d'enregistrement incorrect");
    return false;
  }
}
function num(ch) {
  chaine = "0123456789";
  for (i = 0; i < ch.length; i++)
    if (chaine.indexOf(ch.charAt(i)) == -1) return false;
  return true;
}
function alpha(ch) {
  chaine = "AZERTYUIOPQSDFGHJKLMWXCVBN";
  ch = ch.toUpperCase();
  for (i = 0; i < ch.length; i++)
    if (chaine.indexOf(ch.charAt(i)) == -1) return false;
  return true;
}
