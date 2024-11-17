<?php
include_once './sessao.php';
include_once __DIR__ . '/../db/Database.php';
validarSessao();

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
    $id_cla = "SELECT `id`, `nome`, `codigo_clan`, `id_lider`, `id_foto_clan` FROM `clan` WHERE `id` = ( SELECT `clan_id` FROM `user` WHERE `id` = :id)";
    $peparar = $conn->prepare($id_cla);
    $peparar->execute([':id' => $userId]);
    $dados_pegos = $peparar->fetch(PDO::FETCH_ASSOC);

    $clan_id = $dados_pegos["id"];
    $_SESSION['cla_id'] = $clan_id;
    $lider_cla = $dados_pegos['id_lider'];
    // global $clan_id;
    $_SESSION['id_foto_clan'] = $dados_pegos['id_foto_clan'];

    $_SESSION['id_lider'] = $lider_cla;
    
    if ($clan_id = 0) {
        header("Location: criar_clan");
    }
    
    // FUNCAO PARA PEGAR TODOS as aboboras REGISTRADO E OS CAPTURADOS EM UMA ARRAY
    function getAboboraResultByUser($lider_cla, $conn) {
        $listaDeAbobora = array();
        $sql = "SELECT a.id AS id, a.name AS name, a.tip AS tip,
        IF(rk.id_user IS NOT NULL, 1, 0) AS registrado FROM abobora a
        LEFT JOIN rank_clan rk ON a.id = rk.id_abobora AND rk.id_user = :id_cla_user";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':id_cla_user', $lider_cla, PDO::PARAM_INT);
        $stmt->execute();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            $listaDeAbobora[] = $row;
        }
        return $listaDeAbobora;
    }// JEFF>

    // // Função para obter o número de aboboras coletados pelo usuário
    function getNumAboborasColetados($lider_cla, $conn)
    {
        $sql = "SELECT COUNT(*) as numAboborasColetadas FROM rank_clan WHERE id_user = :id_user";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':id_user', $lider_cla, PDO::PARAM_INT);
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

    // Função para obter a classificação do clan
    function getClanRank($lider_cla, $conn){
        $sql = "WITH rankings AS (
            SELECT row_number() OVER (ORDER BY capturados DESC, menor_tempo ASC) AS ranking, clan, capturados,  SEC_TO_TIME(menor_tempo) AS tempo
            FROM (
                SELECT c.nome AS clan, COUNT(r.id_user) AS capturados,
                AVG(TIMESTAMPDIFF(SECOND, (SELECT MIN(r2.date) FROM rank_clan r2 WHERE r2.id_user = r.id_user), r.date)) AS menor_tempo
                FROM clan c LEFT JOIN rank_clan r ON c.id_lider = r.id_user GROUP BY c.id, c.nome
            ) subquery
        )
        SELECT ranking FROM rankings WHERE clan = (SELECT nome FROM clan WHERE id_lider = :lider);";

        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':lider', $lider_cla, PDO::PARAM_INT);
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
    $numAboborasColetados = getNumAboborasColetados($lider_cla, $conn);

    // Obter número total de aboboras
    $numAboborasTotais = getNumAboborasTotais($conn);

    // Obter classificação do clã
    $rank_clan = getClanRank($lider_cla, $conn);

    // JEFF
    $listaDeAbobora = getAboboraResultByUser($lider_cla, $conn);

    // Montar resposta JSON
    $response_cla = [
        'clan_nome' => $dados_pegos["nome"],
        'numAboborasColetadas' => $numAboborasColetados,
        'numAboborasTotais' => $numAboborasTotais,
        'fotoDoClan' => $dados_pegos['id_foto_clan'],
        'codigoClan' => $dados_pegos['codigo_clan'],
        'rank_clan' => $rank_clan,
        // 'listaDeAbobora' => $listaDeAbobora,
    ];

    echo json_encode($response_cla);
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(array("error" => "Erro no servidor: " . $e->getMessage()));
}
?>
