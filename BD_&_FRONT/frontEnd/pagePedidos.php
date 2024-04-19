<link rel="stylesheet" href="root.css">
<link rel="stylesheet" href="registrarPedidos.css">
<link rel="stylesheet" href="pizzaria.css">

<?php
    include("./fragmento/header.php");
?>


<body>
    
<div class="container-registros">

    <form class="registrar-pedidos" action="cadPedidos.php" method="POST">

    <h3>Faça seu pedido</h3>

        <div class="caixas">
        <input type="text" name="id_pedido" placeholder="Id" style="background-color: #00000030" disabled>
        <input type="text" name="nome" placeholder="Nome">
        </div>

        <div class="caixas">
        <input type="text" name="email" placeholder="email@provedor.com.br">
        <input type="text" name="cel" placeholder="(XX) X.XXXX-XXXX">
        </div>

        <div class="caixas">
        <input type="text" name="endereco" placeholder="(Casa/Predio) Rua-n°, Bairro">
        <input type="text" name="sabor-pizza" placeholder="Pizza">
        </div>

        <div class="caixas">
        <input type="text" name="datetime-local" placeholder="Data" style="background-color: #00000030" disabled>
        <button type="submit">Realizar Pedido</button>
        </div>
    </form>
</div>
</body>