<?php

include_once './sessao.php';

include_once __DIR__ . '/../db/Database.php';
use db\Database;

$db = new Database();
$conn = $db->connect();

try {
    
    //ENVIAR E SALVAR MENSAGENS DOS USUARIOS NO BANCO -------------------------------
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $msgs = trim($_POST['inputMgs']);
    }   
    $userId = $_SESSION['usuario']['ID'];
    
    //Pegar id do clan
    $sql = "SELECT `id` FROM `clan` WHERE `id` = ( SELECT `clan_id` FROM `user` WHERE `id` = :id)";
    $stmt = $conn->prepare($sql);
    $stmt->execute([':id' => $userId]);
    $id_clan = $stmt->fetch(PDO::FETCH_ASSOC);
    
    $id_clan = $id_clan['id'];

    $mandaMensagem = "INSERT INTO clan_messages (clan_id, user_id, message) 
                    VALUES (:id_cla, :user_id, :mensagem)";

    $preparar = $conn->prepare($mandaMensagem);
    
    if ($preparar->execute([':id_cla' => $id_clan, ':user_id' => $userId, ':mensagem' => $msgs])) {
        echo "Mensagem enviada com sucesso!";
    } else {
        echo "Erro ao enviar mensagem: ";
    }

    //EU ACHO Q TA TD FUNCIONANDO ATE AKI ----------------------------------------------    

    // PEGAR MSG DO BANCO E MANDAR PRO JS ----------------------------------------------

    function getMessage() {
        
        $db = new Database();
        $conn = $db->connect();
        $userId = $_SESSION['usuario']['ID'];

        $sql = "SELECT `id` FROM `clan` WHERE `id` = ( SELECT `clan_id` FROM `user` WHERE `id` = :id)";
        $stmt = $conn->prepare($sql);
        $stmt->execute([':id' => $userId]);
        $id_clan = $stmt->fetch(PDO::FETCH_ASSOC);
        
        $id_clan = $id_clan['id'];

        $pegarMensagem = "SELECT m.message, m.timestamp, u.name, u.id_photo
        FROM clan_messages m
        JOIN user u ON m.user_id = u.id
        WHERE m.id_clan = :id_clan
        ORDER BY m.timestamp DESC";

        $stmtM = $conn->prepare($pegarMensagem);
        $stmtM->execute([':id_clan' => $id_clan]);
        // $stmtM->bind_result($mensagem, $enviado_em, $nome, $foto_perfil);
        $dadosMensagem = $stmtM->fetch(PDO::FETCH_ASSOC);

        $mensagemtxt = $dadosMensagem['message'];
        $tempoMensagem = $dadosMensagem['timestamp'];
        $nome_user = $dadosMensagem['name'];
        $foto_user = $dadosMensagem['id_photo'];


        $mensagens = [];
        while ($stmt->fetch()) {
            $mensagens[] = [
                'mensagem' => $mensagemtxt,
                'enviado_em' => $tempoMensagem,
                'nome' => $nome_user,
                'foto_perfil' => $foto_user
            ];
        }

        echo json_encode($mensagens);
        
    }
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(array("error" => "Erro em carregar as mensagens: " . $e->getMessage()));
}

?>