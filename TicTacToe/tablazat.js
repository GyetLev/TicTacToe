function meghiv() {
    lerak();
    beilleszt(document.getElementById('xkor').value,
        document.getElementById('ykor').value,
        document.getElementById('karakter').value);
    szamlalotisztit();
    szamlalo();
}

function megjelenit() {
    var sor = document.getElementById("sor").value;
    var oszlop = document.getElementById("oszlop").value;
    var tabla = "";
    tabla += "<table>";
    for (var i = 1; i <= sor; i++) {
        tabla += "<tr>";
        for (var j = 1; j <= oszlop; j++) {
            tabla += "<td id=s" + i + "o" + j + ">";
            tabla += "</td>";
        }
        tabla += "</tr>";
    }
    tabla += "</table>";
    document.getElementById("tablazat").innerHTML = tabla;
}

function lerak() {
    var xkor = document.getElementById('xkor').value;
    var ykor = document.getElementById('ykor').value;
    var karakter = document.getElementById('karakter').value;
    var cella = document.getElementById("s" + xkor + "o" + ykor).innerText;
    if (cella == "") {
        document.getElementById("nemjo").innerHTML = "";
        document.getElementById("s" + xkor + "o" + ykor).innerHTML = karakter;
    } else {
        document.getElementById("nemjo").innerHTML = "Nem tehet ide!";
    }
}
var masodperc;
var szamlalas = 15;

function szamlalo() {
    masodperc = setInterval(function() {

        if (szamlalas <= 0) {
            clearInterval(masodperc);
            document.getElementById("idozito").innerHTML = "Lejárt az idő";
            var karakter = document.getElementById('karakter');
            if (karakter.value == "X") {
                karakter.value = "O";
            } else {
                karakter.value = "X";
            }
        } else {
            document.getElementById("idozito").innerHTML = szamlalas + " másodperc van vissza";
        }
        szamlalas -= 1;
    }, 1000);
}

function szamlalotisztit() {
    clearInterval(masodperc);
    szamlalas = 15;
    var karakter = document.getElementById('karakter');
    if (karakter.value == "X") {
        karakter.value = "O";
    } else {
        karakter.value = "X";
    }
}

function ujjatek() {
    location.reload();
}