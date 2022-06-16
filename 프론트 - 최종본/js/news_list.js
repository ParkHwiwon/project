const newslist = document.getElementsByClassName("newslist");
const content = document.querySelector(".toggle");


 for(let i = 0; i < newslist.length; i++){
     newslist[i].addEventListener('click', () => {
     content[i].classList.toggle("toggle");
        });
  };



const maintitle = document.querySelector(".maintitle");
const add = document.querySelector(".choice");


 for(let i = 0; i < maintitle.length; i++){
    maintitle[i].addEventListener('click', () => {
    add[i].toggle("choice");
        });
  };




