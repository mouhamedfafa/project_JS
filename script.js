const btn=document.querySelectorAll("button")

const right=document.getElementById('right')





for (let i=0; i<btn.length; i++){

    btn[i].addEventListener('click',function (e){
       
        notif(e.target.classList[1])
    })
}

function notif(color){  


const div1=document.createElement('button')

div1.setAttribute('class','cldiv1')
    div1.classList= color
    div1.innerHTML="My projet"
  


// div1.innerHTML=`<button id="btncre">My Project</button>
// `


right.appendChild(div1)

setTimeout(function () {
    right.removeChild(div1)
    
} ,5000);

}


// document.body.style.backgroundColor = 'green'
// 
// for (let i=0; i<=3; i++){
// // const col=btn[i].style.color
// btncre.style.color ="co"
// }

