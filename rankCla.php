<?php
    include_once './api/sessao.php';
    include_once './db/Database.php';
    use db\Database;
    

?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/rankPlayers.css">
    <link rel="stylesheet" href="./css/default.css">
    <title>Ranking dos Clãs</title>
    
</head>

<body>
    <div id="header">
        <a href='clans'><button>VOLTAR</button></a>
        <br><br>
        <h1>Ranking dos Clãs</h1>
    </div>

    <div class="alinhar">
    <table>
            <thead>
                <tr>
                    <th>Rank</th>
                    <th>Clãs</th>
                    <th>Quantidade</th>
                </tr>
            </thead>
            <tbody>
            <?php

                $db = new Database();
                $conexao = $db->connect();
                // Consultar Lista do ranking de Usuários
                $sql = "SELECT row_number() OVER (ORDER BY capturados DESC, menor_tempo ASC) AS ranking, clan, capturados, SEC_TO_TIME(menor_tempo) AS tempo
                FROM (
                    SELECT c.nome AS clan, COUNT(r.id) AS capturados,
                    AVG(TIMESTAMPDIFF(SECOND, (SELECT MIN(r2.date) FROM rank_clan r2 WHERE r2.id_user = r.id_user), r.date)) AS menor_tempo
                    FROM clan c LEFT JOIN rank_clan r ON c.id_lider = r.id_user GROUP BY c.id, c.nome
                    ) subquery
                ORDER BY
                    capturados DESC, menor_tempo ASC";

                $resultado = $conexao->query($sql);

                if (!$resultado) {
                    die("Erro ao executar a consulta: " . mysqli_error($conexao));
                }

                // Exibição dos dados na tabela
                while ($row = $resultado->fetch(PDO::FETCH_ASSOC)){
                    $porcento = number_format(($row['capturados']/12)*100,0);
                    echo "<tr>";
                        echo "<td>" . $row['ranking'] . "</td>";
                        echo "<td>" . $row['clan'] . "</td>";
                        echo '<td>'. $row['capturados'] . '</td>';
                    echo "</tr>";
                }

            ?>


            </tbody>
        </table>
    </div>
</body>
</html>