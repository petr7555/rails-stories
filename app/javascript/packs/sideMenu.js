window.openMenu = () => {
    const menu = document.getElementById("menu");
    menu.style.left = "0";
    const openIcon = document.getElementsByClassName("menu-icon--open")[0];
    openIcon.style.display = "none";
}

window.closeMenu = () => {
    const menu = document.getElementById("menu");
    menu.style.left = "-240px";
    const openIcon = document.getElementsByClassName("menu-icon--open")[0];
    openIcon.style.display = "block";
}
