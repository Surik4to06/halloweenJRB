document.addEventListener("DOMContentLoaded", function () {
    const nomeDoCorvo = document.getElementById("nomeDoCorvo");
    const foto = document.getElementById("fotoCorvo");
    const aviso = document.getElementById("aviso");
    const texto = document.getElementById("texto");


    // solicitar nome
    async function fetchPerfilData() {
        try {
            const response = await fetch("./api/getPerfil");
            if (!response.ok) {
                throw new Error('Erro ao carregar as informações do perfil.');
            }
            const data = await response.json();
            const element = document.getElementById("username");
            if (element) { element.textContent = data.username;}
        } catch (error) {
            console.log('erro no validar');
            handleFetchError(error);
        }
    }

    Promise.all([fetchPerfilData()])
        .then(() => {
            console.log("Perfil carregado com sucesso.");
        })
        .catch(error => {
            console.error("Erro ao carregar perfil completo:", error);
            alert("Erro ao carregar o perfil completo.");
        });



    // ----------------------





    function registroSucesso($id, $nome){
        nomeDoCorvo.textContent = $nome;
        $id = crow.corvo.id;
        foto.setAttribute("src", `./assets/imagens/corvo${$id}.jpg`);
        aviso.textContent = "PARABENS";
        // executar confetes
        var script = document.createElement('script');
        script.src = './js/confetes.js';
        document.body.appendChild(script);
    }
    
    function jaRegistrado($id, $nome){
        nomeDoCorvo.textContent = "Assasino ja encontrado";
        $id = crow.corvo.id;
        foto.setAttribute("src", `./assets/imagens/corvo${$id}.jpg`);
        aviso.textContent = `Assasino ${$nome} já capturado, `;
        texto.textContent = "Esse assasino já foi encontrado, tente achar os outros...";
    }

    function corvoNaoEncontrado(){
        nomeDoCorvo.textContent = "Assasino Não Existe!";
        foto.setAttribute("src", "./assets/imagens/corvoNaoEncontrado.png");
        aviso.textContent = "CUIDADO";
        texto.textContent = "Parece que não tem nenhum assassino aqui meu filho. Ufa, ainda bem salsicha";
    }

    if (crow.registro){
        registroSucesso(crow.corvo.id, crow.corvo.name);
    }else{
        if (crow.corvo){
            jaRegistrado(crow.corvo.id, crow.corvo.name);
        }else{
            corvoNaoEncontrado();
        }
    }

    setTimeout(function() {
        window.location.href = 'index';
    }, 4000);

});
