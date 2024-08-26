<?php
include_once '../api/sessao.php';
include_once __DIR__ . '/../db/Database.php';

use db\Database;

// Verificar se o usuário está autenticado
if (!isset($_SESSION['login'])) {
    http_response_code(401);
    echo json_encode(array("error" => "Usuário não autenticado!"));
    exit;
}

try {
    $db = new Database();
    $conn = $db->connect();
    $userId = $_SESSION['usuario']['ID']; // ID do usuário logado
    
    // Função para obter informações do clan
    $id_cla = "SELECT id, nome, codigo_clan, id_foto_clan FROM clan WHERE `id` = ( SELECT `clan_id` FROM `user` WHERE `id` = :id)";
    $peparar = $conn->prepare($id_cla);
    $peparar->execute([':id' => $userId]);
    $dados_pegos = $peparar->fetch(PDO::FETCH_ASSOC);
    $nome_clan = $dados_pegos["nome"];

    $clan_id = $dados_pegos["id"];
    // global $clan_id;
    
    if ($clan_id = 0) {
        header("Location: criar_clan");
    }
    function getClanInfo($clan_id, $conn)
    {
        // $id_cla = "SELECT id, nome, codigo_clan, id_foto_clan FROM clan WHERE `id` = ( SELECT `clan_id` FROM `user` WHERE `id` = :id)";
        // $peparar = $conn->prepare($userId);
        // $peparar->execute();
        // $dados_pegos = $peparar->fetch(PDO::FETCH_ASSOC);
    }

    // <JEFF

    // FUNCAO PARA PEGAR TODOS as aboboras REGISTRADO E OS CAPTURADOS EM UMA ARRAY
    function getAboboraResultByUser($clan_id, $conn){
        global $clan_id;
        $listaDeAbobora = array();
        $sql = "SELECT a.id AS id, a.name AS name, a.tip AS dica,
        IF(rk.id_clan IS NOT NULL, 1, 0) AS registrado FROM abobora a
        LEFT JOIN rank_clan rk ON a.id = rk.id_abobora AND rk.id_clan = :id_clan";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':id_clan', $clan_id, PDO::PARAM_INT);
        $stmt->execute();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            $listaDeAbobora[] = $row;
        }
        return $listaDeAbobora;
    }// JEFF>

    // // Função para obter o número de aboboras coletados pelo usuário
    function getNumAboborasColetados($clan_id, $conn)
    {
        global $clan_id;
        $sql = "SELECT COUNT(*) as numAboborasColetadas FROM rank_clan WHERE id_clan = :id_clan";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':id_clan', $clan_id, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->fetch(PDO::FETCH_ASSOC)['numAboborasColetadas'];
    }

    // Função para obter o número total de aboboras
    function getNumAboborasTotais($conn)
    {
        $sql = "SELECT COUNT(*) as numAboborasTotais FROM abobora";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        return $stmt->fetch(PDO::FETCH_ASSOC)['numAboborasTotais'];
    }

    // // Função para obter a classificação do clan
    function getClanRank($clan_id, $conn){
        global $clan_id;
        $sql = "WITH rankings AS (
            SELECT row_number() OVER (ORDER BY capturados DESC, menor_tempo ASC) AS ranking, usuario, capturados,  SEC_TO_TIME(menor_tempo) AS tempo
            FROM (
                SELECT u.name AS usuario, COUNT(r.id) AS capturados,
                AVG(TIMESTAMPDIFF(SECOND, (SELECT MIN(r2.date) FROM rank_clan r2 WHERE r2.id_clan = u.clan_id), r.date)) AS menor_tempo
                FROM user u LEFT JOIN rank_clan r ON u.clan_id = r.id_clan GROUP BY u.id, u.name
            ) subquery
        )
        SELECT ranking FROM rankings WHERE usuario = (SELECT name FROM user WHERE clan_id = :id_clan);";

        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':id_clan', $clan_id, PDO::PARAM_INT);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);

        // Verificar se houve resultado da consulta
        if ($result) {
            return $result['ranking'];
        } else {
            return '?';
        }
    }

    // Obter informações do clan
    // $clan_info = getClanInfo($clan_id, $conn);
    if (!$dados_pegos) {
        http_response_code(404);
        echo json_encode(array("error" => "Clã não encontrado"));
        exit;
    }
   
    // $_SESSION['usuario']["clan_id"] = $userInfo['clan_id'];

    // Obter número de aboboras coletados
    $numAboborasColetados = getNumAboborasColetados($userId, $conn);

    // Obter número total de aboboras
    $numAboborasTotais = getNumAboborasTotais($conn);

    // Obter classificação do clã
    $rank_clan = getClanRank($userId, $conn);

    // JEFF
    $listaDeAbobora = getAboboraResultByUser($userId, $conn);

    // Montar resposta JSON
    $response = [
        'clan_nome' => $nome_clan,
        'numAboborasColetadas' => $numAboborasColetados,
        'numAboborasTotais' => $numAboborasTotais,
        'rank_clan' => $rank_clan,
        'listaDeAbobora' => $listaDeAbobora,// JEFF
    ];

    echo json_encode($response);
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(array("error" => "Erro no servidor: " . $e->getMessage()));
}
?>
