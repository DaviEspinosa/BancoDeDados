
<link rel="stylesheet" href="pizzaria.css">
<link rel="stylesheet" href="root.css">

<body>
    <div class="overlay"></div>
    
    <?php
        include('./fragmento/header.php');
    ?>

    <section class="container-form">
        <form action="cadCliente.php" method="POST" style="height: 80%;">
            <h3>Cadastre-se</h3>
            <div class="container-input" style="height: 80%;">
                <label for="">Nome</label>
                <input type="name" name="name" id="name" required>
                <label for="">E-mail</label>
                <input type="email" name="email" id="email" required>
                <label for="">Senha</label>
                <input type="password" name="password" id="password" required>
                <label for="">Telefone</label>
                <input type="tel" name="number" id="number" required>
                <label for="">Endereço</label>
                <input type="text" name="address" id="address" required>

                <a href="login.php">Entrar com minha conta</a>
            </div>
                <button type="submit" name="enviar">Enviar</button>
        </form>
    </section>

</body>

