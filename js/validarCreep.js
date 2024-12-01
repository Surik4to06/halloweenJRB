document.addEventListener("DOMContentLoaded", function () {
    const nomeDaAbobora = document.getElementById("nomeDaAbobora");
    const fotoAbobora = document.getElementById("fotoAbobora");
    const avisoCreep = document.getElementById("avisoCreep");
    const textoCreep = document.getElementById("textoCreep");


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

    $id = abobora.abobora.id;

    // ----------------------

    function registroSucesso($id, $nome){
        nomeDaAbobora.textContent = $nome;
        fotoAbobora.setAttribute("src", `./assets/aboboras/abobora${$id}.jpg`);
        avisoCreep.textContent = "PARABENS";
        // executar confetes
        var script = document.createElement('script');
        script.src = './js/confetes.js';
        document.body.appendChild(script);
    }
    
    function jaRegistrado($id, $nome){
        nomeDaAbobora.textContent = "Abóbora ja coletada";
        fotoAbobora.setAttribute("src", `./assets/aboboras/abobora${$id}.jpg`);
        avisoCreep.textContent = `${$nome} já capturada`;
        textoCreep.textContent = "Essa abóbora já foi encontrada, continue procurando as demais.";
    }

    function aboboraNaoEncontrado(){
        nomeDaAbobora.textContent = "Abóbora Não Existe!";
        fotoAbobora.setAttribute("src", "./assets/aboboras/aboboraNaoEncontrada.jpg");
        avisoCreep.textContent = "CUIDADO";
        textoCreep.textContent = "Cuidado, não se meta aonde não foi chamado!";
    }

    if (abobora.registro){
        registroSucesso($id, abobora.abobora.name);
    }else{
        if (abobora.abobora){
            jaRegistrado($id, abobora.abobora.name);
        }else {
            aboboraNaoEncontrado();
        }
    }

    setTimeout(function() {
        window.location.href = 'clans';
    }, 4000);

});
