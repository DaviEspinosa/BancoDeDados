<link rel="stylesheet" href="root.css">
<link rel="stylesheet" href="registrarPedidos.css">

<?php
    include("./fragmento/header.php");
?>

<div class="overlay"></div>

<body>
    
<div class="container-registros">

    <form class="registrar-pedidos" action="registrarPedidos.php">

        <div class="etiquetas">
        <label for="id_pedido">ID</label>
        <label for="nome">Nome</label>
        </div>
        <div class="caixas">
        <input type="text" name="id_pedido" placeholder="Id" disabled>
        <input type="text" name="nome" placeholder="Nome">
        </div>
        <div class="etiquetas">
        <label for="email">E-mail</label>
        <label for="cel">Cel</label>
        </div>
        <div class="caixas">
        <input type="text" name="email" placeholder="seuemail@seuprovedor.com.br">
        <input type="text" name="cel" placeholder="(XX) X.XXXX-XXXX">
        </div>
        <div class="etiquetas">
        <label for="endereco">Endereço</label>
        <label for="datatime-local">Data e Hora do Pedido</label>
        </div>
        <div class="caixas">
        <input type="text" name="endereco" placeholder="(Casa/Predio) Rua-n°, Bairro">
        <input type="text" name="datetime-local" disabled>
        </div>
    </form>
</div>
</body>