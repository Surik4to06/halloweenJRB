<?php
include_once __DIR__ . '/./db/Database.php';
include_once './api/sessao.php';

validarSessao();
use db\Database;
$db = new Database();
$conn = $db->connect();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $nome_cla = $_POST['nome_clan'];
    $id_lider = $_SESSION['usuario']['ID']; // ID do usuário logado
    $codigo_cla = substr(md5(uniqid(rand(), true)), 0, 10); // Gera um código único
    $foto_cla = $_FILES['foto_cla'];

    $nome_foto_cla = $codigo_cla. '.jpg';
    move_uploaded_file($foto_cla['tmp_name'], "./assets/imagens/fotos_clan/$nome_foto_cla");

    $sql = "INSERT INTO clan (nome, codigo_clan, id_lider, id_foto_clan) VALUES (:nome, :cod, :id, :foto_cla)";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':nome', $nome_cla);
    $stmt->bindParam(':cod', $codigo_cla);
    $stmt->bindParam(':id', $id_lider);
    $stmt->bindParam(':foto_cla', $nome_foto_cla);
    

    if ($stmt->execute()) {
        $id_cla = $conn->lastInsertId();

        // Atualiza o usuário para ser o líder do novo clã
        $sql_update = "UPDATE user SET clan_id = $id_cla, cargo = 'leader' WHERE id = $id_lider";
        $stmt_update = $conn->prepare($sql_update);
        $stmt_update->execute();

        header('Location: ./clans');
        echo "Clã criado com sucesso! Código do clã: " . $codigo_cla;
    } else {
        echo "Erro ao criar clã.";
    }
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="stylesheet" href="./css/clans.css"> -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="./css/default.css">
    <link rel="stylesheet" href="./css/criar_clan.css">
    <title>Clãn</title>
</head>
<body>
    <div class="container_clan">
        <form action="./criar_clan" method="POST" enctype="multipart/form-data">
            <h1>Criar Clã</h1>
            <div class="nome_do_clan">
                <label for="nome_clan">Nome do Clã:</label>
                <input type="text" name="nome_clan" placeholder="digite o nome do clãn" require>
            </div>
            <div class="nome_do_clan foto">
                <label for="foto_cla"><img id="imgFoto" src="./assets/imagens/foto_defult_clan.png" alt=""></label>
                <input id="foto_cla" type="file" name="foto_cla" placeholder="selecione uma foto" required accept="image/*">
            </div>
            
            <button type="submit">Criar</button>
            <a href="entrarClan">Entrar em outro Clã</a>
        </form>

    </div>
</body>
</html>