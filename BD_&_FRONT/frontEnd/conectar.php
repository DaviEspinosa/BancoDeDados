<?php

$host = "localhost";
$port = "5432";
$dbname = "pizzariabd";
$user = "postgres";
$password = "postgres";

$conectarBD = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if (!$conectarBD) {
    echo("Falha na conexão com o banco de dados");
}