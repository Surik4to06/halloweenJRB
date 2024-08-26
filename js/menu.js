const btnFechar = document.getElementById('close');
const btnAbrir = document.getElementById('btnMenu');
const menu = document.getElementById('menu_lateral');

btnAbrir.addEventListener('click', () => {
    menu.classList.add('abrirMenuLateral');
    btnAbrir.style.display = 'none';
})

btnFechar.addEventListener('click', () => {
    menu.classList.remove('abrirMenuLateral');
    btnAbrir.style.display = 'block';
})