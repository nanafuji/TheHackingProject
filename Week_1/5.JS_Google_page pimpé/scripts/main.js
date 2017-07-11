// Exercise 1
var afficherBox = document.getElementById('principal');

afficherBox.onclick = function() {
  document.getElementById("id_cache").className="";
  afficherBox.className="hide";
}


// Exercise 2

// Methode William
var look = document.forms["googleform"].text_search;
var click = document.forms["googleform"].click_button;

click.onclick = function () {
   var value = look.value.trim();
   if (value != "" ) {
       var objectToSearch = value.replace(/( )+/g, "+");
       document.location.href="https://www.google.fr/#q=" + objectToSearch;
   }
   else {
   }
}

/* Methode Issei
document.getElementById("search").onclick = function() {
  var what = document.getElementById("chercher").value;
  window.location.href="https://www.google.fr/#q=" + what;
}
*/


// Exercise 3

  setTimeout(function(){ 
    alert("Hey le site xxxvidsxxx est trop bien. Viens dessus stp please!!");
    }, 10000);


// Exercise 4

var monNom = prompt("");
canvas