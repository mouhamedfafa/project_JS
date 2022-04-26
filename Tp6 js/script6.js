const URLR = "https://www.themealdb.com/api/json/v1/1/random.php";

const fIltreId = "https://www.themealdb.com/api/json/v1/1/lookup.php?i=52913";

const fIltreName = "https://www.themealdb.com/api/json/v1/1/search.php?s=Brie";
const main = document.getElementById("main");
const pp = document.getElementById("pp");

get_recette(URLR);



function get_recette(url) {
  var api = fetch(URLR);
  api
    .then((Response) => Response.json())
    .then((data) => {
      console.log(data.meals);
      show_recette(data.meals);
    });
}
function show_recette(data) {
    
  data.forEach((recette) => {
    const { idMeal, strMealThumb, strMeal } = recette;
    const recetteEl = document.createElement("div");
    recetteEl.classList.add("container");
   

    recetteEl.innerHTML = `
<div id="up">
  <div>
    <h1>Mes recette fovories</h1>
  </div>
  <div id="focus"><img src="${strMealThumb}" alt="myimg"> </div>
</div>
<div id="down">
  <div id="parentimage">
    <div id="image_recette"><img src="${strMealThumb}" alt=""> </div>
    <div id="title">
        <h2>${strMeal}</h2>
       <i class="fa-solid fa-heart" ></i></div> 
        </div>
  </div>
</div>`;


    //  heart.addEventListener("click",()=>{
    
    //     alert("ok")
    // })

    main.appendChild(recetteEl);
  });
}





    // heart.addEventListener('click',()=>{
    //     alert("okk")
    // })

