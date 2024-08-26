const modalCreep = document.getElementById('modalDica');
const nomeTituloCreep = document.getElementById('nomeTitulo_abobora');
const descricaoCreep = document.getElementById('descricao_abobora');
const cadeadoCreep = document.getElementById('cadeado_abobora');
const imagemCreep = document.getElementById('imagemAbobora');

modalCreep.addEventListener('click', () => {
    modalCreep.classList.toggle('oculto');
});


function openModal(id){
    let abobora = window.listaDeAbobora[id-1]
    if (abobora['registrado'] == 1){
        cadeadoCreep.classList.add('oculto');
        imagemCreep.setAttribute("src", `./assets/imagens/abobora${abobora['id']}.jpg`);
    }else{
        cadeadoCreep.classList.remove('oculto');
        imagemCreep.setAttribute("src", `./assets/imagens/abobora${abobora['id']}.jpg`);
    }
    nomeTituloCreep.innerHTML = abobora['name'];
    descricaoCreep.innerHTML = abobora['tip'];
    modalCreep.classList.toggle('oculto');
}