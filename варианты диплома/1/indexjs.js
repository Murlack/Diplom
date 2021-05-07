function click1(){

    let elem = document.getElementById("modalwin");
    elem.style.backgroundColor="rgba(0,0,0,0.5)";
    elem.style.position="fixed";
    elem.style.left="0px";
    elem.style.right="0px";
    elem.style.height="100%";
    elem.style.width="100%";
    elem.style.display="flex";
    elem.style.justifyContent="center";
    elem.style.alignItems="center";
    //elem.style.
    elem.innerHTML = "<div id='main_vspom_elements'>"+
	"<div id='vspom_elem1'>"+
		"<p id='p_vspom_elem1'>Атлобус</p>"+
	"</div> "+
	//"<div id='vspom_elem2'>"+
		"<form class='vspom_elem2_form' id='vspom_elem2_form' name='vspom_elem2_form'>"+
			"<input type='name' class='vspom_elem2_field' name='vspom_elem2_field' id='vspom_elem2_field' placeholder='имя..'>"+
			"<input type='password' class='vspom_elem2_field' name='vspom_elem2_field' id='vspom_elem2_field' placeholder='пароль..'>"+
			"<button class='vspom_elem2_buttom' id='vspom_elem2_buttom' name='vspom_elem2_buttom'>вход</button>"+
		"</form>"+
	//"</div>" +
	"<div id='vspom_elem3'>"+
		"<button class='vspom_elem3_buttom' id='vspom_elem3_buttom' name='vspom_elem3_buttom' onclick='click2()'>x</button>"+
	"</div>"+
"</div>";
}

function click2(){
    let elem1 = document.getElementById("modalwin");
    elem1.outerHTML="<div id='modalwin'></div>";
}
// window.addEventListener('scroll',function(){
//     let topelem = document.getElementById('top_main_panel');
//     topelem.style.transform='rotate(360deg)';
//     topelem.style.transition='0.3s';
//     topelem.style.opacity='0.2';

//     setTimeout(function(){topelem.style.transform='none';
//     topelem.style.transition='none';topelem.style.opacity='1';},300);
    
//     //topelem.style.left='0';
//    // topelem.style.display="block";
    
// })
let topelem = document.getElementById('top_main_panel');
window.addEventListener('scroll',function(){
    topelem.style.opacity='1';
})
function clicklink1(){
    topelem.style.opacity='0';
    // setTimeout(function(){topelem.style.display='none'; topelem.style.opacity='0';},100);
    // setTimeout(function(){topelem.style.display='flex';  topelem.style.transition='1s'; topelem.style.opacity='1';},2000)
}