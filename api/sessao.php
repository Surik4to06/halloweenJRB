<?php
session_start();

verificarTempoSessao();


function verificarTempoSessao(){
    $tempo = 900; //min*60seg -> 15min*60 = 900
    if (isset($_SESSION['time']) && (time() - $_SESSION['time'] > $tempo )) {
        logout();
    }
    $_SESSION['time'] = time();
}

// Função para obter informações do clan
$id_cla = "SELECT id, nome, codigo_clan, id_foto_clan FROM clan WHERE `id` = ( SELECT `clan_id` FROM `user` WHERE `id` = :id)";
$peparar = $conn->prepare($id_cla);
$peparar->execute([':id' => $userId]);
$dados_pegos = $peparar->fetch(PDO::FETCH_ASSOC);
$nome_clan = $dados_pegos["nome"];

$clan_id = $dados_pegos["id"];

$_SESSION['id_cla'] = $clan_id;
// global $clan_id;


function validarSessao(){
    //se nao estiver logado
    if( !isset($_SESSION['login']) ){
        $_SESSION['redirecionar'] = $_SERVER['REQUEST_URI'];
        header('location: ./login');
        exit;
    }
}


function validarLoginAdm(){
    validarSessao();
    // se não for um ADM
    if ($_SESSION['usuario']['id_usertype'] != 1){
        header('location: ./index');
        exit;
    }
}


function logout(){
    session_unset();
}


?>