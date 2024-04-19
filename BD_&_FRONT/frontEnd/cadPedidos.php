<?php
include ('conectar.php');

// verificando se o formulario foi enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    echo "Valores Obtidos com sucesso";
    // Obter os valores que usuário digitou
    $nome = $_POST["nome"];
    $email = $_POST["email"];
    $pizza = $_POST["sabor-pizza"];
    $tel = $_POST["cel"];
    $endereco = $_POST["endereco"];

    // VErificando se os campos não estão vazios
    if (!empty($nome) && !empty($email) && !empty($pizza) && !empty($tel) && !empty($endereco)) {
        
        // Inserir na tabela
        $query = "INSERT INTO pedidos (nome, email, cel, pizza, endereco) values ($1, $2, $3, $4, $5)";
   
        // preparando a inserção
        $resultado = pg_prepare($conectarBD, "", $query);

        if($resultado){

            // executando inserção
            $resultado = pg_execute($conectarBD, "", array($nome, $email, $pizza, $tel, $endereco));

            // VErifica se a inserção foi bem sucedida
            if ($resultado) {
                header("Location: pageExibirPedidos.php");
            }
            else {
                echo"Erro ao inserir dados ao banco" . preg_last_error();
            }
        }
        else {
            echo "Erro ao preparar a consulta" . pg_last_error();
        }
    }
    else {
        echo"Por favor, preencher os campos";
    }
}
else {
    echo"Erro cadastrar pedido" . preg_last_error();
}
?>