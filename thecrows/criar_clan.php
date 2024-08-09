<?php 
    include_once './api/sessao.php';
    include_once __DIR__ . '/db/Database.php';
    use db\Database;

    $db = new Database();
    $conn = $db->connect();
    
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $nome_clan = $_POST['nome_clan'];
        $senha_clan = $_POST['senha_clan'];
        $foto_enviada = $_POST['foto_enviada'];

        $sql = "INSERT INTO clan (nome_clan, senha_clan) VALUES (:nome_clan, :senha_clan)";

        // $sql_foto = "INSERT INTO foto_clan () 
        // VALUES ()";
            
        $smt = $conn->prepare($sql);
        $smt->bindParam(":nome_clan", $nome_clan, PDO::PARAM_STR);
        $smt->bindParam(":senha_clan", $senha_clan, PDO::PARAM_STR);
        $smt->execute();

        $clan_id = mysqli_insert_id($conn);
        $update_user_query = "UPDATE user SET clan_id = $clan_id, cargo = 'leader' WHERE id = $leader_id";
        mysqli_query($conn, $update_user_query);

        echo 'Clãn criado com sucesso';
    }
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/clans.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="./css/default.css">
    <title>Clãn</title>
</head>
<body>
    <div class="container_clan">
        <form action="criar_clan" method="POST">
            <h1>Criar Clãn</h1>
            <div class="nome_do_clan">
                <label for="nome_clan">Nome do Clãn</label>
                <input type="text" name="nome_clan" placeholder="digite o nome do clãn" require>
            </div>
            <div class="nome_do_clan">
                <label for="senha_clan">Senha do Clãn</label>
                <input type="password" name="senha_clan" placeholder="digite a senha do clãn" require>
            </div>

            <!-- FOTO DO CLAN -->
            <div class="foto_div">
                <label for="foto_clan">Foto do Clãn</label>
                <div class="foto_default">
                    <div class="box">
                        <label class="avatar" for="input-file">
                            <img src="./assets/imagens/foto_defult_clan.png" alt="">
                        </label>
                    </div>
                    <label class="btn_input" for="input-file">Adicionar foto</label>
                    <input type="file" name="foto_enviada" accept="image/jpeg, image/png, image/jpg" id="input-file">
                </div>
            </div>
            <button type="submit">Criar</button>
            <a href="entrarClan">Entrar em outro clan</a>
        </form>

    </div>
</body>
</html>