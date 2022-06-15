


const modal = document.querySelector(".modal-background");
const modalopen = document.querySelector(".inquiry");
const modalclose = document.querySelector(".modal-close");



function modalPage(event){
  event.preventDefault();
  modal.classList.toggle("inactive");
};

modalopen.addEventListener("click", modalPage);
modalclose.addEventListener("click", modalPage);











