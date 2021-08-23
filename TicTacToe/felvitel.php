<?php
include('csatlakozas.php');
$x = $y = $karakter = "";

        $x =$_GET["xk"];
        $y =$_GET["yk"];
        $karakter = $_GET["karakter"];

    $insert = "INSERT INTO lepes (x, y, karakter)
                    VALUES ($x, $y, '$karakter') ";
    
    if ($kapcs->query($insert) === TRUE) {
        echo "Sikeres beillesztés!";
    } else { 
        echo "Hiba: " . $insert . "<br>" . $kapcs->error;
    }

mysqli_close($kapcs);
?>