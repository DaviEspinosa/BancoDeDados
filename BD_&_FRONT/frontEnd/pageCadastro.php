
<link rel="stylesheet" href="pizzaria.css">
<link rel="stylesheet" href="root.css">

<body>
    
    <?php
        include('./fragmento/header.php');
    ?>

    <section class="container-form">
        <form action="cadCliente.php" method="POST" style="height: 80%;">
            <h3>Cadastre-se</h3>
            <div class="container-input" style="height: 80%;">

                <input type="name" name="name" id="name" placeholder="Nome" required>

                <input type="email" name="email" id="email" placeholder="E-mail" required>
 
                <input type="password" name="password" id="password" placeholder="Senha" required>

                <input type="tel" name="number" id="number" placeholder="Número" required>

                <input type="text" name="address" id="address" placeholder="Endereço" required>

                <a href="pageLogin.php">Entrar com minha conta</a>
            </div>
                <button type="submit" name="enviar">Enviar</button>
        </form>
    </section>

</body>

