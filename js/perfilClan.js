document.addEventListener("DOMContentLoaded", function () {

    async function fetchClanData() {
        try {
            const response = await fetch("api/getClanInfo");
            if (!response.ok) {
                throw new Error('Erro ao carregar as informações do clã.');
            }
            const data = await response.json();
            updateClanData(data);
        } catch (error) {
            console.log('erro clan .php');
            handleFetchError(error);
        }
    } 

    

    function updateClanData(data) {
        const visibilidadeCod = document.getElementById('visibilidadeCod');
        visibilidadeCod.addEventListener('click', () => {
            updateElementText("clan_cod", '...');
            updateElementAttribute('visibilidadeCod', 'mostrarCod');
            visibilidadeCod.style.display = 'none';
            mostrarCod.style.display = 'block';
        });

        const mostrarCod = document.getElementById('mostrarCod');
        mostrarCod.addEventListener('click', () => {
            updateElementText("clan_cod", data.codigoClan);
            updateElementAttribute('mostrarCod', 'visibilidadeCod');
            visibilidadeCod.style.display = 'block';
            mostrarCod.style.display = 'none';
        });

        updateElementText("clan_cod", data.codigoClan);
        updateElementText("clan_nome_clan", data.clan_nome);
        if (data.fotoDoClan == null) {
            updateElementAttribute("imgClan", "src", `./assets/imagens/fotos_clan/foto_default_clan.png`);
        } else {
            updateElementAttribute("imgClan", "src", `./assets/imagens/fotos_clan/${data.fotoDoClan}`);
        }
        updateElementText("aboborasColetados", data.numAboborasColetadas);
        updateElementText("aboborasTotais", data.numAboborasTotais);
        updateElementText("rank_clan", data.rank_clan);
        popularHOME(data.listaDeAbobora);
        window.listaDeAbobora = data.listaDeAbobora;
    }

    // JEFF
    function popularHOME(lista){
        const gallery_aboboras = document.getElementById("gallery_aboboras");
        lista.forEach(element => {
            let id = element.id;
            let display = element.registrado == 1 ? "info oculto" : "info";
            gallery_aboboras.innerHTML += `
            <div class='gallery-item-abobora' onclick='openModal(${id})'>
                <img src='./assets/aboboras/abobora${id}.jpg' alt='item-Abobora'>
                <h1 class='${display} bi bi-lock-fill'></h1>
            </div>
            `;
        });
    }

    function updateElementText(id, text) {
        const element = document.getElementById(id);
        if (element) {
            element.textContent = text;
        }
    }


    function updateElementAttribute(id, attribute, value) {
        const element = document.getElementById(id);
        if (element) {
            element.setAttribute(attribute, value);
        }
    }


    function handleFetchError(error) {
        console.log('Erro de requisição:', error);
        alert('Erro ao carregar os dados do clan.');
    }

    
    Promise.all([fetchClanData()])
        .then(() => {
            console.log("Clan carregado com sucesso.");
        })
        .catch(error => {
            console.error("Erro ao carregar clan completo:", error);
            alert("Erro ao carregar o clan completo.");
        });
});
