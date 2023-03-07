<?php
$conn = new mysqli('localhost', 'root', '', 'turism');
 
if ($conn->connect_errno) {
    echo "Eroare: " . $conn->connect_error;
}