<?php
    include_once './api/sessao.php';
    validarSessao();
    
    include_once './api/validarCrow.php';
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="./css/default.css">
    <title>Captura</title>
    
    <!-- PARABENS -->
    <link rel="stylesheet" href="./css/validar2.css">
    <script defer src="./js/validar.js"></script>
    
</head>

<body>
    <!-- <div class="backgroundImage"></div> -->

    <canvas id="drawing_canvas"></canvas>
    <div id="container" class="container">
        <h1><span id="nomeDoCorvo">Nome do Corvo</span></h1>

        <div>
            <img id="fotoCorvo" class="" src="./assets/imagens/corvocapturado.png">
        </div>
            
        <h2><span id="aviso">Parabéns</span> <span id="username"></span>!</h2>
        <p id="texto">Você acabou de achar mais um assasino mais procurados dos filmes e series, continue sua busca antes que eles escapem!.
        </p>
    </div>
    
</body>
</html>