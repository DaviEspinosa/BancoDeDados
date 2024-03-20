<?php
include ('conectar.php');

// consultando minha tabela

// Verifica se o formulário foi submetido
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Verifica se o campo "nome" foi preenchido
    if (!empty($_POST["name"&& "email"&& "number"])) {
        // Limpa os dados de entrada para evitar injeção de SQL
        $campos = pg_escape_string($_POST["name" && "email" && "number"]);
        
        // Query SQL para inserir os campos no banco de dados
        $query = "INSERT INTO Clientes (nome_cliente, email_cliente, telefone_cliente) VALUES ('$campos'),";
        
        // Executa a query
        $resultado = pg_query($query);
        
        // Verifica se a query foi executada com sucesso
        if ($resultado) {
            echo "Nome inserido com sucesso no banco de dados.";
        } else {
            echo "Erro ao inserir nome no banco de dados: ";
        }
    } else {
        echo "Por favor, preencha o campo de nome.";
    }
}
?>
