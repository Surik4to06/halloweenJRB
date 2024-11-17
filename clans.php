<?php
    include_once __DIR__ . '/./db/Database.php';
    include_once './api/sessao.php';
    
    validarSessao();
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
        header('Location: ./entrarClan');
    }
    
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="./css/default.css">
    <title>Clã</title>
    
    <!-- INDEX -->
    <link rel="stylesheet" href="./css/homeCreep.css">
    <script defer src="./js/popupCreep.js"></script> 
    <script defer src="./js/perfilClan.js"></script>
    <!-- <script defer src="./js/mensagens.js"></script> -->
    
</head>

<body>
    
    <main class="container">
        <div class="profile"> <!-- Perfil -->
            <!-- <div class="mensagem">
                <img src="./assets/imagens/chat-left-dots-fill.svg" alt="">
            </div> -->
            <div id='ajuste'>
                <div class="pictureCla"> <!-- Foto de perfil -->
                    <img id="imgClan" src="./assets/imagens/perfil/perfil0.jpg">
                </div>
                
                <div class="profile-user"><!-- Elementos de captura das aboboras | Botões de Pagina Admin e Logout -->
                    <div class="codigoCla"><button id="mostrarCod"> <img src="./assets//imagens/olhosAbertos.png" alt="mostrar codigo do cla" srcset=""> </button><button id="visibilidadeCod"><img src="./assets/imagens/olhosFechados.png" alt="esconder codigo do cla"></button><p>Codigo: </p> <span id="clan_cod">**********</span></div>
                    <div class="scoreBoard"> 
                        <div>
                            <h1> <span id="aboborasColetados">0</span></h1>
                            <span>COLETADOS</span>
                        </div>
                        <div>
                            <h1> <span id="aboborasTotais">20</span></h1>
                            <span>TOTAL</span>
                        </div>
                        <div>
                            <h1> <span id="rank_clan">?</span></h1>
                            <span>RANK</span>
                        </div>
                    </div>
                    
                    <div class="profile-buttons">
                        <a id='btnRanking' href='index'><button>Voltar</button></a>
                        <a id='btnRanking' href='rankCla'><button>Ranking</button></a>
                        <!-- <a href="#"><i id="btnMenu" class='bx bx-chat'></i></a> -->
                    </div>
                    
                </div>
            </div>
            
            <div> <!-- Nome do Usuário -->
                <h1 id="clan_nome_clan">Nome</h1>
            </div>
        </div>
        
        <div class="feed">
            <div class="feedItem">
                <div class="feedLine"></div>
                <h2 id="assasinosTitulo">Abóboras</h2>
            </div>
        </div>
        
        <div id="gallery_aboboras" class="gallery_aboboras">

        </div>
            
            <div class="assinatura">
                <a href="logout"><button>Sair</button></a>
            </div>

    </main>

    <div id='modalDica' class='modal oculto'>
        <div class='conteudo'>
            <h1 id='nomeTitulo_abobora'>Nome da Abobora</h1>
            <div class='gallery-item-abobora'>
                <img id="imagemAbobora" alt="item-Abobora">
                <h1 id='cadeado_abobora' class='info oculto bi bi-lock-fill'></h1>
            </div>
            <div>
                <h1>DICA</h1>
                <h3 id='descricao_abobora'> Aqui vai ficar o texto com a dica
                    ou uma charada de onde pode estar esse corvo
                </h3>
            </div>
        </div>
    </div>

</body>
</html>
