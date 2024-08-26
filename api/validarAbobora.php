<?php
include_once __DIR__ . '/../db/Database.php';
use db\Database;

$db = new Database();
$conn = $db->connect();


// if (!isset($_GET['hash'])){
    //     header('Location: ./index');
    // }
    
    
    $userId = $_SESSION['usuario']['ID']; // ID do usuário logado
    
    // Função para obter informações do clan
    $id_cla = "SELECT id, nome, codigo_clan, id_foto_clan FROM clan WHERE `id` = ( SELECT `clan_id` FROM `user` WHERE `id` = :id)";
    $peparar = $conn->prepare($id_cla);
    $peparar->execute([':id' => $userId]);
    $dados_pegos = $peparar->fetch(PDO::FETCH_ASSOC);
    $nome_clan = $dados_pegos["nome"];

    $clan_id = $dados_pegos["id"];
    
function pegarAboboraHash($hash, $conn){
    $sql = "SELECT id, name FROM `abobora` WHERE `hash` =:hashAbobora";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':hashAbobora', $hash, PDO::PARAM_STR);
    $stmt->execute();
    return $stmt->fetch(PDO::FETCH_ASSOC);
}

function registrarAbobora($clan_id, $hash, $conn){

    $sql = "INSERT INTO rank_clan (id_clan, id_abobora) SELECT user.clan_id, abobora.id FROM user, abobora WHERE user.clan_id = :id_cla AND abobora.hash = :hashAbobora";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':hashAbobora', $hash, PDO::PARAM_STR);
    $stmt->bindParam(':id_cla', $clan_id, PDO::PARAM_INT);
    try {
        $stmt->execute();
        return $conn->lastInsertId();
    }catch(Exception $e){ return FALSE; }
}

try {
    $db = new Database();
    $conn = $db->connect();

    $hash = $_GET['hash'];

    $abobora = pegarAboboraHash($hash, $conn);
    if ($abobora){
        global $id_cla;

        $registro = registrarAbobora($clan_id, $hash, $conn);
        
        if ($registro){ //registrou corretamente
            $data = json_encode(array(
                "registro" => TRUE,
                "Abobora" => $abobora,
                "erro" => '',
            ));
        }else{
            //ja tem registrado
            $data = json_encode(array(
                "registro" => FALSE,
                "Abobora" => $abobora,
                "erro" => 'Abóbora já capturado.',
            ));

        }
    }else{
        $data = json_encode(array(
            "registro" => FALSE,
            "erro" => 'Abóbora não existe !',
        ));
    }
    echo "<script>var abobora = $data;</script>";
    $db = null;
    
} catch (Exception $e) {
    echo $e;
    // header('Location: ./index');
    exit;
}

?>
