const modal = document.querySelector(".modal-background");
const modalopen = document.querySelector(".inquiry");
const modalclose = document.querySelector(".modal-close");

function openmodal(event){
  event.preventDefault();
  modal.classList.remove("inactive");
};



function closemodal(event){
  event.preventDefault();
  modal.classList.add("inactive");
}


modalopen.addEventListener("click", openmodal)
modalclose.addEventListener("click", closemodal);
