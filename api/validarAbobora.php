<?php
require_once 'getClanInfo.php';
include_once 'sessao.php';
include_once __DIR__ . '/../db/Database.php';
use db\Database;

if (!isset($_GET['hash'])){
    header('Location: ./index');
}

function pegarAboboraHash($hash, $conn){
    $sql = "SELECT id, name FROM `abobora` WHERE `hash` =:hashabobora";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':hashabobora', $hash, PDO::PARAM_STR);
    $stmt->execute();
    return $stmt->fetch(PDO::FETCH_ASSOC);
}

function registrarAbobora($cla_lider, $hash, $conn){
    $sql = "INSERT INTO `rank_clan`(id_user, id_abobora) SELECT user.id, abobora.id FROM user, abobora WHERE user.id = $cla_lider AND abobora.hash = :hashabobora";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':hashabobora', $hash, PDO::PARAM_STR);
    try {
        $stmt->execute();
        return $conn->lastInsertId();
    }catch(Exception $e){ return FALSE; }
}

try {
    $db = new Database();
    $conn = $db->connect();

    $hash = $_GET['hash'];
    $cla_lider = $_SESSION['id_lider'];

    $abobora = pegarAboboraHash($hash, $conn);
    if ($abobora){

        $registro = registrarAbobora($cla_lider, $hash, $conn);
        
        if ($registro){ //registrou corretamente
            $data = json_encode(array(
                "registro" => TRUE,
                "abobora" => $abobora,
                "erro" => '',
            ));
        }else{
            //ja tem registrado
            $data = json_encode(array(
                "registro" => FALSE,
                "abobora" => $abobora,
                "erro" => 'corvo já capturado.',
            ));

        }
    }else{
        $data = json_encode(array(
            "registro" => FALSE,
            "erro" => 'Abobora não existe !',
        ));
    }
    echo "<script>var abobora = $data;</script>";
    $db = null;
    
} catch (Exception $e) {
    echo $e;
    header('Location: ./index');
    exit;
}

?>
