document.addEventListener("DOMContentLoaded", function () {
    const nomeDaAbobora = document.getElementById("nomeDaAbobora");
    const foto = document.getElementById("fotoAbobora");
    const aviso = document.getElementById("avisoCreep");
    const texto = document.getElementById("textoCreep");


    // solicitar nome
    async function fetchPerfilData() {
        try {
            const response = await fetch("./api/getClanInfo"); //http://localhost/halloweenJRB/api/getClanInfo
            if (!response.ok) {
                throw new Error('Erro ao carregar as informações do perfil.');
            }
            const data = await response.json();
            const element = document.getElementById("usernameCreep");
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
        nomeDaAbobora.textContent = $nome;
        $id = abobora.Abobora.id;
        foto.setAttribute("src", `./assets/aboboras/abobora${$id}.jpg`);
        aviso.textContent = "PARABENS";
        // executar confetes
        var script = document.createElement('script');
        script.src = './js/confetes.js';
        document.body.appendChild(script);
    }
    
    function jaRegistrado($id, $nome){
        nomeDaAbobora.textContent = "abobora ja coletado";
        $id = abobora.Abobora.id;
        foto.setAttribute("src", `./assets/aboboras/abobora${$id}.jpg`);
        aviso.textContent = `Abóbora ${$nome} já capturado, `;
        texto.textContent = "Esse abóbora já foi encontrada, continue procurando as demais.";
    }

    function aboboraNaoEncontrado(){
        nomeDaAbobora.textContent = "Abóbora Não Existe!";
        foto.setAttribute("src", "./assets/imagens/aboboraNaoEncontrado.png");
        aviso.textContent = "CUIDADO";
        texto.textContent = "Não faça isso, pois pode acabar se metendo em uma fria!";
    }

    if (abobora.registro){
        registroSucesso(abobora.Abobora.id, abobora.Abobora.name);
    }else{
        if (abobora.Abobora){
            jaRegistrado(abobora.Abobora.id, abobora.Abobora.name);
        }else{
            aboboraNaoEncontrado();
        }
    }

    setTimeout(function() {
        window.location.href = 'clans';
    }, 4000);

});
