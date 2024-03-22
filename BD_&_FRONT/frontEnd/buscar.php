<?php
include ('conectar.php');

// Verifica se o formulário foi submetido
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Obtém os valores do formulário
    $name = $_POST["name"];
    $email = $_POST["email"];
    $tel = $_POST["number"];

    // Verifica se os campos não estão vazios
    if (!empty($name) && !empty($email) && !empty($tel)) {
        
        // Query SQL com prepared statements
        $query = "INSERT INTO Clientes (nome_cliente, email_cliente, telefone_cliente) VALUES ($1, $2, $3)";
        
        // Prepara a consulta
        $resultado = pg_prepare($conectarBD, "", $query);
        
        if ($resultado) {
            // Executa a consulta
            $resultado = pg_execute($conectarBD, "", array($name, $email, $tel));
            
            // Verifica se a consulta foi bem-sucedida
            if ($resultado) {
                echo "Dados inseridos com sucesso no banco de dados.";
            } else {
                echo "Erro ao inserir dados no banco de dados: " . pg_last_error($conectarBD);
            }
        } else {
            echo "Erro ao preparar a consulta: " . pg_last_error($conectarBD);
        }
    } else {
        echo "Por favor, preencha todos os campos.";
    }
}
?>
