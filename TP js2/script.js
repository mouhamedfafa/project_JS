const menu = document.querySelector(".menu");
const menuprincipal = document.getElementById("menuprincipal");
const cherch = document.getElementById("menu3");
const right = document.getElementById("right");

menuprincipal;
btn = document.getElementById("burger");
var tab = [];

tab[0] = {
  widget: "nav-icon fas fa-tachometer-alt",
  para: "Dashboard",
  icone: "fas fa-angle-left right",
};
tab[1] = {
  widget: "nav-icon fas fa-th",
  para: "widgets",
  icone: "fas fa-angle-left right",
};
tab[2] = {
  widget: "nav-icon fas fa-copy",
  para: "Layout",
  icone: "fas fa-angle-left right",
};
tab[3] = {
  widget: "nav-icon fas fa-chart-pie",
  para: "Charts",
  icone: "fas fa-angle-left right",
};
tab[4] = {
  widget: "nav-icon fas fa-tree",
  para: "elements",
  icone: "fas fa-angle-left right",
};
tab[5] = {
  widget: "fa-solid fa-pen-to-square",
  para: "Forms",
  icone: "fas fa-angle-left right",
};
tab[6] = {
  widget: "fa-solid fa-table",
  para: "Table",
  icone: "fas fa-angle-left right",
};

// console.log(tab[])
// console.log(tab[6]["widget"])

const li0 = document.createElement("li");
const li1 = document.createElement("li");
const li2 = document.createElement("li");
const li3 = document.createElement("li");
const li4 = document.createElement("li");
const li5 = document.createElement("li");
const li6 = document.createElement("li");

const liste = document.createElement("ul");

var i = document.createElement("i");
var j = document.createElement("i");
var k = document.createElement("i");
var l = document.createElement("i");
var m = document.createElement("i");
var n = document.createElement("i");
var o = document.createElement("i");

const p0 = document.createElement("p");
const p1 = document.createElement("p");
const p2 = document.createElement("p");
const p3 = document.createElement("p");
const p4 = document.createElement("p");
const p5 = document.createElement("p");
const p6 = document.createElement("p");

const flech0 = document.createElement("i");
const flech1 = document.createElement("i");
const flech2 = document.createElement("i");
const flech3 = document.createElement("i");
const flech4 = document.createElement("i");
const flech5 = document.createElement("i");
const flech6 = document.createElement("i");

i.setAttribute("class", tab[0]["widget"]);
j.setAttribute("class", tab[1]["widget"]);
k.setAttribute("class", tab[2]["widget"]);
l.setAttribute("class", tab[3]["widget"]);
m.setAttribute("class", tab[4]["widget"]);
n.setAttribute("class", tab[5]["widget"]);
o.setAttribute("class", tab[6]["widget"]);

li0.setAttribute("class", "lii");
li1.setAttribute("class", "lii");
li2.setAttribute("class", "lii");
li3.setAttribute("class", "lii");
li4.setAttribute("class", "lii");
li5.setAttribute("class", "lii");
li6.setAttribute("class", "lii");

p0.innerHTML = tab[0]["para"];
p1.innerHTML = tab[1]["para"];
p2.innerHTML = tab[2]["para"];
p3.innerHTML = tab[3]["para"];
p4.innerHTML = tab[4]["para"];
p5.innerHTML = tab[5]["para"];
p6.innerHTML = tab[6]["para"];

flech0.setAttribute("class", tab[0]["icone"]);
flech1.setAttribute("class", tab[1]["icone"]);
flech2.setAttribute("class", tab[2]["icone"]);
flech3.setAttribute("class", tab[3]["icone"]);
flech4.setAttribute("class", tab[4]["icone"]);
flech5.setAttribute("class", tab[5]["icone"]);
flech6.setAttribute("class", tab[6]["icone"]);

liste.appendChild(li0);
liste.appendChild(li1);
liste.appendChild(li2);
liste.appendChild(li3);
liste.appendChild(li4);
liste.appendChild(li5);
liste.appendChild(li6);

menuprincipal.appendChild(liste);
li0.appendChild(i);
li1.appendChild(j);
li2.appendChild(k);
li3.appendChild(l);
li4.appendChild(m);
li5.appendChild(n);
li6.appendChild(o);

li0.appendChild(p0);
li1.appendChild(p1);
li2.appendChild(p2);
li3.appendChild(p3);
li4.appendChild(p4);
li5.appendChild(p5);
li6.appendChild(p6);

li0.appendChild(flech0);
li1.appendChild(flech1);
li2.appendChild(flech2);
li3.appendChild(flech3);
li4.appendChild(flech4);
li5.appendChild(flech5);
li6.appendChild(flech6);

// ------------------------Appelle de fonction creat------------------------------------------------------------------------------------------

creat(flech0);
creat(flech1);
creat(flech2);
creat(flech3);
creat(flech4);
creat(flech5);
creat(flech6);

const para = document.querySelectorAll("p");

btn.addEventListener("click", () => {
  anim();
});
//--------------Depliage des fleches--------------------------------------------------------------------------------------------------------

function creat(flech) {
  const myListe = flech.parentElement;
  const uliste = document.createElement("ul");

  flech.addEventListener("click", () => {
    // const uliste1=document.createElement("ul");
    // const uliste2=document.createElement("ul");
    // const uliste3=document.createElement("ul");

    const liste0 = document.createElement("li");
    const liste1 = document.createElement("li");
    const liste2 = document.createElement("li");
    const liste3 = document.createElement("li");

    myListe.appendChild(uliste);

    uliste.appendChild(liste0);
    uliste.appendChild(liste1);
    uliste.appendChild(liste2);
    uliste.appendChild(liste3);

    var icon0 = document.createElement("i");
    var icon1 = document.createElement("i");
    var icon2 = document.createElement("i");
    var icon3 = document.createElement("i");

    const pliste0 = document.createElement("p");
    const pliste1 = document.createElement("p");
    const pliste2 = document.createElement("p");
    const pliste3 = document.createElement("p");

    uliste.setAttribute("class", "uliste0");

    icon0.setAttribute("class", "far fa-circle nav-icon");
    icon1.setAttribute("class", "far fa-circle nav-icon");
    icon2.setAttribute("class", "far fa-circle nav-icon");
    icon3.setAttribute("class", "far fa-circle nav-icon");

    liste0.setAttribute("class", "liste");
    liste1.setAttribute("class", "liste");
    liste2.setAttribute("class", "liste");
    liste3.setAttribute("class", "liste");

    pliste0.setAttribute("class", "pliste");
    pliste1.setAttribute("class", "pliste");
    pliste2.setAttribute("class", "pliste");
    pliste3.setAttribute("class", "pliste");

    pliste0.innerHTML = "ChartJs";
    pliste1.innerHTML = "flot";
    pliste2.innerHTML = "inlin";
    pliste3.innerHTML = "uplot";

    liste0.appendChild(icon0);
    liste0.appendChild(pliste0);

    liste1.appendChild(icon1);
    liste1.appendChild(pliste1);

    liste2.appendChild(icon2);
    liste2.appendChild(pliste2);

    liste3.appendChild(icon3);
    liste3.appendChild(pliste3);
  });
  flech.addEventListener('click',()=>{
  flech.classList.toggle("uliste")
  
  })
  
  
}

function anim() {
  menu.classList.toggle("menuplus");
  right.setAttribute("class", "rightplus");

  cherch.classList.toggle("anim");
  for (let i = 0; i < para.length; i++) {
    para[i].classList.toggle("anim");
  }
}

menu.addEventListener("mouseover", () => {
depli()
});
  
function depli(){
  menu.classList = `menusurvol  `;  
    
  right.classList= `rightplus`  ;

  cherch.removeAttribute("class","anim");
  for (let i = 0; i < para.length; i++) {
    para[i].removeAttribute("class", "anim");
  }

}