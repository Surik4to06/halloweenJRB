<?php
    include_once './api/sessao.php';
    validarSessao();
    
    include_once './api/validarAbobora.php';
    use db\Database;
    $db = new Database();
    $conn = $db->connect();
    
    $id_usuario = $_SESSION['usuario']['ID'];

    $sql_check = "SELECT * FROM `user` WHERE id = :id";
    $stmt_check = $conn->prepare($sql_check);
    $stmt_check->execute([':id' => $id_usuario]);

    $getidclan = $stmt_check->fetch(PDO::FETCH_ASSOC);
    $getidclan = $getidclan['clan_id'];

    if ($getidclan == 0) {
        header('Location: ./criar_clan');
    }
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="./css/default.css">
    <title>Captura Cla</title>
    
    <!-- PARABENS -->
    <link rel="stylesheet" href="./css/validarCreep.css">
    <script defer src="./js/validarCreep.js"></script>
    
</head>

<body>
    <!-- <div class="backgroundImage"></div> -->

    <canvas id="drawing_canvas"></canvas>
    <div id="containerCreep" class="containerCreep">
        <h1><span id="nomeDaAbobora">Nome da Abóbora</span></h1>

        <div>
            <img id="fotoAbobora" class="" src="./assets/imagens/aboboraCapturada.png">
        </div>
            
        <h2><span id="avisoCreep">Parabéns</span> <span id="usernameCreep"></span>!</h2>
        <p id="textoCreep">Você acabou de achar mais uma Abóbora, está indo bem até.
        </p>
    </div>
    <!-- <script src="./js/validarCreep.js"></script> -->
    
</body>
</html>