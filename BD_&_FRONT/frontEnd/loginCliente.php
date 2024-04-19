<?php

// parametros vindo do formulário
// print_r($_REQUEST);

if ($_SERVER["REQUEST_METHOD"] == "POST") {


    $email = $_POST['email'];
    $senha = $_POST['senha'];

    if (!empty($email) && !empty($senha)) {
        // Acessar o meu sistema
        include_once ('conectar.php');

        // printar cada variavel
        echo 'email:' . $email;
        echo 'senha:' . $senha;

        // verificando se existe no banco de dados
        $sql = "SELECT * FROM Clientes WHERE email_cliente = '$email' and senha_cliente = '$senha'";

        // executar este codigo no banco de dados
        $result = pg_query($conectarBD, $sql);

        if (pg_num_rows($result) > 0) {
            echo "Usuário autenticado com sucesso!";
            header("Location: index.php");
            // Faça o que for necessário aqui, por exemplo, redirecionar para uma página de perfil
        } else {
            header("Location: pageLogin.php");
        }

    } else {
        // header("Location: login.html");
        echo "Erroooooooooooooooooo";
        // Não acessar
    }
}
?>
