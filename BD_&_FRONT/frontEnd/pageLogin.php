
<link rel="stylesheet" href="root.css">
<link rel="stylesheet" href="pizzaria.css">

<body>


    <?php
        include('./fragmento/header.php');
    ?>

    <section class="container-form">
        <form action="loginCliente.php" method="POST">
            <h3>Login</h3>

            <div class="container-input">

                <input type="email" name="email" id="email" placeholder="E-mail" required>
                <input type="password" name="senha" id="senha" placeholder="Senha" required>
                <br>

                <div class="forgot-remember">
                    <div class="remember-password">
                        <input type="radio" name="remember" id="remember">

                        <p>Lembrar senha</p>
                    </div>
                    <br>
                    <a href="">Esqueceu sua senha?</a>
                </div>

            </div>
                <button type="submit" name="submit">Entrar</button>
        </form>
    </section>
</body>
