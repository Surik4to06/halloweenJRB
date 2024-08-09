<?php 
    include_once './api/sessao.php';
    include_once __DIR__ . '/db/Database.php';
    use db\Database;

    $db = new Database();
    $conn = $db->connect();

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $nome_user = $_POST['nome_user'];
        $nome_clan = $_POST['nome_clan'];
        $senha_clan = $_POST['senha_clan'];
    }

    // $sql = "INSERT INTO clan_members (user_id, ) VALUES (:nome_clan, :senha_clan)";
            
    // $stmt = $conn->prepare($sql);
    // $stmt->bindParam(":nome_clan", $nome_clan, PDO::PARAM_STR);
    // $stmt->bindParam(":senha_clan", $senha_clan, PDO::PARAM_STR);
    // $stmt->execute();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/clans.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="./css/default.css">
    <title>Entrar no clãn</title>
</head>
<body>
    <div class="container_clan">    
        <form action="entrarClan" method="POST">
            <h1>Entrar no Clãn</h1>
            <div class="nome_do_clan">
                <label for="nome_user">Seu nome</label>
                <input type="text" name="nome_user" placeholder="digite o seu nome para entrar" require>
            </div>
            <div class="nome_do_clan">
                <label for="nome_clan">Nome do Clãn</label>
                <input type="text" name="nome_clan" placeholder="digite o nome do clãn" require>
            </div>
            <div class="nome_do_clan">
                <label for="senha_clan">Senha do Clãn</label>
                <input type="password" name="senha_clan" placeholder="digite a senha do clãn" require>
            </div>

            <button type="submit">Entrar</button>
            <a href="criar_clan">Criar clãn</a>
        </form>
    </div>
</body>
</html>