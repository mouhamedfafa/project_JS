const img = document.getElementById("image");
const buttonleft = document.getElementById("buttonleft");
const buttonright = document.getElementById("buttonright");

tab = [
  "img11.jpg",
  "img2.jpg",
  "img3.jpg",
  "img4.png",
  "img55.jpg",
  "img6.png",
  "img7.jpg",
  "img8.jpg",
  "img9.jpg",
  "img10.jpg"
];
var i=0
var taille=tab.length
function defiler(i) {
 
        const myimg = document.createElement("img");
        myimg.setAttribute("src", tab[i]);
        myimg.setAttribute("class", "background");
        img.appendChild(myimg);
    
    setTimeout(
      function () {
        img.removeChild(myimg)
        i++
        if(i==taille-1){
            defiler(0)
        }
        else{defiler(i++)  }
       
    }, 3000)
 buttonright.addEventListener("click",()=>{
            setTimeout(function () {
                img.removeChild(myimg)
                i++
                if(i==taille-1){
                    defiler(0)
                }
                else{defiler(i++)  }
               
            }, 30)
        })
        buttonleft.addEventListener("click",()=>{
            setTimeout(function () {
                img.removeChild(myimg)
                i--
                if(i==0){
                    defiler(taille-1)
                }
                else{defiler(i--)  }
               
            }, 30)
        })
        
    
  }



    
defiler(0);


suivant();




