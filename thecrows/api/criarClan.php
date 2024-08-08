<?php 
    include '../db/Database.php';
    use db\Database;

    $db = new Database();
    $conn = $db->connect();

    if (isset($_POST)) {
        if(isset($_POST['nome_clan']) and isset($_POST['senha_clan'])) {
            $nome_clan = $_POST['nome_clan'];
            $senha_clan = $_POST['senha_clan'];

            $sql = "INSERT INTO clan (nome_clan, senha_clan) VALUES (:nome_clan, :senha_clan)";
            $smt = $conn->prepare($sql);
            $smt->bindParam(":nome_clan", $nome_clan, PDO::PARAM_STR);
            $smt->bindParam(":senha_clan", $senha_clan, PDO::PARAM_STR);
            $smt->execute();

        } elseif (isset($_POST['nome_clan']) or isset($_POST['senha_clan'])) {
            echo 'verifique os campos e tente novamente'; 
        }


    } else {
        if (!isset($_POST)) {
            echo 'preencha os campos e tente novamente';
        }
    }


?>