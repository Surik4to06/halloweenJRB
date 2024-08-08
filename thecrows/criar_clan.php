

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/clans.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="./css/default.css">
    <title>Clãn</title>
</head>
<body>
    <div class="container_clan">
        <form action="api/criarClan" method="POST">
            <h1>Criar Clãn</h1>
            <div class="nome_do_clan">
                <label for="nome_clan">Nome do Clãn</label>
                <input type="text" name="nome_clan" placeholder="digite o nome do clãn" require>
            </div>
            <div class="nome_do_clan">
                <label for="senha_clan">Senha do Clãn</label>
                <input type="password" name="senha_clan" placeholder="digite a senha do clãn" require>
            </div>

            <!-- FOTO DO CLAN -->
            <div class="foto_div">
                <label for="foto_clan">Foto do Clãn</label>
                <div class="foto_default">
                    <div class="box">
                        <label class="avatar" for="input-file">
                            <img src="./assets/imagens/foto_defult_clan.png" alt="">
                        </label>
                    </div>
                    <label class="btn_input" for="input-file">Adicionar foto</label>
                    <input type="file" name="foto_enviada" accept="image/jpeg, image/png, image/jpg" id="input-file">
                </div>
            </div>


            <button type="submit">Criar</button>
            <input type="text" placeholder="Entrar em algum Clãn"><button>Entrar</button>
        </form>
    </div>
</body>
</html>