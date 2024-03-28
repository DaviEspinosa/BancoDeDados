<?php
include ('conectar.php');

// $password = $_POST['password'];
$email = $_POST['email']; //senha_cliente,

$sql = "SELECT  email_cliente FROM Clientes WHERE email='$email'";//AND password='$password'
$resultado = $conectarBD->query($sql);

// if(!empty($password) && !empty($email)){

// }

// Verifica se a consulta retornou algum resultado
if ($resultado->num_rows > 0) {
    // Autenticação bem-sucedida
    header("Location:index.html");
    echo "Login bem-sucedido!";
} else {
    // Autenticação falhou
    echo "Nome de usuário ou senha incorretos.";
}

