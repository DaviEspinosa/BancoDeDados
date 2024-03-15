<?php
include ('conectar.php');

// consultando minha tabela

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['enviar'])) {
    $nome = $_POST['name']; // Recebe o nome do formulário

    // Inserir dados na tabela
    $query = "INSERT INTO Clientes VALUES ('$nome', )";
    $result = pg_query($conectarBD, $query);

    if ($result) {
        echo "Dados adicionados com sucesso!";
    } else {
        echo "Erro ao adicionar dados.";
    }
}


pg_close($conectarBD);
