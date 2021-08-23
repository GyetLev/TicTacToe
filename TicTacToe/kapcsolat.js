function beilleszt(xk,yk,karakter) {
    var xhttp;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("felvisz").innerHTML = this.responseText;
      }
    };
    xhttp.open("GET", "felvitel.php?xk="+xk+"&yk="+yk+"&karakter="+karakter, true);
    xhttp.send();
  }