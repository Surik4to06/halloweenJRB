<?php
include_once __DIR__ . '/./db/Database.php';
include_once './api/sessao.php';

validarSessao();
use db\Database;
$db = new Database();
$conn = $db->connect();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $codigo_clan = $_POST['codigo_clan'];
    $id_usuario = $_SESSION['usuario']['ID']; // ID do usuário logado

    // Verifica se o código do clã existe
    $sql = "SELECT `id` FROM `clan` WHERE `codigo_clan` = :cod";
    $stmt = $conn->prepare($sql);
    $stmt->execute([':cod' => $codigo_clan]);
    // $guarda = mysqli_store_result();
    $id_clan = $stmt->fetch(PDO::FETCH_ASSOC);

    $id_clan = $id_clan['id'];
    

    if ($stmt) {
        // $stmt->bind_result($id_cla);
        $stmt->fetch();
        
        // Verifica se o usuário já pertence a um clã
        $sql_check = "SELECT * FROM `user` WHERE id = :id";
        $stmt_check = $conn->prepare($sql_check);
        $stmt_check->execute([':id' => $id_usuario]);

        $getidclan = $stmt_check->fetch(PDO::FETCH_ASSOC);
        $getidclan = $getidclan['clan_id'];
        // $stmt_check->fetch();
        
        if ($getidclan != 0) {
            echo "Você já pertence a um clã.";
        } else {
            // Atualiza o usuário para ser membro do clã
            $sql_update = "UPDATE user SET clan_id = :id_clan, cargo = 'member' WHERE id = :id";
            $stmt_update = $conn->prepare($sql_update);
            $stmt_update->bindParam(':id_clan', $id_clan);
            $stmt_update->bindParam(':id', $id_usuario);

            if ($stmt_update->execute()) {
                echo "Você entrou no clã com sucesso!";
            } else {
                echo "Erro ao entrar no clã. Por favor, tente novamente.";
            }
        }
    } else {
        echo "Código de clã inválido.";
    }
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="./css/default.css">
    <link rel="stylesheet" href="./css/criar_clan.css">
    <title>Entrar em um Clã</title>
</head>
<body>

        <form class="container_clan" action="./entrarClan" method="POST">
            <h1>Entrar em um Clã</h1>
            <div class="nome_do_clan">
                <label for="codigo_clan">Código do Clã:</label>
                <input type="text" id="codigo_clan" name="codigo_clan" placeholder="Digite o código do Clã" required>
            </div>
            
            <div class="acao">
                <button type="submit">Entrar</button>
            </div>
                <a href="criar_clan">Criar Clã</a>
        </form>


</body>
</html>