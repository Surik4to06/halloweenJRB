document.addEventListener('DOMContentLoaded', function() {
    carregarMensagens();
});

function carregarMensagens() {
    const id_clan = 6; // nn sei como vou mudar o id do cla nem como pegar ele kkk
    fetch(`getMensagens?id_clan=${id_clan}`)
        .then(response => response.json())
        .then(mensagens => {
            const container = document.getElementById('containerMensagem');
            container.innerHTML = '';
            mensagens.forEach(mensagem => {
                const div = document.createElement('div');
                div.className = 'mensagem';
                div.innerHTML = `
                    <img src="${mensagem.foto_perfil}" alt="Foto de ${mensagem.nome}">
                    <div class="conteudo">
                        <strong>${mensagem.nome}</strong>: ${mensagem.mensagem}
                        <div class="tempo">${mensagem.enviado_em}</div>
                    </div>
                `;
                container.appendChild(div);
            });
        });
}

function enviarMensagem() {
    const id_clan = 6; // Supondo que o ID do clã seja 1
    const id_usuario = 3; // Supondo que o ID do usuário seja 1, ajustar conforme necessário
    const mensagem = document.getElementById('inputMgs').value;

    fetch('./getMensagens', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: `id_clan=${id_clan}&id_usuario=${id_usuario}&mensagem=${encodeURIComponent(mensagem)}`
    })
    .then(response => response.text())
    .then(result => {
        console.log(result);
        carregarMensagens();
        document.getElementById('inputMgs').value = '';
    });
}
