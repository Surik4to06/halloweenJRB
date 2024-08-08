<?php
include_once __DIR__ . '/../db/Database.php';

use db\Database;

$db = new Database();
$conn = $db->connect();

// Verifica se o formulário foi submetido
if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_FILES["imagem"])) {

    // Caminho para a pasta onde as imagens serão salvas
    $uploadDir = __DIR__ . '/../assets/imagens/perfil/';

    try {
        // Verifica se o diretório de upload existe
        if (!is_dir($uploadDir)) {
            throw new Exception("O diretório de upload não existe.");
        }

        $uploadedFile = $_FILES['imagem'];

        // Verifica se houve algum erro no upload
        if ($uploadedFile['error'] !== UPLOAD_ERR_OK) {
            throw new Exception("Erro ao realizar o upload da imagem.");
        }

        // Verifica o tamanho do arquivo
        $maxFileSize = 5 * 1024 * 1024; // 5 MB
        if ($uploadedFile['size'] > $maxFileSize) {
            throw new Exception("A imagem excede o tamanho máximo permitido de 5 MB.");
        }

        // Obtém informações da imagem
        $imagePath = $uploadDir . basename($uploadedFile['name']);
        $imageType = mime_content_type($uploadedFile['tmp_name']);
        $imageData = file_get_contents($uploadedFile['tmp_name']);

        // Move o arquivo para o diretório final
        if (!move_uploaded_file($uploadedFile['tmp_name'], $imagePath)) {
            throw new Exception("Falha ao mover o arquivo para o diretório de destino.");
        }

        // Prepara e executa a consulta SQL para inserir a imagem no banco de dados
        $sql = "INSERT INTO Photograph (Photo, PhotoType) VALUES (:imageData, :imageType)";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':imageData', $imageData, PDO::PARAM_LOB);
        $stmt->bindParam(':imageType', $imageType, PDO::PARAM_STR);
        $stmt->execute();

        // Redireciona para a página de upload com uma mensagem de sucesso
        header('Location: ../uploadImg');
        exit;

    } catch (Exception $e) {
        echo "Erro: " . $e->getMessage();
    }
} else {
    echo "Por favor, selecione uma imagem para enviar.";
}
?>
