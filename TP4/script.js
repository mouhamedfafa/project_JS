    const jours = document.getElementById('jours')
    const heures =document.getElementById('heures')
    const minutes=document.getElementById('minutes')
    const secondes =document.getElementById('secondes') 
    const down=document.getElementById("down") 
    
   
    const hj=document.getElementById("hj")
    const hh=document.getElementById("hh")
    const hm=document.getElementById("hm")
    const hs=document.getElementById("hs")
    


function timing(){   
     var now=moment() 
   var tmp=moment("20220915","YYYYMMDD")  

      var j= tmp.diff(now,'days')

      const d=tmp-now
      const objet=moment.duration(d,"milliseconds")

    hj.innerHTML=j
    hh.innerHTML=objet._data.hours
    hm.innerHTML=objet._data.minutes
    hs.innerHTML=objet._data.seconds
  }

  setInterval(()=>{
    timing()
  },1000)



   




     
     






    
// var  tmp= new Date("jan 1, 2023 00:00:00").getTime();


// var x = setInterval(function() {
// var now = new Date().getTime();
// var t = tmp - now;
// var jours = Math.floor(t / (1000 * 60 * 60 * 24));
// var heures = Math.floor((t%(1000 * 60 * 60 * 24))/(1000 * 60 * 60));
// var minutes = Math.floor((t % (1000 * 60 * 60)) / (1000 * 60));
// var secondes = Math.floor((t % (1000 * 60)) / 1000);
// jours.innerHTML = jours + "d" 
// heures.innerHTML= heures + "h"
// minutes.innerHTML= minutes + "m" 
// secondes.innerHTML= secondes + "s ";
//     if (t < 0) {
//         clearInterval(x);
//         document.getElementById("down").innerHTML = "EXPIRED";
//     }
// }, 1000);



